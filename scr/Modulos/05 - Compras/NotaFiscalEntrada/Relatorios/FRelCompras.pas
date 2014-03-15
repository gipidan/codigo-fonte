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

unit FRelCompras;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, ComCtrls, FrmRelatorios, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos;

type
   TFrmRelCompras = class(TForm)
      Panel1: TPanel;
      PageControl1: TPageControl;
      Tab_Compras: TTabSheet;
      RadioG: TRadioGroup;
      GroupBox1: TGroupBox;
      ChkDepartamento: TCheckBox;
      GroupBox2: TGroupBox;
      Label3: TLabel;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      MskDataFim: TMaskEdit;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      rAgrupar: TRadioGroup;
      GroupBox4: TGroupBox;
      Label5: TLabel;
      Label6: TLabel;
      ModeloIni: TEdit;
      ModeloFim: TEdit;
      GroupBox3: TGroupBox;
      chkgrupos: TCheckBox;
      GroupBox5: TGroupBox;
      chkFornecedor: TCheckBox;
    FrameRelatorios1: TFrameRelatorios;
    EditFornecedor: TIDBEditDialog;
    EditNomeCliente: TEdit;
    EditGrupo: TIDBEditDialog;
    Edit1: TEdit;
    EditDepartamento: TIDBEditDialog;
    EditDepartamentoNome: TEdit;
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormKeyPress(Sender: TObject; var Key: Char);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure RadioGClick(Sender: TObject);
      procedure chkgruposClick(Sender: TObject);
      procedure BitBtn2Click(Sender: TObject);
      procedure ChkDepartamentoClick(Sender: TObject);
      procedure FormShow(Sender: TObject);
    procedure chkFornecedorClick(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelCompras: TFrmRelCompras;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global,
  FRelComprasFornecedor, FRelComprasProdutos, Classe.Usuarios;

{$R *.DFM}

procedure TFrmRelCompras.FormCreate(Sender: TObject);
begin

   PageControl1.activepage := Tab_Compras;

   MskDataIni.text := DateToStr(date - 30);
   MskDataFim.text := DateToStr(date);

end;

procedure TFrmRelCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   Action := cafree;
end;

procedure TFrmRelCompras.MskDataIniExit(Sender: TObject);
begin
   MskDataIni.text := fncDataValidar(MskDataIni.text);

end;

procedure TFrmRelCompras.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.text := fncDataValidar(MskDataFim.text);

end;

procedure TFrmRelCompras.Btn_ImprimirClick(Sender: TObject);
begin
   dtDataIni := StrToDate(MskDataIni.text);
   dtDataFim := StrToDate(MskDataFim.text);
   strFornecedor := Trim(EditFornecedor.text);

   If rAgrupar.ItemIndex = 0 then
   Begin
      Agrupar := 'VENC';
      strOrdemDados := '  B.VENC,  C.NOME, B.DOCUMENTO ';
      // OrdemDados:='  B.VENC,  B.CLIENTE, B.PARCELA ';
   End;

   If rAgrupar.ItemIndex = 1 then
   Begin
      Agrupar := 'NOME';
      strOrdemDados := ' C.NOME, B.VENC, B.DOCUMENTO ';
   End;

   if RadioG.ItemIndex = 0 then
   Begin
      FrmRelComprasFornecedor := TFrmRelComprasFornecedor.create(self);
   End;


end;

procedure TFrmRelCompras.FormKeyPress(Sender: TObject; var Key: Char);
begin

   If Key = #27 then
      CLOSE;

end;

procedure TFrmRelCompras.BtnSairClick(Sender: TObject);
begin
   CLOSE;
end;

procedure TFrmRelCompras.RadioGClick(Sender: TObject);
begin
   if RadioG.ItemIndex = 5 then
   Begin
      GroupBox2.Caption := 'Periodo do Agendamento';
   End
   else
   begin
      GroupBox2.Caption := 'Periodo de &Vencimentos';
   end;

end;

procedure TFrmRelCompras.chkFornecedorClick(Sender: TObject);
begin
   if chkFornecedor.Checked = true then
   Begin
      EditFornecedor.Enabled := False;
   End
   Else
   Begin
      EditFornecedor.Enabled := true;
      EditFornecedor.SelectAll;
      EditFornecedor.SetFocus;
   End;

end;

procedure TFrmRelCompras.chkgruposClick(Sender: TObject);
begin
   if chkgrupos.Checked = true then
   Begin
      EditGrupo.Enabled := False;
   End
   Else
   Begin
      EditGrupo.Enabled := true;
      EditGrupo.SetFocus;
   End;

end;

procedure TFrmRelCompras.BitBtn2Click(Sender: TObject);
begin

   // Requisi��o de compras
   If RadioG.ItemIndex = 0 then
   Begin
      FrmRelComprasProdutos := TFrmRelComprasProdutos.create(self);
   End;

end;

procedure TFrmRelCompras.ChkDepartamentoClick(Sender: TObject);
begin

   if ChkDepartamento.Checked = true then
   Begin
      EditDepartamento.Enabled := False;
   End
   Else
   Begin
      EditDepartamento.Enabled := true;
      EditDepartamento.SetFocus;
   End;

end;

procedure TFrmRelCompras.FormShow(Sender: TObject);
begin
   MskDataIni.SetFocus;
end;

end.
