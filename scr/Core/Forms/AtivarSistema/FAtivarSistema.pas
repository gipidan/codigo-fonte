{**********************************************************************************}
{ VESTIS PCPC - SISTEMA PARA INDUSTRIAS DE CONFEC��ES.                             } 
{                                                                                  } 
{ Este arquivo � parte do codigo-fonte do sistema VESTIS PCP, � um software livre; }
{ voc� pode redistribu�-lo e/ou modific�-lo dentro dos termos da GNU LGPL vers�o 3 }
{ como publicada pela Funda��o do Software Livre (FSF).                            }
{                                                                                  }
{ Este programa � distribu�do na esperan�a que possa ser �til, mas SEM NENHUMA     }
{ GARANTIA; sem uma garantia impl�cita de ADEQUA��O a qualquer MERCADO ou          }
{ APLICA��O EM PARTICULAR. Veja a Licen�a P�blica Geral GNU/LGPL em portugu�s      }
{ para maiores detalhes.                                                           }
{                                                                                  }
{ Voc� deve ter recebido uma c�pia da GNU LGPL vers�o 3, sob o t�tulo              }
{ "LICENCA.txt", junto com esse programa.                                          }
{ Se n�o, acesse <http://www.gnu.org/licenses/>                                    }
{ ou escreva para a Funda��o do Software Livre (FSF) Inc.,                         }
{ 51 Franklin St, Fifth Floor, Boston, MA 02111-1301, USA.                         }
{                                                                                  }
{                                                                                  }
{ Autor: Adriano Zanini -  zanini@r7.com                                           }
{                                                                                  }
{**********************************************************************************}


{***********************************************************************************
**  SISTEMA...............: VESTIS PCP                                            **
**  DESCRI��O.............: SISTEMA ERP PARA INDUSTRIAS DE CONFEC��ES             **
**  LINGUAGEM.............: DELPHI XE5                                            ** 
**  BANCO DE DADOS........: SQL SERVER 2012                                       ** 
**                                                                                **
** ------------------------------------------------------------------------------ **
**                                                                                **
**  ANALISTA/PROGRAMADOR..: ADRIANO ZANINI                                        **
**  AUTORIA...............: ADRIANO ZANINI                                        **
**  E-MAIL................: zanini@r7.com                                         **
**  ANO...................: 2010 - 2014                                           **
**                                                                                **
** -----------------------------------------------------------------------------  **
**                                                                                **
**  OBSERVA��O............: C�DIGO-FONTE LIVRE. E N�O PODE SER COMERCIALIZADO.    **
**                          QUALQUER PESSOA FISICA OU JURIDICA (EMPRESA) PODE     **
**                          COPIAR E UTILIZAR SEM FINS COMERCIAIS.                **
**                                                                                **
***********************************************************************************}

unit FAtivarSistema;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, FFrameBarra, Mask, DBCtrls, DB, WinInet,
   MemDS, Uni, AdvEdit, DBAdvEd, DBAccess, IniFiles,
   Classe.Global,
   App.Constantes;

type
   TFrmAtivarSistema = class(TForm)
      Panel1: TPanel;
      BtnAtivar: TButton;
      BtnSair: TButton;
      Panel2: TPanel;
      FrmFrameBarra1: TFrmFrameBarra;
      DS_AtivacaoRemota: TDataSource;
      Panel3: TPanel;
      Panel4: TPanel;
      Label2: TLabel;
      Label3: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      EditLimiteUsuarios: TDBEdit;
      EditDataExpira: TDBEdit;
      EditLimiteDias: TEdit;
      EditDataInicial: TDBEdit;
      Panel5: TPanel;
      Label4: TLabel;
      DBEdit10: TDBEdit;
      db_AtivacaoRemota: TUniQuery;
      DBConexaoRemota: TUniConnection;
      lblStatus: TLabel;
      db_AtivacaoLocal: TUniQuery;
      DS_AtivacaoLocal: TDataSource;
      db_AtivacaoRemotaCODIGO: TIntegerField;
      db_AtivacaoRemotaDATA_LIBERACAO: TDateField;
      db_AtivacaoRemotaDATA_VALIDADE: TDateField;
      db_AtivacaoRemotaUSUARIOS: TIntegerField;
      db_AtivacaoRemotaNOME: TStringField;
      db_AtivacaoRemotaEMAIL: TStringField;
      db_AtivacaoRemotaSISTEMA: TStringField;
      db_AtivacaoRemotaLIBERADO: TStringField;
      db_AtivacaoRemotaultimo_acesso: TDateTimeField;
      db_AtivacaoRemotasistema_nome: TStringField;
      db_AtivacaoRemotasistema_versao: TStringField;
      db_AtivacaoRemotasistema_descricao: TStringField;
      db_AtivacaoRemotasistema_tipo: TStringField;
      procedure BtnSairClick(Sender: TObject);
      procedure BtnAtivarClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure db_AtivacaoLocalAfterPost(DataSet: TDataSet);
      procedure DBConexaoRemotaBeforeConnect(Sender: TObject);
      procedure db_AtivacaoLocalAfterScroll(DataSet: TDataSet);
      procedure FormShow(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmAtivarSistema: TFrmAtivarSistema;

implementation

uses FPrincipal, Biblioteca, MD5, Global;

{$R *.dfm}

procedure TFrmAtivarSistema.BtnAtivarClick(Sender: TObject);
Var
   varString: string;
   ndias: Double;

begin

   ndias := 0;

   If InternetGetConnectedState(@i, 0) = False then
   begin
      BeepCritica;
      AvisoSistema(#13 + #10 +
        'Para ATIVAR � necess�rio estar conectado � internet.' + #13 + #10 + #13
        + #10 + 'Verifique sua conex�o e tente novamente.' + #13 + #10);
      Exit;

   end;

   db_AtivacaoRemota.close;
   db_AtivacaoRemota.ParamByName('EMAIL').AsString :=
     LowerCase(db_AtivacaoLocal.FieldByName('EMAIL').AsString);
   db_AtivacaoRemota.Open;

   if db_AtivacaoRemota.RecordCount < 1 then
   begin

      db_AtivacaoRemota.close;

      BeepCritica;
      AvisoSistema(#13 + #10 + 'O Email ' + db_AtivacaoLocal.FieldByName
        ('EMAIL').AsString + ' n�o foi encontrado em nosso banco de dados.' +
        #13 + #10 + #13 + #10 +
        'Enquanto n�o comprar o sistema, n�o ser� possivel ativar para vers�o completa e nao ter� direito direito a suporte t�cnico.'
        + #13 + #10);
      Exit;
   end;

   // ...........................................................................
   // Se tudo correu bem (aprovado=true) ent�o gravar no banco de dados
   // ...........................................................................

   varString := db_AtivacaoLocal.FieldByName('EMAIL').AsString;

   db_AtivacaoLocal.close;
   db_AtivacaoLocal.Open;

   While not db_AtivacaoLocal.eof do
      db_AtivacaoLocal.Delete;

   db_AtivacaoLocal.close;
   db_AtivacaoLocal.Open;
   db_AtivacaoLocal.Append;
   db_AtivacaoLocal.FieldByName('EMAIL').AsString := varString;
   db_AtivacaoLocal.FieldByName('DATA_ATIVACAO').AsDateTime :=          db_AtivacaoRemota.FieldByName('DATA_LIBERACAO').AsDateTime;
   db_AtivacaoLocal.FieldByName('VALIDADE_ATIVACAO').AsDateTime :=      db_AtivacaoRemota.FieldByName('DATA_VALIDADE').AsDateTime;
   db_AtivacaoLocal.FieldByName('LIMITE_USUARIOS').AsInteger :=         db_AtivacaoRemota.FieldByName('USUARIOS').AsInteger;
   db_AtivacaoLocal.FieldByName('LIBERADO').AsString :=                 db_AtivacaoRemota.FieldByName('LIBERADO').AsString;

   db_AtivacaoLocal.FieldByName('sistema_nome').AsString :=               db_AtivacaoRemota.FieldByName('sistema_nome').AsString;
   db_AtivacaoLocal.FieldByName('sistema_versao').AsString :=             db_AtivacaoRemota.FieldByName('sistema_versao').AsString;
   db_AtivacaoLocal.FieldByName('sistema_descricao').AsString :=          db_AtivacaoRemota.FieldByName('sistema_descricao').AsString;
   db_AtivacaoLocal.FieldByName('sistema_tipo').AsString :=               db_AtivacaoRemota.FieldByName('sistema_tipo').AsString;
   db_AtivacaoLocal.Post;

   // gravar no INI local
   { TO-DO: Reativar gravacao de ativa��o do sitema }
   {
   FInfFile := TIniFile.Create(FSistema.ArquivoCFG);
   FInfFile.WriteString('PARAMETROS', 'sistema_nome',        db_AtivacaoRemota.FieldByName('sistema_nome').AsString);
   FInfFile.WriteString('PARAMETROS', 'sistema_versao',      db_AtivacaoRemota.FieldByName('sistema_versao').AsString);
   FInfFile.WriteString('PARAMETROS', 'sistema_descricao',   db_AtivacaoRemota.FieldByName('sistema_descricao').AsString);
   FInfFile.WriteString('PARAMETROS', 'sistema_tipo',        db_AtivacaoRemota.FieldByName('sistema_tipo').AsString);
   FInfFile.Free;
   }
   ndias := db_AtivacaoLocal.FieldByName('VALIDADE_ATIVACAO').AsDateTime - db_AtivacaoLocal.FieldByName('DATA_ATIVACAO').AsDateTime;

   db_AtivacaoRemota.Edit;
   db_AtivacaoRemota.FieldByName('ultimo_acesso').AsDateTime := Now;
   db_AtivacaoRemota.Post;

   db_AtivacaoRemota.close;
   DBConexaoRemota.Disconnect;

   if (db_AtivacaoLocal.FieldByName('LIBERADO').AsString <> 'S') or
     (Date > db_AtivacaoLocal.FieldByName('VALIDADE_ATIVACAO').AsDateTime) or
     (ndias <= 0) then
   Begin
      blnUsuarioAutorizado := False;
      AvisoSistema('Sistema n�o autorizado para uso neste computador.  ' + #13 +
        #10 + #13 + #10 +
        'Entre em contato com a YYYY SISTEMAS para regulariza��o.');

      Exit;
   End;

   db_AtivacaoLocal.close;
   blnUsuarioAutorizado := True;
   AvisoSistema('Sistema ativado com sucesso!' + #13 + #10 + #13 + #10 +
     'Para concluir ATIVA��O, feche o sistema e abra novamente.');

   close;

end;

procedure TFrmAtivarSistema.BtnSairClick(Sender: TObject);
begin
   /// ////////////////////////////////////////////////////////////////////
   /// Se esta vari�vel AcessoOK  estiver como TRUE todo acesso ao sistema
   /// ser� PERMITIDO. Certificando que � um usu�rio autentico.
   /// Autorizado por nossa empresa.
   /// ////////////////////////////////////////////////////////////////////

   blnUsuarioAutorizado := False;

   close;

end;

procedure TFrmAtivarSistema.DBConexaoRemotaBeforeConnect(Sender: TObject);
begin
   {
   DBConexaoRemota.Server   := REMOTO_DATABASE_SERVIDOR;
   DBConexaoRemota.Database := REMOTO_DATABASE_NOME;
   DBConexaoRemota.Username := REMOTO_DATABASE_USUARIO;
   DBConexaoRemota.Password := REMOTO_DATABASE_SENHA;
   DBConexaoRemota.Port     := REMOTO_DATABASE_PORTA;
   }
end;

procedure TFrmAtivarSistema.db_AtivacaoLocalAfterPost(DataSet: TDataSet);
begin

   if db_AtivacaoLocal.FieldByName('LIBERADO').AsString = 'S' then
   begin
      lblStatus.caption := 'Status do sistema: LIBERADO';
   end
   else
   begin
      lblStatus.caption := 'Status do sistema: BLOQUEADO';
   end;

   EditLimiteDias.Text := FormatFloat('###,##0',
     db_AtivacaoLocal.FieldByName('VALIDADE_ATIVACAO').AsDateTime -
     db_AtivacaoLocal.FieldByName('DATA_ATIVACAO').AsDateTime);

end;

procedure TFrmAtivarSistema.db_AtivacaoLocalAfterScroll(DataSet: TDataSet);
begin

   if db_AtivacaoLocal.FieldByName('LIBERADO').AsString = 'S' then
   begin
      lblStatus.caption := 'Status do sistema: LIBERADO';
   end
   else
   begin
      lblStatus.caption := 'Status do sistema: BLOQUEADO';
   end;

   EditLimiteDias.Text := FormatFloat('###,##0',
     db_AtivacaoLocal.FieldByName('VALIDADE_ATIVACAO').AsDateTime -
     db_AtivacaoLocal.FieldByName('DATA_ATIVACAO').AsDateTime);

end;

procedure TFrmAtivarSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   DBConexaoRemota.Disconnect;

end;

procedure TFrmAtivarSistema.FormCreate(Sender: TObject);
begin

   blnUsuarioAutorizado := False;

   DBConexaoRemota.Disconnect;

   DBConexaoRemota.Server   := REMOTO_DATABASE_SERVIDOR;
   DBConexaoRemota.Database := REMOTO_DATABASE_NOME;
   DBConexaoRemota.Username := REMOTO_DATABASE_USUARIO;
   DBConexaoRemota.Password := REMOTO_DATABASE_SENHA;
   DBConexaoRemota.Port     := REMOTO_DATABASE_PORTA;

   db_AtivacaoRemota.Open;
   db_AtivacaoLocal.Open;

   EditLimiteDias.Text := FormatFloat('###,##0',
     db_AtivacaoLocal.FieldByName('VALIDADE_ATIVACAO').AsDateTime -
     db_AtivacaoLocal.FieldByName('DATA_ATIVACAO').AsDateTime);

   if db_AtivacaoLocal.FieldByName('LIBERADO').AsString = 'S' then
   begin
      lblStatus.caption := 'Status do sistema: LIBERADO';
   end
   else
   begin
      lblStatus.caption := 'Status do sistema: BLOQUEADO';
   end;

end;

procedure TFrmAtivarSistema.FormShow(Sender: TObject);
begin

   If InternetGetConnectedState(@i, 0) = False then
   begin
      FormMensagem(#13 + #10 +
        'Para ATIVAR � necess�rio estar conectado � internet.' + #13 + #10 + #13
        + #10 + 'Verifique sua conex�o.' + #13 + #10);
   end;

end;


end.
