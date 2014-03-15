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

unit FPedidoVendaCodigoBarra;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, BTOdeum, db, Buttons, jpeg, FFrameBarra, MemDS,
   DBAccess, Uni, Grids, DBGrids, Classe.Global;

type
   TFrmPedidoVendaCodigoBarra = class(TForm)
      Panel3: TPanel;
      Label18: TLabel;
      Image2: TImage;
      EditCodigo: TLabeledEdit;
    FrmFrameBarra1: TFrmFrameBarra;
    SP_PedidoLancaGrade: TUniStoredProc;
    StringGridOpcoes: TStringGrid;
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
   private
      { Private declarations }

    procedure prcMapaGrade;

   public
      { Public declarations }
   end;

var
   FrmPedidoVendaCodigoBarra: TFrmPedidoVendaCodigoBarra;



implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios, FPedidoVenda,
  Biblioteca_pcp;

{$R *.dfm}

procedure TFrmPedidoVendaCodigoBarra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
   Begin
      close;
   End;

end;

procedure TFrmPedidoVendaCodigoBarra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   blProdutoViaLeitor :=false;
   Action := cafree;

end;


procedure TFrmPedidoVendaCodigoBarra.FormCreate(Sender: TObject);
begin

   blProdutoViaLeitor :=true;
   EditCodigo.text := '';


end;

procedure TFrmPedidoVendaCodigoBarra.EditCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
  nlQTDE : Integer;

begin



   // db_PedidoConferenciaItens.FieldByName('QUANTIDADE').AsFloat;
   // codigo de barras
   If Key = #13 then
   Begin
      FrmPedidoVenda.db_PedidoItens.Refresh;

      strProduto := '';
      strProduto := UpperCase( Trim(EditCodigo.Text) );
      EditCodigo.text := '';

      // checar se o produto existe
      if fncValidaReferenciaGrade(strProduto)=false then
      begin
         AvisoSistema('Produto ['+strProduto+'] n�o est� cadastrado na Cor e Tamanho informado.');
         EditCodigo.SetFocus;
         Exit;
      End;

      // criar mapeamento de grade, caso nao exista;
      prcMapaGrade;

      // checar se ha estoque para o produto informado
      {
      if fncValidaReferenciaGradeQuantidade(sgReferencia)=false then
      begin
         AvisoSistema('Produto ['+sgReferencia+'] n�o possui quantidade em estoque.');
         EditCodigo.SetFocus;
         Exit;
      End;
      }

      nlQTDE   :=1;

      SP_PedidoLancaGrade.ParamByName('NEMPRESA').AsInteger         :=  FSistema.Empresa;
      SP_PedidoLancaGrade.ParamByName('NPEDIDO').AsInteger          :=  nPedidoVenda;
      SP_PedidoLancaGrade.ParamByName('SIDENTIFICADOR').AsString    :=  strProduto;
      SP_PedidoLancaGrade.ParamByName('NQUANTIDADE').AsInteger      :=  nlQTDE;
      SP_PedidoLancaGrade.ParamByName('NVALOR_UNIT').AsFloat        :=  0; // passando o valor zero, o proprio servidor SQL fara a localiza��o do valor unit�rio;
      SP_PedidoLancaGrade.ParamByName('ACAO').AsString              :=  'INCLUIR';
      SP_PedidoLancaGrade.ExecProc;
      SP_PedidoLancaGrade.close;

      FrmPedidoVenda.CalculaPedido;
      FrmPedidoVenda.db_PedidoItens.Refresh;


      EditCodigo.text := '';
      EditCodigo.Setfocus;


   End;

end;

procedure TFrmPedidoVendaCodigoBarra.prcMapaGrade;
begin

   // verificar se existe
   if fncPedidoVendaExisteProduto(nPedidoVenda,RetornaIdentificadorReferencia(strProduto))=false then
   begin

      FrmPedidoVenda.db_PedidoItens.Append;
      FrmPedidoVenda.db_PedidoItens.FieldByName('REFERENCIA').AsString    :=  RetornaIdentificadorReferencia(strProduto);

     // SALVAR ITENS DO PEDIDO DE VENDA
     If (FrmPedidoVenda.db_PedidoItens.State in [dsedit, dsinsert]) then
     Begin
        FrmPedidoVenda.db_PedidoItens.Post;
     End;


      FrmPedidoVenda.CalculaPedido;
      FrmPedidoVenda.db_PedidoItens.Refresh;
   end;

   // verificar se existe mapeamento
   if fncPedidoVendaExisteProdutoGrade(nPedidoVenda,RetornaIdentificadorReferencia(strProduto))=false then
   begin

      GradeProduto_Montar(RetornaIdentificadorReferencia(strProduto),
                       StringGridOpcoes
                       );

      GradeProduto_Salvar(nPedidoVenda,
                          RetornaIdentificadorReferencia(strProduto),
                          '',
                          StringGridOpcoes
                           );
   end;



end;


end.

