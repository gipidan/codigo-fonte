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

unit FRelCaixaSimplificado;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   quickrpt, Qrctrls, ExtCtrls, DBTables, DB,
   MemDS, Uni, QRPDFFilt,
   QRXMLSFilt, QRWebFilt, QRExport, DBAccess;

type
   TFrmRelCaixaSintetico = class(TForm)
      QuickRep: TQuickRep;
      EmpresaTitulo: TQRBand;
      QRLabel1: TQRLabel;
      QRLabel3: TQRLabel;
      QRSysData1: TQRSysData;
      QRLabel4: TQRLabel;
      QRSysData2: TQRSysData;
      Cabecalho: TQRBand;
      QRLabel9: TQRLabel;
      QRLabel8: TQRLabel;
      QRLabel11: TQRLabel;
      Datalhes: TQRBand;
      Vlr_Credito: TQRDBText;
      QRDBText3: TQRDBText;
      QRDBText2: TQRDBText;
      Sql_MovmCaixa: TUniQuery;
      SummaryBand1: TQRBand;
      QRLabel2: TQRLabel;
      QRLabel6: TQRLabel;
      Vlr_Debito: TQRDBText;
      Vlr_SaldoAtual: TQRDBText;
      QRLabel12: TQRLabel;
      Vlr_SaldoAnterior: TQRDBText;
      QRDBText6: TQRDBText;
      QRExpr5: TQRExpr;
      QRExpr2: TQRExpr;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelCaixaSintetico: TFrmRelCaixaSintetico;

implementation

uses FPrincipal, FRelMovCaixa, Global, Biblioteca;

{$R *.DFM}

procedure TFrmRelCaixaSintetico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Sql_MovmCaixa.Close;

   Action := caFree;
end;

procedure TFrmRelCaixaSintetico.FormCreate(Sender: TObject);
begin

   Sql_MovmCaixa.Params.Clear;

   sqlMaster :=
     ' SELECT * FROM SP_CAIXA_SALDO_01(:DATA1, :DATA2, :SLDANTERIOR, :PLANO_CTA) ';

   Sql_MovmCaixa.Close;
   Sql_MovmCaixa.SQL.Clear;
   Sql_MovmCaixa.SQL.Add(sqlMaster);
   Sql_MovmCaixa.ParamByName('data1').AsDateTime :=
     StrToDate(FrmRelMovCaixa.FrameDatas1.MskDataIni.Text);
   Sql_MovmCaixa.ParamByName('data2').AsDateTime :=
     StrToDate(FrmRelMovCaixa.FrameDatas1.MskDataFim.Text);

   // Informar se deve ou n�o Incluir o Saldo Anterior
   if (FrmRelMovCaixa.RadioGSaldoAnterior.ItemIndex = 0) then
      Sql_MovmCaixa.ParamByName('SLDANTERIOR').AsString := 'S'
   Else
      Sql_MovmCaixa.ParamByName('SLDANTERIOR').AsString := 'N';

   if not FrmRelMovCaixa.chkPlanos.checked then
   Begin
      Sql_MovmCaixa.ParamByName('PLANO_CTA').AsString :=
        FrmRelMovCaixa.EditPlanoContas.Text;
   End;
   Sql_MovmCaixa.Open;

   QuickRep.Preview;
   Close;

end;

end.
