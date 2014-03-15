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

unit FPedidoVendaGrade;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, StdCtrls, BaseGrid, AdvGrid,
   AdvGridRTF, rtflabel, AdvObj, DB, MemDS, DBAccess, Uni, DBGrids;

type
   TFrmPedidoVendaGrade = class(TForm)
      Panel1: TPanel;
    GroupBox1: TGroupBox;
    StringGridOpcoes: TAdvStringGrid;
    grpDetalhes: TGroupBox;
    GroupBox3: TGroupBox;
    StringGridEstoque: TAdvStringGrid;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
      procedure StringGridOpcoesKeyPress(Sender: TObject; var Key: Char);
      procedure FormShow(Sender: TObject);
   private
    //procedure CrossTab(dbDados:TUniQuery; stScriptSQL, stCampoLinhas, stTituloLinha, stCampoColunas , stCampoSomar, stWhere:String; stOperador:String='Sum');
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmPedidoVendaGrade: TFrmPedidoVendaGrade;

implementation

uses FPedidoVenda, Biblioteca_pcp, Biblioteca, FPrincipal, Global,
  FProdutosQuantidade, SQLServer;

{$R *.dfm}

procedure TFrmPedidoVendaGrade.FormCreate(Sender: TObject);
begin

   if FrmPedidoVenda.ChecarProtecaoPedido then
   begin
      StringGridOpcoes.Options := StringGridOpcoes.Options - [goEditing];
   end;


   nOrdemProducao :=FrmPedidoVenda.db_Pedido.FieldByName('ORDEMPRODUCAO').AsInteger;
   GradeProduto_Montar(FrmPedidoVenda.db_PedidoItens.FieldByName('REFERENCIA')
     .AsString, StringGridOpcoes);

   GradeProduto_Carregar(FrmPedidoVenda.db_Pedido.FieldByName('CODIGO').AsInteger,
                         FrmPedidoVenda.db_PedidoItens.FieldByName('REFERENCIA').AsString,
                         StringGridOpcoes);



   // produtos em estoque
   GradeProduto_Montar(strReferencia, StringGridEstoque);
   CadProduto_EstoqueCarregar(StrToIntDef ( fncProduto_retCampo(strReferencia,'CODIGO')  ,0),
                                  strReferencia,
                                  StringGridEstoque);


   // produtos em produ��o


end;

{
Procedure TFrmPedidoVendaGrade.CrossTab(dbDados:TUniQuery; stScriptSQL, stCampoLinhas, stTituloLinha, stCampoColunas , stCampoSomar, stWhere:String; stOperador:String='Sum');
Var
Str, Value : String;
Begin

   With dbDados do
   Begin
      DisableControls;
      Screen.Cursor := crSQLWait;
      Try
         Close;
         SQL.Text := 'SELECT DISTINCT '+stCampoColunas+' FROM ('+stScriptSQL+') AS COLUMNS';
         Open;

         If stTituloLinha = '' Then stTituloLinha := stCampoLinhas;
         Str := 'SELECT '+stCampoLinhas+' as '+#39+stTituloLinha+#39+',';

         While not dbDados.Eof do
         Begin
            Value := dbDados.FieldByName(stCampoColunas).AsString;
            If Value='' Then
               Value := 'N�o Informado';

            Value := StringReplace(Value,'.','_',[rfReplaceAll]);
            Str := Str + stOperador+'( CASE '+stCampoColunas+' WHEN '+#39+Value+#39+' THEN '+stCampoSomar+' END) as '+#39+Value+#39+',';
            dbDados.Next;

         End;

         Str := Str + ' '+stOperador+'('+stCampoSomar+') as TOTAL';
         Str := Str + ' FROM ('+stScriptSQL+' AS B ) AS A';
         Str := Str + ' ';
         if stWhere>'' then
         begin
            Str := Str + stWhere;
         end;
         Str := Str + ' ';
         Str := Str + ' GROUP BY '+stCampoLinhas+' ORDER BY '+stCampoLinhas+'';
         //dbDados.Close;
         //dbDados.SQL.Text := Str;

         dbDados.close;
         dbDados.sql.clear;
         dbDados.sql.add(Str);
         dbDados.open;

         dbDados.Open;
      Finally
         Screen.Cursor := crDefault;
         EnableControls;
      End;
   End;

End;
}

procedure TFrmPedidoVendaGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   if not FrmPedidoVenda.ChecarProtecaoPedido then
   begin
      GradeProduto_Salvar(FrmPedidoVenda.db_Pedido.FieldByName('CODIGO').AsInteger,
                          FrmPedidoVenda.db_PedidoItens.FieldByName('REFERENCIA').AsString,
                          FrmPedidoVenda.db_Pedido.FieldByName('APROVADO').AsString,
                          StringGridOpcoes
                           );

      if not ( FrmPedidoVenda.db_PedidoItens.state in [dsedit,dsinsert]) then
         FrmPedidoVenda.db_PedidoItens.Edit;

      FrmPedidoVenda.db_PedidoItens.FieldByName('QTDE').AsFloat :=    GradeProduto_Totalizar(StringGridOpcoes);

      if ( FrmPedidoVenda.db_PedidoItens.state in [dsedit,dsinsert]) then
         FrmPedidoVenda.db_PedidoItens.Post;
   end;

   Action := Cafree;

end;

procedure TFrmPedidoVendaGrade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F3 then
   begin
      StringGridOpcoes.Clear;
      GradeProduto_Montar(FrmPedidoVenda.db_PedidoItens.FieldByName('REFERENCIA').AsString, StringGridOpcoes);
   end;

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmPedidoVendaGrade.FormShow(Sender: TObject);
begin

   //FrmPedidoVendaGrade.Width := StringGridOpcoes.Width + 15;

   FrmPedidoVendaGrade.Caption := 'Grade de quantidades /  ' + 'Pedido n�mero: '
     + FrmPedidoVenda.db_Pedido.FieldByName('CODIGO').AsString;


end;

procedure TFrmPedidoVendaGrade.StringGridOpcoesKeyPress(Sender: TObject;
  var Key: Char);
begin
   {
     If Not (key in ['0'..'9',#8,#13,#46,#37,#38,#39,#40] ) Then
     key:=#0;
   }
end;



end.
