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

unit FRelMovCaixa;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, FrmRelatorios, FDatas, frxClass, frxDBSet,
   DB, MemDS, Uni,  DBAccess, Grids, DBGrids, ISFEdit, ISFEditbtn, ISFdbEditbtn,
  IDBEdit, uEstSearchDialogZeos;

type
   TFrmRelMovCaixa = class(TForm)
      Panel1: TPanel;
      RadioG: TRadioGroup;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      GroupBox3: TGroupBox;
      chkPlanos: TCheckBox;
      RadioGSaldoAnterior: TRadioGroup;
      FrameDatas1: TFrameDatas;
    FrameRelatorios1: TFrameRelatorios;
    frxRFechamentoCaixa: TfrxReport;
    dbFrxFechamentoCaixa: TfrxDBDataset;
    dbFechamentoCaixa: TUniQuery;
    EditPlanoContas: TIDBEditDialog;
    EditNomePlanoContas: TEdit;
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure chkPlanosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelMovCaixa: TFrmRelMovCaixa;

implementation

uses Biblioteca, Global, FBaseDados,
   FRelMovCaixaSaldoDiarioAnalitico, FRelCaixaSimplificado, FPrincipal;
{$R *.DFM}

procedure TFrmRelMovCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   FreeAndNil( FrmRelMovCaixa );
end;

procedure TFrmRelMovCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
      close;

end;

procedure TFrmRelMovCaixa.Btn_ImprimirClick(Sender: TObject);
begin

   // Atlz_SaldoCX( BaseDados.ADO_Geral, BaseDados.ADO_SaldoCaixa );
   // substituir  por outro comando desenvolvido e mais eficiente. Verificar.

   // Totais por conta
   If RadioG.ItemIndex = 0 then
   Begin
      FrmRelCaixaSintetico := TFrmRelCaixaSintetico.create(self);
   End;

   // Saldo Di�rio - Anaitico
   If RadioG.ItemIndex = 1 then
   Begin
      FrmRelMovCaixaSaldoDiarioAnalitico := TFrmRelMovCaixaSaldoDiarioAnalitico.create(self);
   End;

   If RadioG.ItemIndex = 2 then
   Begin
      dbFechamentoCaixa.close;
      dbFechamentoCaixa.ParamByName('DATA_INI').AsDate :=        StrToDate(FrameDatas1.MskDataIni.text);
      dbFechamentoCaixa.ParamByName('DATA_FIM').AsDate :=        StrToDate(FrameDatas1.MskDataFim.text);
      dbFechamentoCaixa.open;
      frxRFechamentoCaixa.ShowReport;
   End;

End;

procedure TFrmRelMovCaixa.FormShow(Sender: TObject);
begin
     TRadioGroup(RadioG.Controls[0]).Enabled:= False;
     TRadioGroup(RadioG.Controls[1]).Enabled:= False;
end;

procedure TFrmRelMovCaixa.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmRelMovCaixa.chkPlanosClick(Sender: TObject);
begin

   if chkPlanos.Checked = true then
   Begin
      EditPlanoContas.Enabled := False;
   End
   Else
   Begin
      EditPlanoContas.Enabled := true;
      EditPlanoContas.SetFocus;
   End;

end;

end.
