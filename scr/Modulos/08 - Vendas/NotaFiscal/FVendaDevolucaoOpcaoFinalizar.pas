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

unit FVendaDevolucaoOpcaoFinalizar;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, FFrameBarra, ExtCtrls, Buttons, DBCtrls, DB;

type
   TFrmVendaDevolucaoOpcaoFinalizar = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnSair: TBitBtn;
    PnlValorDevolucao: TPanel;
    rdgOpcao: TDBRadioGroup;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmVendaDevolucaoOpcaoFinalizar: TFrmVendaDevolucaoOpcaoFinalizar;

implementation

uses Global, FCompras, Biblioteca, FVendaDevolucaoProdutos;

{$R *.dfm}

procedure TFrmVendaDevolucaoOpcaoFinalizar.BtnOkClick(Sender: TObject);
begin

   if rdgOpcao.ItemIndex<0 then
   begin
     Aviso('Informe o que fazer este valor');
     rdgOpcao.SetFocus;
     exit;
   end;

   if Length(DBMemo1.Text)<5 then
   begin
     Aviso('Informe o Motivo da Devolu��o');
     DBMemo1.SetFocus;
     exit;
   end;

   if rdgOpcao.ItemIndex=0 then
      strOpcaoDevolver := 'CREDITAR';

   if rdgOpcao.ItemIndex=1 then
      strOpcaoDevolver := 'NAOCREDITAR';

   close;

end;

procedure TFrmVendaDevolucaoOpcaoFinalizar.BtnSairClick(Sender: TObject);
begin
  strOpcaoDevolver := 'CANCELAR';
  close;
end;

procedure TFrmVendaDevolucaoOpcaoFinalizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TFrmVendaDevolucaoOpcaoFinalizar.FormCreate(Sender: TObject);
begin

   If not (FrmVendaDevolucaoProdutos.ds_VendasDevolucao.DataSet.state in [dsEdit, dsInsert]) then
      FrmVendaDevolucaoProdutos.ds_VendasDevolucao.DataSet.Edit;

end;

procedure TFrmVendaDevolucaoOpcaoFinalizar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   IF Key = VK_ESCAPE then
   begin
      BtnSairClick(Sender);
   end;

end;

end.
