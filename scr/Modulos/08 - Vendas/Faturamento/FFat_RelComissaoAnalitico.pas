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

unit FFat_RelComissaoAnalitico;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, QuickRpt, DB, SqlExpr, QRCtrls, QRExport,
   MemDS, Uni, QRPDFFilt, DBAccess, Classe.Global;

type
   TFrmFat_RelComissaoAnalitico = class(TForm)
      QuickRep1: TQuickRep;
      Datalhes: TQRBand;
      QRDBText4: TQRDBText;
      QRDBText6: TQRDBText;
      QRDBText7: TQRDBText;
      QRDBText8: TQRDBText;
      QRDBText2: TQRDBText;
      QRDBText3: TQRDBText;
      QuebraBanco: TQRGroup;
      QRDBText5: TQRDBText;
      QRLabel1: TQRLabel;
      Cabecalho: TQRBand;
      QRLabel19: TQRLabel;
      QRLabel20: TQRLabel;
      QRLabel21: TQRLabel;
      QRLabel24: TQRLabel;
      QRLabel2: TQRLabel;
      QRLabel7: TQRLabel;
      TotalOperacao: TQRBand;
      QRLabel4: TQRLabel;
      QRExpr4: TQRExpr;
      QRExpr1: TQRExpr;
      SummaryBand1: TQRBand;
      QRExpr6: TQRExpr;
      QRLabel5: TQRLabel;
      lblComissaoTotal: TQRLabel;
      DB_Vendas: TUniQuery;
      Band_Cabecalho: TQRBand;
      LblTitulo: TQRLabel;
      QRLabel17: TQRLabel;
      QRShape3: TQRShape;
      QRLabel3: TQRLabel;
      QRLabel8: TQRLabel;
      QRSysData2: TQRSysData;
      QRSysData4: TQRSysData;
      QRSysData5: TQRSysData;
      LblPeriodo: TQRLabel;
      QRShape1: TQRShape;
      LblVendedor: TQRLabel;
      LblCliente: TQRLabel;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure DatalhesBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
    procedure DB_VendasBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
      a1, a2, a3: Real;

   public
      { Public declarations }
   end;

var
   FrmFat_RelComissaoAnalitico: TFrmFat_RelComissaoAnalitico;

implementation

uses FPrincipal, Biblioteca, Global,
   FBaseDados, FRelFaturamento;

{$R *.dfm}

procedure TFrmFat_RelComissaoAnalitico.DatalhesBeforePrint
  (Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   // lblVrlComiss.Caption :=FormatFloat('###,##0.00',db_vendas.FieldByName('COMISSAO_VENDA').AsFloat);

   a1 := a1 + DB_Vendas.FieldByName('COMISSAO_VENDA').AsFloat;
   lblComissaoTotal.Caption := FormatFloat('###,##0.00', a1);

end;

procedure TFrmFat_RelComissaoAnalitico.DB_VendasBeforeOpen(DataSet: TDataSet);
begin
   DB_Vendas.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmFat_RelComissaoAnalitico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DB_Vendas.Close;

   Action := caFree;
End;

procedure TFrmFat_RelComissaoAnalitico.FormCreate(Sender: TObject);
begin

   case FrmRelFaturamento.RadioNF.ItemIndex of
      0:
         LblTitulo.Caption := LblTitulo.Caption + #13 + #10 +
           '(TODAS AS NOTAS FISCAIS)   ';
      1:
         LblTitulo.Caption := LblTitulo.Caption + #13 + #10 + '(NF SA�DAS)   ';
      2:
         LblTitulo.Caption := LblTitulo.Caption + #13 + #10 + '(NF ENTRADAS) ';
      3:
         LblTitulo.Caption := LblTitulo.Caption + #13 + #10 +
           '(NF CANCELADAS) ';

   end;

   dtDataIni := StrToDate(FrmRelFaturamento.MskDataIni.Text);
   dtDataFim := StrToDate(FrmRelFaturamento.MskDataFim.Text);
   LblPeriodo.Caption := 'PER�ODO: ' + DateToStr(dtDataIni) + ' - ' +
     DateToStr(dtDataFim);

   // montar script da tabela Mestre
   sqlMaster := '';
   sqlMaster := sqlMaster + ' SELECT * FROM  VIEW_COMISSSAO02 ';
   sqlMaster := sqlMaster + '  WHERE  ';
   sqlMaster := sqlMaster + '  EMPRESA=:EMPRESA  ';
   sqlMaster := sqlMaster + '  AND  ';
   sqlMaster := sqlMaster + ' DATA>=:DATA1 AND DATA<=:DATA2 ';
   sqlMaster := sqlMaster + ' AND ';
   sqlMaster := sqlMaster + Tipo_NF;

   if not FrmRelFaturamento.chkCliente.Checked then
   Begin
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' CLIENTE=:CLIENTE ';
   End;

   if not FrmRelFaturamento.chkRepres.Checked then
   Begin
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' VENDEDOR=:VENDEDOR ';
   End;

   sqlMaster := sqlMaster + ' ORDER BY DATA, NOTAFISCAL';

   DB_Vendas.Close;
   DB_Vendas.SQL.clear;
   DB_Vendas.SQL.Add(sqlMaster);
   DB_Vendas.ParamByName('DATA1').AsDateTime := dtDataIni;
   DB_Vendas.ParamByName('DATA2').AsDateTime := dtDataFim;

   if not FrmRelFaturamento.chkCliente.Checked then
   Begin

      DB_Vendas.ParamByName('CLIENTE').AsInteger :=
        StrToInt(FrmRelFaturamento.EditCliente.Text);

      LblCliente.Caption := 'CLIENTE: ' +
        FrmRelFaturamento.EditClienteNome.Text;

   End;

   if not FrmRelFaturamento.chkRepres.Checked then
   Begin

      DB_Vendas.ParamByName('VENDEDOR').AsInteger :=
        StrToInt(FrmRelFaturamento.EditVendedor.Text);

      LblVendedor.Caption := 'VENDEDOR: ' +
        FrmRelFaturamento.EditNomeVendedor.Text;

   End;
   DB_Vendas.Open;
   QuickRep1.Preview;

   Close;

end;

procedure TFrmFat_RelComissaoAnalitico.QuickRep1BeforePrint
  (Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   a1 := 0;
   a2 := 0;
   a3 := 0;

end;

End.
