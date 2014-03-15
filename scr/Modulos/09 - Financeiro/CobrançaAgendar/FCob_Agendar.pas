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


unit FCob_Agendar;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, ImgList, DB,
   DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Mask,
   Buttons, ComCtrls, Shellapi, BTOdeum, FMTBcd, SqlExpr, MemDS, Uni,
    DBAccess;

type
   TFrmCob_Agendar = class(TForm)
      Panel2: TPanel;
      PaginaPadrao: TPageControl;
      Tab_Principal: TTabSheet;
      Tab_Editar: TTabSheet;
      Panel4: TPanel;
      BtnSair: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnNovo: TBitBtn;
      BtnProcurar: TBitBtn;
      Panel1: TPanel;
      Label16: TLabel;
      Navegador: TDBNavigator;
      PageControl2: TPageControl;
      Tab_Dados: TTabSheet;
      Label6: TLabel;
      EditCliente: TDBEdit;
      DBEdit11: TDBEdit;
      DBGrid1: TDBGrid;
      DBEdit1: TDBEdit;
      Label1: TLabel;
      DBEdit2: TDBEdit;
      Label2: TLabel;
      Label3: TLabel;
      DBEdit3: TDBEdit;
      Label4: TLabel;
      DBEdit4: TDBEdit;
      Label5: TLabel;
      DBEdit5: TDBEdit;
      GroupBox1: TGroupBox;
      DBMemo1: TDBMemo;
      Label8: TLabel;
      DBEdit8: TDBEdit;
      DBEdit9: TDBEdit;
      DBEdit10: TDBEdit;
      Label9: TLabel;
      DBRadioGroup1: TDBRadioGroup;
      DS_CobAgendar: TDataSource;
      db_CobAgendar: TUniQuery;
      db_CobAgendarNomeCliente: TStringField;
      db_CobAgendarNomeMsg: TStringField;
      db_clientes: TUniQuery;
      db_DadosContaCorrente: TUniQuery;
      db_Mensagens: TUniQuery;
      db_CobAgendarCODIGO: TIntegerField;
      db_CobAgendarDOCUMENTO: TStringField;
      db_CobAgendarDATA: TDateField;
      db_CobAgendarDTCONTATO: TDateField;
      db_CobAgendarHORAS: TTimeField;
      db_CobAgendarCONTATO: TStringField;
      db_CobAgendarCONTA: TIntegerField;
      db_CobAgendarVALOR: TFloatField;
      db_CobAgendarCOD_MSG: TIntegerField;
      db_CobAgendarRESPOSTA: TStringField;
      db_CobAgendarSITUACAO: TStringField;
      db_CobAgendarCLIENTE: TIntegerField;
      procedure BtnNovoClick(Sender: TObject);
      procedure BtnSalvarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnExcluirClick(Sender: TObject);
      procedure DBGrid1DblClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCob_Agendar: TFrmCob_Agendar;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.dfm}

procedure TFrmCob_Agendar.BtnNovoClick(Sender: TObject);
begin
   // Gerar novo codigo para o OR�AMENTO
   PaginaPadrao.Activepage := Tab_Editar;

   db_CobAgendar.Append;
   db_CobAgendar.FieldByName('SITUACAO').AsString := 'N';
   db_CobAgendar.FieldByName('DATA').AsDateTime := Date;

   EditCliente.SetFocus;

end;

procedure TFrmCob_Agendar.BtnSalvarClick(Sender: TObject);
begin

   If (db_CobAgendar.state in [dsEdit, dsInsert]) then
   Begin
      db_CobAgendar.Post;
   End;

end;

procedure TFrmCob_Agendar.BtnCancelarClick(Sender: TObject);
begin
   // Cancelar edi��o
   db_CobAgendar.Cancel;

   PaginaPadrao.Activepage := Tab_Principal;
end;

procedure TFrmCob_Agendar.BtnExcluirClick(Sender: TObject);
begin

   if not db_CobAgendar.IsEmpty then
   begin
      BeepCritica;
      IF Pergunta('Deseja excluir este registro?') = TRUE THEN
      BEGIN
         db_CobAgendar.Delete;
      END;
   End
   Else
   Begin
      Aviso('N�o h� dados para excluir.');
   End;

end;

procedure TFrmCob_Agendar.DBGrid1DblClick(Sender: TObject);
begin
   PaginaPadrao.Activepage := Tab_Editar;
end;

procedure TFrmCob_Agendar.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmCob_Agendar.FormCreate(Sender: TObject);
begin
   PaginaPadrao.Activepage := Tab_Principal;
   db_CobAgendar.Open;
end;

procedure TFrmCob_Agendar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   db_CobAgendar.close;

   Action := Cafree;

end;

procedure TFrmCob_Agendar.BtnSairClick(Sender: TObject);
begin
   close;
end;

end.
