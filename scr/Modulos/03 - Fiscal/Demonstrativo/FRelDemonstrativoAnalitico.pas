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

unit FRelDemonstrativoAnalitico;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   quickrpt, Qrctrls, ExtCtrls, DBTables, DB,
   MemDS, Uni, QRPDFFilt, DBAccess;

type
   TFrmRelDemonstrativoAnalitico = class(TForm)
      db_demonstrativo: TUniQuery;
      QuickRep: TQuickRep;
      QRBand2: TQRBand;
      Detalhes: TQRBand;
      QRDBText4: TQRDBText;
      QRDBText5: TQRDBText;
      QRGroup1: TQRGroup;
      QuebraTotal: TQRBand;
      QRGroup2: TQRGroup;
      QRDBText9: TQRDBText;
      TotalData: TQRBand;
      QRBand5: TQRBand;
      Lbl_QrTotal: TQRLabel;
      LBL_movimentacao: TQRDBText;
      QRExpr3: TQRExpr;
      QRShape2: TQRShape;
      Lbl_SubTotalMovto: TQRLabel;
      QRExpr1: TQRExpr;
      QRLabel13: TQRLabel;
      QRDBText6: TQRDBText;
      db_demonstrativoNATUREZA: TStringField;
      db_demonstrativoPLN_CONTA: TStringField;
      db_demonstrativoPLN_CONTA_NOME: TStringField;
      db_demonstrativoPLANO_CODIGO: TIntegerField;
      db_demonstrativoPLANO_NOME: TStringField;
      db_demonstrativoHISTORICO: TStringField;
      db_demonstrativoVALOR: TFloatField;
      Band_Cabecalho: TQRBand;
      LblTitulo: TQRLabel;
      QRLabel1: TQRLabel;
      QRLabel10: TQRLabel;
      QRLabel11: TQRLabel;
      QRSysData1: TQRSysData;
      QRSysData2: TQRSysData;
      QRSysData5: TQRSysData;
      LblPeriodo: TQRLabel;
      QRShape1: TQRShape;
      LblPlanoContas: TQRLabel;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure DetalhesBeforePrint(Sender: TQRCustomBand;
        var PrintBand: Boolean);
      procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
        var PrintReport: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelDemonstrativoAnalitico: TFrmRelDemonstrativoAnalitico;

implementation

uses FPrincipal, Global, Biblioteca, FRelDemonstrativo;

{$R *.DFM}

procedure TFrmRelDemonstrativoAnalitico.FormCreate(Sender: TObject);
begin

   wFloat[0] := 0; // total
   wFloat[1] := 0; // credito
   wFloat[2] := 0; // debito

   LblPeriodo.Caption := 'PER�ODO:  ' + FrmRelDemonstrativo.MskDataIni.Text +
     ' A ' + FrmRelDemonstrativo.MskDataFim.Text;

   if not FrmRelDemonstrativo.chkPlanos.checked then
   begin
      if FrmRelDemonstrativo.DCodPlano.Text > '' then
      begin
         LblPlanoContas.Caption := 'PLANO DE CONTAS: ' + #13 + #10 +
           FrmRelDemonstrativo.EditNomePlanoContas.Text;
      end
      else
      begin
         FrmRelDemonstrativo.DCodPlano.Text := '0';
      end;
   end;

   sqlMaster := ' ';
   sqlMaster := sqlMaster + ' select  ';
   sqlMaster := sqlMaster + '     NATUREZA ,  ';
   sqlMaster := sqlMaster + '     PLN_CONTA ,  ';
   sqlMaster := sqlMaster + '     PLN_CONTA_NOME ,  ';
   sqlMaster := sqlMaster + '     PLANO_CODIGO ,  ';
   sqlMaster := sqlMaster + '     PLANO_NOME ,  ';
   sqlMaster := sqlMaster + '     HISTORICO ,  ';
   sqlMaster := sqlMaster + '     sum(VALOR) AS VALOR  ';
   sqlMaster := sqlMaster + '   ';
   sqlMaster := sqlMaster + ' from SP_DEMONSTRATIVO (:DATA1, :DATA2 )  ';
   sqlMaster := sqlMaster + ' WHERE  ';
   sqlMaster := sqlMaster + ' VALOR<>0  ';

   if not FrmRelDemonstrativo.chkPlanos.checked then
   Begin
      sqlMaster := sqlMaster + ' AND PLANO_CODIGO=:PLANO_CODIGO ';
      sqlMaster := sqlMaster + '   ';
   End;

   // somente as quitadas
   if FrmRelDemonstrativo.RadioStatus.ItemIndex = 1 then
   Begin
      sqlMaster := sqlMaster + ' AND QUITADO= ' + QuotedStr('S');
   End;

   // somente as pendentes
   if FrmRelDemonstrativo.RadioStatus.ItemIndex = 2 then
   Begin
      sqlMaster := sqlMaster + ' AND QUITADO= ' + QuotedStr('N');
   End;

   // somente as receitas (contas a receber)
   if FrmRelDemonstrativo.RadioMovimentacao.ItemIndex = 1 then
   Begin
      sqlMaster := sqlMaster + ' AND NATUREZA= ' + QuotedStr('RECEITA');
   End;

   // somente as despesas (contas a pagar)
   if FrmRelDemonstrativo.RadioMovimentacao.ItemIndex = 2 then
   Begin
      sqlMaster := sqlMaster + ' AND NATUREZA= ' + QuotedStr('DESPESA');
   End;

   sqlMaster := sqlMaster + ' GROUP BY  ';
   sqlMaster := sqlMaster + '     NATUREZA ,  ';
   sqlMaster := sqlMaster + '     PLN_CONTA ,  ';
   sqlMaster := sqlMaster + '     PLN_CONTA_NOME ,  ';
   sqlMaster := sqlMaster + '     PLANO_CODIGO ,  ';
   sqlMaster := sqlMaster + '     PLANO_NOME ,  ';
   sqlMaster := sqlMaster + '     HISTORICO ,  ';
   sqlMaster := sqlMaster + '     SALDO_FINAL  ';
   sqlMaster := sqlMaster + '   ';
   sqlMaster := sqlMaster + ' order by  ';
   sqlMaster := sqlMaster + '     NATUREZA DESC, PLANO_NOME, PLN_CONTA_NOME  ';

   db_demonstrativo.Close;
   db_demonstrativo.SQL.Clear;
   db_demonstrativo.SQL.Add(sqlMaster);
   db_demonstrativo.ParamByName('DATA1').AsDateTime :=
     StrToDate(FrmRelDemonstrativo.MskDataIni.Text);
   db_demonstrativo.ParamByName('DATA2').AsDateTime :=
     StrToDate(FrmRelDemonstrativo.MskDataFim.Text);

   if not FrmRelDemonstrativo.chkPlanos.checked then
   Begin
      db_demonstrativo.ParamByName('PLANO_CODIGO').AsInteger :=
        StrToInt(FrmRelDemonstrativo.DCodPlano.Text);
   End;

   db_demonstrativo.Open;

   QuickRep.Preview;
   Close;

