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

unit FFat_RelCurvaABC_Clientes;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, QuickRpt, DB, SqlExpr, QRCtrls, QRExport,
   MemDS, Uni, QRPDFFilt, DBAccess, Classe.Global;

type
   TFrmFat_RelCurvaABC_Clientes = class(TForm)
      QuickRep: TQuickRep;
      DetailBand1: TQRBand;
      SummaryBand1: TQRBand;
      DB_Vendas: TUniQuery;
      QRLabel13: TQRLabel;
      QRDBText3: TQRDBText;
      QRDBText8: TQRDBText;
      Qtdolicitada: TQRExpr;
      qrPercent: TQRLabel;
      qrTotal: TQRLabel;
      TitleBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      Band_Cabecalho: TQRBand;
      LblTitulo: TQRLabel;
      QRLabel8: TQRLabel;
      QRShape3: TQRShape;
      QRLabel4: TQRLabel;
      QRLabel11: TQRLabel;
      QRSysData2: TQRSysData;
      QRSysData4: TQRSysData;
      QRSysData5: TQRSysData;
      LblPeriodo: TQRLabel;
      QRShape2: TQRShape;
      LblVendedor: TQRLabel;
      LblCliente: TQRLabel;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
    procedure DB_VendasBeforeOpen(DataSet: TDataSet);
   private
      { Private declarations }
      somag, somaP: real;
      valor1, valor2, somat: real;

   public
      { Public declarations }
   end;

var
   FrmFat_RelCurvaABC_Clientes: TFrmFat_RelCurvaABC_Clientes;

implementation

uses FPrincipal, Biblioteca, Global,
   FBaseDados, FRelFaturamento;

{$R *.dfm}

procedure TFrmFat_RelCurvaABC_Clientes.FormCreate(Sender: TObject);
begin
   Flutuante1 := 0;
   Flutuante2 := 0;

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
   sqlMaster := sqlMaster + ' select   ';
   sqlMaster := sqlMaster + '    ';
   sqlMaster := sqlMaster + ' B.NOME as NomeCliente,   ';
   sqlMaster := sqlMaster + ' Sum(A.total_nf)  as Faturamento   ';
   sqlMaster := sqlMaster + ' from VENDAS A, CAD_CLIENTES B   ';
   sqlMaster := sqlMaster + '  WHERE  ';
   sqlMaster := sqlMaster + '  A.EMPRESA=:EMPRESA  ';
   sqlMaster := sqlMaster + '  AND  ';
   sqlMaster := sqlMaster + ' A.EMISSAO>=:DATA1 AND A.EMISSAO<=:DATA2 ';
   sqlMaster := sqlMaster + ' AND ';
   sqlMaster := sqlMaster + ' B.CODIGO=A.CLIENTE   ';
   sqlMaster := sqlMaster + ' AND   ';
   sqlMaster := sqlMaster + ' B.TIPO=''CLIENTE''   ';
   sqlMaster := sqlMaster + '    ';
   sqlMaster := sqlMaster + '    ';

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

   sqlMaster := sqlMaster + ' Group by A.CLIENTE, B.NOME   ';
   sqlMaster := sqlMaster + ' order by Faturamento desc  ';

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

   Flutuante1 := 0;
   While not DB_Vendas.Eof do
   Begin
      Flutuante1 := Flutuante1 + DB_Vendas.FieldByName('Faturamento').AsFloat;
      DB_Vendas.Next;
   end;
   DB_Vendas.First;

   if Flutuante1 <= 0 then
      Flutuante1 := 1;

   QuickRep.Preview;

   Close;

end;

procedure TFrmFat_RelCurvaABC_Clientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DB_Vendas.Close;

   Action := caFree;
End;

procedure TFrmFat_RelCurvaABC_Clientes.DB_VendasBeforeOpen(DataSet: TDataSet);
begin
   DB_Vendas.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmFat_RelCurvaABC_Clientes.DetailBand1BeforePrint
  (Sender: TQRCustomBand; var PrintBand: Boolean);

var

   valor1, valor2, somat: real;

begin

   // somar faturamento
   valor1 := 0;
   valor2 := 0;
   somat := 0;

   valor1 := DB_Vendas.FieldByName('Faturamento').AsFloat;
   valor2 := Flutuante1;

   somat := ((valor1 / valor2) * 100);

   somag := somag + somat;
   qrPercent.Caption := Formatfloat('###,##0.00%', somat);
   qrTotal.Caption := Formatfloat('###,##0.00%', somag);

end;

procedure TFrmFat_RelCurvaABC_Clientes.QuickRepBeforePrint
  (Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   valor1 := 0;
   valor2 := 0;
   somat := 0;
   somag := 0;
   somaP := 0;

end;

End.
