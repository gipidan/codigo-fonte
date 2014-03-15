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

unit FPedidoVendaConferenciaGrade;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, StdCtrls, BaseGrid, AdvGrid, AdvObj, DBGrids, DB,
  MemDS, DBAccess, Uni;

type
   TFrmPedidoVendaConferenciaGrade = class(TForm)
      Panel1: TPanel;
    StringGridOpcoes: TAdvStringGrid;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
    procedure StringGridOpcoesCellValidate(Sender: TObject; ACol, ARow: Integer;
      var Value: string; var Valid: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmPedidoVendaConferenciaGrade: TFrmPedidoVendaConferenciaGrade;


implementation

uses Biblioteca_pcp, Biblioteca,
  FPedidoVendaConferencia, SQLServer, Global, FPrincipal;

{$R *.dfm}

procedure TFrmPedidoVendaConferenciaGrade.FormCreate(Sender: TObject);
begin

   strReferencia :=FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('REFERENCIA').AsString;

   GradeProduto_Montar(strReferencia, StringGridOpcoes);


   PedidoVendaConferenciaGrade_Carregar(FrmPedidoVendaConferencia.db_PedidoConferencia.FieldByName('CODIGO').AsInteger,
                                          FrmPedidoVendaConferencia.db_PedidoConferencia.FieldByName('PEDIDO').AsInteger,
                                          strReferencia,
                                           StringGridOpcoes);



end;

procedure TFrmPedidoVendaConferenciaGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   strReferencia :=FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('REFERENCIA').AsString;

   PedidoVendaConferenciaGrade_Salvar(FrmPedidoVendaConferencia.db_PedidoConferencia.FieldByName('CODIGO').AsInteger,
                                        FrmPedidoVendaConferencia.db_PedidoConferencia.FieldByName('PEDIDO').AsInteger,
                                        strReferencia,
                                        StringGridOpcoes);



   Action := Cafree;

end;

procedure TFrmPedidoVendaConferenciaGrade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F3 then
   begin
      StringGridOpcoes.Clear;
      GradeProduto_Montar(FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('REFERENCIA').AsString, StringGridOpcoes);
   end;

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmPedidoVendaConferenciaGrade.StringGridOpcoesCellValidate(
  Sender: TObject; ACol, ARow: Integer; var Value: string; var Valid: Boolean);

begin
  //

  strCor                :=StringGridOpcoes.Cells[0, ARow];
  strTamanho            :=StringGridOpcoes.Cells[ACol, 0];
  nQuantidadeDigitada :=StrToIntDef(StringGridOpcoes.Cells[ACol, ARow], 0) ;
  nQuantidadeRestante :=  ValidaConferenciaRestante(FrmPedidoVendaConferencia.db_PedidoConferencia.FieldByName('PEDIDO').AsInteger,
                            FrmPedidoVendaConferencia.db_PedidoConferenciaItens.FieldByName('REFERENCIA').AsString,
                            strCor,
                            strTamanho);


  if nQuantidadeDigitada>nQuantidadeRestante then
  begin

     Informar('A quantidade digitada � maior que a restante disponivel para este pedido:'+
              #10+#13+
              #10+#13+
              'Quantidade Digitada: '+ IntToStr(nQuantidadeDigitada)+
              #10+#13+
              'Quantidade Restante: '+ IntToStr(nQuantidadeRestante)

               );
     StringGridOpcoes.Cells[ACol, ARow] :='0';
     Abort;
  end;


end;

end.
