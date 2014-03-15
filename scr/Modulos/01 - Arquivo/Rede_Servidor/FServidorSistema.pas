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

unit FServidorSistema;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, DBAccess, StdCtrls, ExtCtrls, Buttons, FileCtrl, DBCtrls, DB,
   MemDS, Uni, IniFiles, Spin, Menus, jpeg, FFrameBarra, AeroButtons, W7Classes,
   W7Panels, AdvOfficeImage, W7Buttons, AdvSmoothPanel,
   Classe.Global;

type
   TFrmServidorSistema = class(TForm)
      PopupMenu1: TPopupMenu;
      restaurarpadres1: TMenuItem;
    FrmFrameBarra1: TFrmFrameBarra;
    AdvSmoothPanel1: TAdvSmoothPanel;
    PainelMsg: TLabel;
    AdvOfficeImage1: TAdvOfficeImage;
    EditServerIP: TLabeledEdit;
    EditDB: TLabeledEdit;
    EditSenha: TLabeledEdit;
    EditPorta: TLabeledEdit;
    BtnServidor: TBitBtn;
    W7Panel1: TW7Panel;
    BtnOk: TAeroButton;
    BtnCancelar: TAeroButton;
    BtnTestar: TAeroButton;
    btnfechar: TAeroButton;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnTestarClick(Sender: TObject);
      procedure BtnOkClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure BtnServidorClick(Sender: TObject);
      procedure restaurarpadres1Click(Sender: TObject);
      procedure btnfecharClick(Sender: TObject);
   private
      { Private declarations }
      SQLConexaoTeste: TUniConnection;
      procedure prcSetarClasseUsuario;
      procedure prcCamposFormulario;

   public
      { Public declarations }
   end;

var
   FrmServidorSistema: TFrmServidorSistema;

implementation

uses Biblioteca, FPrincipal, Global, FServidorComputadoresRede;

{$R *.dfm}

procedure TFrmServidorSistema.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_ESCAPE then
      close;
end;

procedure TFrmServidorSistema.restaurarpadres1Click(Sender: TObject);
begin
   EditServerIP.text  := 'localhost';
   EditPorta.text     := '1433';
   EditDB.text        := 'Vestis';
   EditSenha.text     := 'sql2014'; //Decript( '12/3qurt' );
end;

procedure TFrmServidorSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   SQLConexaoTeste.Free;
   Action := Cafree;
end;

Procedure TFrmServidorSistema.prcSetarClasseUsuario;
begin
   FBancoDados.Nome     :=EditDB.Text;
   FBancoDados.Endereco :=EditServerIP.Text;
   FBancoDados.Porta    :=StrToIntDef((EditPorta.Text),0);
   FBancoDados.Senha    :=EditSenha.Text;
end;

procedure TFrmServidorSistema.BtnTestarClick(Sender: TObject);
begin

   prcSetarClasseUsuario;

   SQLConexaoTeste.LoginPrompt  := False;
   SQLConexaoTeste.Connected    := False;
   SQLConexaoTeste.ProviderName := 'SQL Server';
   SQLConexaoTeste.Port         := 1433;
   SQLConexaoTeste.Server       := '';
   PainelMsg.Caption := 'aguarde, conectando ao servidor remoto...';
   Update;
   Try
      //FBancoDados.Senha := EditSenha.Text;
      //FBancoDados.SenhaEncriptada;

      SQLConexaoTeste.Database    := FBancoDados.Nome;
      SQLConexaoTeste.Server      := FBancoDados.Endereco;
      SQLConexaoTeste.Port        := FBancoDados.Porta;
      SQLConexaoTeste.Password    := FBancoDados.Senha; //FBancoDados.SenhaDecriptada;
      SQLConexaoTeste.Connected   := True;

      PainelMsg.Caption := '';
      Aviso('Sucesso na conex�o com servidor');
      SQLConexaoTeste.Connected := False;
      ConexaoGlobal :=True;
   except
      ConexaoGlobal :=False;
      SQLConexaoTeste.Connected := False;
      AvisoSistema('Falha na conex�o com o servidor'+
           #13+#10+
           #13+#10+
           'verifique: '+
           #13+#10+
           '- nome ou IP do servidor'+
           #13+#10+
           '- firewall do Windows (liberar a porta 1433)'+
           #13+#10+
           '- nome do banco de dados'+
           #13+#10+
           '- Senha "sa" do servidor SQL Server'
      );
   end;
   PainelMsg.Caption := '';
   Update;

end;

procedure TFrmServidorSistema.BtnServidorClick(Sender: TObject);
begin
   FrmServidorComputadoresRede := TFrmServidorComputadoresRede.create(self);
   FrmServidorComputadoresRede.ShowModal;

   // EditServerIP.Text :=DeletaCaract(EditServerIP.Text ,'\');

end;

procedure TFrmServidorSistema.btnfecharClick(Sender: TObject);
begin
   blTerminate := True;
   FrmPrincipal.TerminarAplicacao;
end;

procedure TFrmServidorSistema.BtnCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmServidorSistema.BtnOkClick(Sender: TObject);
begin

   SQLConexaoTeste.Connected := False;

   prcSetarClasseUsuario;

   FInfFile.infSave;

   AvisoSistema('O Sistema ser� fechado.' +
                sLineBreak+
                sLineBreak+
                'E execute-o novamente, para carregar as configura��es adequadas.');


   btnfecharClick(Sender);


end;

procedure TFrmServidorSistema.FormCreate(Sender: TObject);
begin

   FInfFile.InfLoad;


   prcCamposFormulario;

   SQLConexaoTeste := TUniConnection.create(nil);
   SQLConexaoTeste.ProviderName := FrmPrincipal.DBConexao.ProviderName;
   SQLConexaoTeste.Username := FrmPrincipal.DBConexao.Username;
   SQLConexaoTeste.Password := FrmPrincipal.DBConexao.Password;
   SQLConexaoTeste.Server := FrmPrincipal.DBConexao.Server;
   SQLConexaoTeste.Port := FrmPrincipal.DBConexao.Port;

end;

Procedure TFrmServidorSistema.prcCamposFormulario;
begin
   EditDB.Text         := FBancoDados.Nome;
   EditServerIP.Text   := FBancoDados.Endereco;
   EditPorta.Text      := IntToStr(FBancoDados.Porta);
   EditSenha.Text      := FBancoDados.SenhaDecriptada;
end;



end.
