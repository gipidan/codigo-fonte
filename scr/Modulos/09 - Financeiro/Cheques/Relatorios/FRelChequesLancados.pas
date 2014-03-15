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

unit FRelChequesLancados;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   QRExport, QRPREV, ExtCtrls, quickrpt, Qrctrls, Db, DBTables, QRPrntr,
   MemDS, Uni, QRPDFFilt, DBAccess;

type
   TFrmRelChequesLancados = class(TForm)
      DS_CHEQUES: TDataSource;
      db_cheques: TUniQuery;
      QuickRep: TQuickRep;
      PageHeaderBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRSysData2: TQRSysData;
      QRLabel31: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel10: TQRLabel;
      QRSysData3: TQRSysData;
      Datalhes: TQRBand;
      QRDBText3: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText6: TQRDBText;
      QRDBText7: TQRDBText;
      QRDBText8: TQRDBText;
      qrxtItens: TQRDBText;
      QuebraBanco: TQRGroup;
      qrPeriodo: TQRLabel;
      QDPeriodo: TQRDBText;
      Cabecalho: TQRBand;
      QRLabel18: TQRLabel;
      QRLabel19: TQRLabel;
      QRLabel20: TQRLabel;
      QRLabel21: TQRLabel;
      QRLabel24: TQRLabel;
      lbPecas: TQRLabel;
      TotalOperacao: TQRBand;
      qTotalEspecie: TQRLabel;
      QRExpr4: TQRExpr;
      SummaryBand1: TQRBand;
      QRExpr6: TQRExpr;
      QRLabel5: TQRLabel;
      PageFooterBand1: TQRBand;
      QRDBText1: TQRDBText;
      QRLabel3: TQRLabel;
      QRLabel6: TQRLabel;
      QRDBText2: TQRDBText;
      QRDBText5: TQRDBText;
      qrTipo: TQRLabel;
      LblParam: TQRLabel;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelChequesLancados: TFrmRelChequesLancados;

implementation

uses Biblioteca, Global, FRelCheques, FPrincipal;

{$R *.DFM}

procedure TFrmRelChequesLancados.FormCreate(Sender: TObject);
begin

   If FrmRelCheques.rAgrupar.ItemIndex = 0 then
   Begin
      qrPeriodo.Caption := 'Vencimento:';
      QDPeriodo.DataField := 'VENCIMENTO';

      LblParam.Caption := 'Vencimento de ' + FrmRelCheques.MskDataIni.Text +
        ' at� ' + FrmRelCheques.MskDataFim.Text + '     ';

   end;

   If FrmRelCheques.rAgrupar.ItemIndex = 1 then
   begin
      qrPeriodo.Caption := 'Emiss�o:';
      QDPeriodo.DataField := 'DATA';

      LblParam.Caption := 'Data de ' + FrmRelCheques.MskDataIni.Text + ' at� ' +
        FrmRelCheques.MskDataFim.Text + '  -  ';

   End;

   dtDataIni := StrToDateTime(FrmRelCheques.MskDataIni.Text);
   dtDataFim := StrToDateTime(FrmRelCheques.MskDataFim.Text);

   // cheques a receber
   If FrmRelCheques.RadioG.ItemIndex = 0 then
   begin

      qrTipo.Caption := 'Cheques Recebidos';

      // montar script da tabela Mestre
      sqlMaster := '';
      sqlMaster := sqlMaster + ' SELECT * FROM FIN_CTARECEBER ';
      sqlMaster := sqlMaster + ' WHERE ';
      sqlMaster := sqlMaster + ' VENCIMENTO>=:Data1 AND VENCIMENTO<=:Data2 ';
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' ESPECIE=''CHEQUE'' ';

      If not FrmRelCheques.chkContas.Checked then
      begin
         LblParam.Caption := LblParam.Caption + 'C�digo da Conta corrente: ' +
           FrmRelCheques.EditContaCorrente.Text;
         sqlMaster := sqlMaster + ' AND ';
         sqlMaster := sqlMaster + ' CONTA_CREDITO=:CONTA_CORRENTE ';
      end;

      sqlMaster := sqlMaster + ' ORDER BY VENCIMENTO, CHQ_EMITENTE ';

      db_cheques.Close;
      db_cheques.SQL.clear;
      db_cheques.SQL.Add(sqlMaster);
      db_cheques.ParamByName('data1').AsDateTime := dtDataIni;
      db_cheques.ParamByName('data2').AsDateTime := dtDataFim;
      db_cheques.Open;

      If db_cheques.RecordCount > 0 then
      Begin
         db_cheques.First;
         QuebraBanco.Expression := '';
         QuebraBanco.Expression := 'db_cheques.' + Agrupar;

         // visualizar
         QuickRep.Preview;
      End
      else
      begin
         Informar('N�o h� dados para relat�rio no periodo selecionado');
      end;

   end;

   // cheques a PAGAR
   IF FrmRelCheques.RadioG.ItemIndex = 1 then
   begin
      qrTipo.Caption := 'Cheques Emitidos (a pagar)';

      // montar script da tabela Mestre
      sqlMaster := '';
      sqlMaster := sqlMaster + ' SELECT * FROM FIN_CTAPAGAR ';
      sqlMaster := sqlMaster + ' WHERE ';
      sqlMaster := sqlMaster + ' VENCIMENTO>=:Data1 AND VENCIMENTO<=:Data2 ';
      sqlMaster := sqlMaster + ' AND ';
      sqlMaster := sqlMaster + ' ESPECIE=''CHEQUE'' ';

      If not FrmRelCheques.chkContas.Checked then
      begin
         LblParam.Caption := LblParam.Caption + 'C�digo da Conta corrente: ' +
           FrmRelCheques.EditContaCorrente.Text;
         sqlMaster := sqlMaster + ' AND ';
         sqlMaster := sqlMaster + ' CONTA_CREDITO=:CONTA_CORRENTE ';
      end;

      sqlMaster := sqlMaster + ' ORDER BY VENCIMENTO, CHQ_EMITENTE ';

      db_cheques.Close;
      db_cheques.SQL.clear;
      db_cheques.SQL.Add(sqlMaster);
      db_cheques.ParamByName('data1').AsDateTime := dtDataIni;
      db_cheques.ParamByName('data2').AsDateTime := dtDataFim;
      db_cheques.Open;

      If db_cheques.RecordCount > 0 then
      Begin
         db_cheques.First;
         QuebraBanco.Expression := '';
         QuebraBanco.Expression := 'db_cheques.' + Agrupar;

         // visualizar
         QuickRep.Preview;
      End
      else
      begin
         Informar('N�o h� dados para relat�rio no periodo selecionado');
      end;

   end;

   Close;

end;

procedure TFrmRelChequesLancados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_cheques.Close;
   Action := caFree;

end;

end.
