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

Unit FCad_CartaCobranca;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Menus, Mask, DBCtrls, DB, BTOdeum, Grids,
   DBGrids, ComCtrls, MemDS, Uni,
    DBAccess;

type
   TFrmCartaCadastro = class(TForm)
      Panel4: TPanel;
      BtnSair: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnNovo: TBitBtn;
      BtnProcurar: TBitBtn;
      GroupBox1: TGroupBox;
      Label5: TLabel;
      GroupBox2: TGroupBox;
      db_CartaCadastros: TUniQuery;
      DS_CartaCadastros: TDataSource;
      Panel1: TPanel;
      EditTema: TDBEdit;
      Label2: TLabel;
      DBNavigator1: TDBNavigator;
      DBRichEdit1: TDBRichEdit;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
      procedure Btn_SairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSalvarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnExcluirClick(Sender: TObject);
      procedure BtnSairClick(Sender: TObject);
      procedure BtnNovoClick(Sender: TObject);
      procedure BitBtn1Click(Sender: TObject);
      procedure BitBtn7Click(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCartaCadastro: TFrmCartaCadastro;

implementation

uses Biblioteca, Global, FPrincipal;

{$R *.DFM}

procedure TFrmCartaCadastro.FormCreate(Sender: TObject);
begin

   db_CartaCadastros.open;

end;

procedure TFrmCartaCadastro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      close;
end;

procedure TFrmCartaCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_CartaCadastros.close;

end;

procedure TFrmCartaCadastro.Btn_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCartaCadastro.BtnCancelarClick(Sender: TObject);
begin

   db_CartaCadastros.Cancel;

end;

procedure TFrmCartaCadastro.BtnExcluirClick(Sender: TObject);
begin

   If db_CartaCadastros.IsEmpty then
   Begin
      BeepCritica;
      Informar('N�o h� dados para excluir');
      Exit;
   end;

   db_CartaCadastros.Delete;

end;

procedure TFrmCartaCadastro.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCartaCadastro.BtnSalvarClick(Sender: TObject);
begin

   If (db_CartaCadastros.state in [dsEdit, dsInsert]) then
   Begin
      db_CartaCadastros.Post;
   End;

end;

procedure TFrmCartaCadastro.BtnNovoClick(Sender: TObject);
begin

   // Gerar novo codigo para o CIDADE
   db_CartaCadastros.Append;
   EditTema.SetFocus;

end;

procedure TFrmCartaCadastro.BitBtn1Click(Sender: TObject);
begin
   close;
end;

procedure TFrmCartaCadastro.BitBtn7Click(Sender: TObject);
begin
   close;
end;

end.
