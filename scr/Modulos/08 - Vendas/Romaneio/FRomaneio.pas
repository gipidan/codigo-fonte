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

unit FRomaneio;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, DB, Grids, DBGrids,
   MemDS, Uni, FrmRelatorios, DBAccess, frxClass, frxDBSet, Classe.Global;

type
   TFrmRomaneio = class(TForm)
      Panel1: TPanel;
      GroupBox2: TGroupBox;
      Label3: TLabel;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      MskDataFim: TMaskEdit;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      DBGrid1: TDBGrid;
    ds_transportadora: TDataSource;
    db_transportadora: TUniQuery;
    FrameRelatorios1: TFrameRelatorios;
    dbromaneio_clientes: TUniQuery;
    dbfp_romaneio_clientes: TfrxDBDataset;
    frx_Romeio: TfrxReport;
    dbfp_transportadora: TfrxDBDataset;
      procedure Btn_SairClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnSairClick(Sender: TObject);
      procedure DBGrid1Enter(Sender: TObject);
      procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);

   private
    procedure CarregarDados;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRomaneio: TFrmRomaneio;

implementation

uses Biblioteca, FPrincipal, Global;

{$R *.DFM}

procedure TFrmRomaneio.Btn_SairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRomaneio.MskDataIniExit(Sender: TObject);
begin
   if TESTAR_DATA(MskDataIni.text) = false then
   begin
      Aviso('Data Inv�lida...');
      MskDataIni.setfocus;
   end;
   CarregarDados;

end;

procedure TFrmRomaneio.MskDataFimExit(Sender: TObject);
begin
   if TESTAR_DATA(MskDataFim.text) = false then
   begin
      Aviso('Data Inv�lida...');
      MskDataFim.setfocus;
   end;


   CarregarDados;

end;

procedure TFrmRomaneio.Btn_ImprimirClick(Sender: TObject);
begin

     dbromaneio_clientes.Close;
     dbromaneio_clientes.ParamByName('EMPRESA').AsInteger          := FSistema.Empresa;
     dbromaneio_clientes.ParamByName('DATA1').AsDate               := StrTodate(MskDataIni.text);
     dbromaneio_clientes.ParamByName('DATA2').AsDate               := StrTodate(MskDataFim.text);
     dbromaneio_clientes.ParamByName('TRANSPORTADORA').AsInteger   := db_transportadora.Fieldbyname('TRANSPORTADORA').AsInteger;

     frx_Romeio.ShowReport;

     dbromaneio_clientes.Close;

   {
   Try
      wInteger[0] := db_transportadora.Fieldbyname('TRANSP').AsInteger;
   Except
      wInteger[0] := 0;
   End;

   FrmPrintRomaneio := TFrmPrintRomaneio.Create(Self);
   }

End;

procedure TFrmRomaneio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      Close;

end;

procedure TFrmRomaneio.FormResize(Sender: TObject);
begin
  DimensionarGrid(DBGrid1,self);
end;

procedure TFrmRomaneio.FormShow(Sender: TObject);
begin
   CarregarDados;
end;

procedure TFrmRomaneio.GroupBox2Exit(Sender: TObject);
begin
   CarregarDados;
end;

procedure TFrmRomaneio.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRomaneio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TFrmRomaneio.FormCreate(Sender: TObject);
begin

   MskDataIni.text := dateToStr(Date);
   MskDataFim.text := dateToStr(Date);

   CarregarDados;

end;

procedure TFrmRomaneio.DBGrid1Enter(Sender: TObject);
begin
   CarregarDados;
end;

procedure TFrmRomaneio.DBGrid1DblClick(Sender: TObject);
begin
   Btn_Imprimir.Click;
end;

procedure TFrmRomaneio.CarregarDados;
begin
   db_transportadora.close;
   db_transportadora.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_transportadora.ParamByName('DATA1').AsDate  := StrTodate(MskDataIni.text);
   db_transportadora.ParamByName('DATA2').AsDate  := StrTodate(MskDataFim.text);
   db_transportadora.open;
   DimensionarGrid(DBGrid1,self);

end;

end.