end;

procedure TFrmRelDemonstrativoAnalitico.DetalhesBeforePrint
  (Sender: TQRCustomBand; var PrintBand: Boolean);
begin

   If db_demonstrativo.FieldByName('NATUREZA').AsString = 'RECEITA' then
   begin
      wFloat[1] := wFloat[1] + db_demonstrativo.FieldByName('VALOR').AsFloat;
   end;

   If db_demonstrativo.FieldByName('NATUREZA').AsString = 'DESPESA' then
   begin
      wFloat[2] := wFloat[2] + db_demonstrativo.FieldByName('VALOR').AsFloat;
   end;

   // Cr�dito - Debito
   wFloat[0] := 0;
   wFloat[0] := wFloat[1] - wFloat[2];

   if wFloat[0] > 0 then
   begin
      Lbl_QrTotal.Color := clBlue;
      Lbl_QrTotal.Font.Color := clWhite;
      Lbl_QrTotal.Caption := '   LUCRO:   ' + FormatFloat('###,##0.00',
        wFloat[0]) + '   ';
   end;

   if wFloat[0] < 0 then
   begin
      Lbl_QrTotal.Color := clRed;
      Lbl_QrTotal.Font.Color := clWhite;
      Lbl_QrTotal.Caption := '   PREJU�ZO:   ' + FormatFloat('###,##0.00',
        wFloat[0]) + '   ';
   end;

   if wFloat[0] = 0 then
   begin
      Lbl_QrTotal.Caption := 'Receitas e Despesas est�o iguais:   ' +
        FormatFloat('###,##0.00', wFloat[0]);
   end;

end;

procedure TFrmRelDemonstrativoAnalitico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_demonstrativo.Close;

   Action := caFree;
end;

procedure TFrmRelDemonstrativoAnalitico.QuickRepBeforePrint
  (Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   wFloat[0] := 0; // total
   wFloat[1] := 0; // credito
   wFloat[2] := 0; // debito
   Lbl_QrTotal.Caption := '0,00';

end;

procedure TFrmRelDemonstrativoAnalitico.QRGroup1BeforePrint
  (Sender: TQRCustomBand; var PrintBand: Boolean);
begin

   if db_demonstrativo.FieldByName('NATUREZA').AsString = 'RECEITA' then
   begin
      LBL_movimentacao.Caption := '   RECEITAS   ';
      Lbl_SubTotalMovto.Caption := '   TOTAL DE RECEITAS: ';
   end;

   if db_demonstrativo.FieldByName('NATUREZA').AsString = 'DESPESA' then
   begin
      LBL_movimentacao.Caption := '   DESPESAS   ';
      Lbl_SubTotalMovto.Caption := '   TOTAL DE DESPESAS: ';
   end;

end;

end.
