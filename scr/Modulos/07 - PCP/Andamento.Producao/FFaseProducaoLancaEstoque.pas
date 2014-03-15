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

unit FFaseProducaoLancaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, StdCtrls, Buttons, ExtCtrls, Mask, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB, MemDS, DBAccess, Uni, DBCtrls,
  ComCtrls, AdvEdit, AdvMoneyEdit, AdvDateTimePicker, VirtualTable, Grids,
  DBGrids,
  Classe.Global;

type
  TFrmFaseProducaoLancaEstoque = class(TForm)
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox1: TGroupBox;
    ProgressBar1: TProgressBar;
    SP_OrdemProducaoFinalizar: TUniStoredProc;
    EditQualidade: TIDBEditDialog;
    Edit2: TEdit;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    SP_ReferenciaLancaGrade: TUniStoredProc;
    Panel2: TPanel;
    EditQuantidade: TLabeledEdit;
    db_OrdemProducaoProduzido: TUniQuery;
    ds_OrdemProducaoProduzido: TDataSource;
    db_OrdemProducaoProduzidoEMPRESA: TIntegerField;
    db_OrdemProducaoProduzidoCODIGO: TIntegerField;
    db_OrdemProducaoProduzidoAPROVADO: TStringField;
    db_OrdemProducaoProduzidoDATA: TDateTimeField;
    db_OrdemProducaoProduzidoDATAATUALIZACAO: TDateTimeField;
    db_OrdemProducaoProduzidoREFERENCIA: TStringField;
    db_OrdemProducaoProduzidoIDENTIFICADOR: TStringField;
    db_OrdemProducaoProduzidoCOR_ID: TIntegerField;
    db_OrdemProducaoProduzidoCOR: TStringField;
    db_OrdemProducaoProduzidoTAMANHO_ID: TIntegerField;
    db_OrdemProducaoProduzidoTAMANHO: TStringField;
    db_OrdemProducaoProduzidoORDEM_GRADE: TStringField;
    db_OrdemProducaoProduzidoCELULA_COL: TIntegerField;
    db_OrdemProducaoProduzidoCOLUNA_ROW: TIntegerField;
    db_OrdemProducaoProduzidoQUANTIDADE: TFloatField;
    db_OrdemProducaoProduzidoQUALIDADE: TIntegerField;
    db_OrdemProducaoProduzidoBAIXADO: TStringField;
    db_OrdemProducaoProduzidoUSUARIO: TStringField;
    db_ProduzidosDeletarPendencia: TUniQuery;
    procedure BtnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_TabelaVirtualFinalizar_xAfterPost(DataSet: TDataSet);
    procedure db_TabelaVirtualFinalizar_xBeforeDelete(DataSet: TDataSet);
    procedure db_OrdemProducaoProduzidoQUANTIDADEChange(Sender: TField);
    procedure db_OrdemProducaoProduzidoBeforeDelete(DataSet: TDataSet);
    procedure db_OrdemProducaoProduzidoAfterPost(DataSet: TDataSet);
    procedure db_OrdemProducaoProduzidoBeforePost(DataSet: TDataSet);
  private
    procedure prcLancaEstoque;
    procedure prcSomarQuantidade;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFaseProducaoLancaEstoque: TFrmFaseProducaoLancaEstoque;



implementation

uses FPrincipal, Biblioteca, Global, SQLServer, FFaseProducao,
  FFaseProducaoRetornoTerceirizadosGrade, FFaseProducaoLancaEstoqueCodigoBarras;

{$R *.dfm}



procedure TFrmFaseProducaoLancaEstoque.BtnCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmFaseProducaoLancaEstoque.BtnOkClick(Sender: TObject);
begin

   strlFaseAtual       :=IntToStr(nFaseDestino);

   if (FParametros.Producao.ProducaoFinalizar='') or
      (FParametros.Producao.ProducaoFinalizar='AUTOMATICO')  then
   begin
      SP_OrdemProducaoFinalizar.ParamByName('NEMPRESA').AsInteger           := FSistema.Empresa;
      SP_OrdemProducaoFinalizar.ParamByName('NORDEMPRODUCAO').AsInteger     := nOrdemProducao;
      SP_OrdemProducaoFinalizar.ParamByName('SREFERENCIA').AsString         := strReferencia;
      SP_OrdemProducaoFinalizar.ParamByName('SFASE').AsString               := strlFaseAtual;
      SP_OrdemProducaoFinalizar.ParamByName('SVIA').AsString                := 'AUTOMATICO';
      SP_OrdemProducaoFinalizar.ExecProc;
      SP_OrdemProducaoFinalizar.close;
   end;

   if (FParametros.Producao.ProducaoFinalizar='CODIGOBARRAS') then
   begin
      prcLancaEstoque;

      SP_OrdemProducaoFinalizar.ParamByName('NEMPRESA').AsInteger           := FSistema.Empresa;
      SP_OrdemProducaoFinalizar.ParamByName('NORDEMPRODUCAO').AsInteger     := nOrdemProducao;
      SP_OrdemProducaoFinalizar.ParamByName('SREFERENCIA').AsString         := strReferencia;
      SP_OrdemProducaoFinalizar.ParamByName('SFASE').AsString               := strlFaseAtual;
      SP_OrdemProducaoFinalizar.ParamByName('SVIA').AsString                := 'CODIGOBARRAS';
      SP_OrdemProducaoFinalizar.ExecProc;
      SP_OrdemProducaoFinalizar.close;

   end;

   AvisoSistemaErro('Ordem de Produ��o finalizada com sucesso. Estoque foi atualizado.');
   Close;

end;

procedure TFrmFaseProducaoLancaEstoque.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF Key = VK_F9 Then
   begin
      // vincular tecidos na referencia
      If (db_OrdemProducaoProduzido.State in [dsedit, dsinsert]) then
         db_OrdemProducaoProduzido.Post
      else
         db_OrdemProducaoProduzido.Refresh;

      FrmFaseProducaoLancaEstoqueCodigoBarras := TFrmFaseProducaoLancaEstoqueCodigoBarras.Create(self);
      FrmFaseProducaoLancaEstoqueCodigoBarras.ShowModal;

      db_OrdemProducaoProduzido.Refresh;

   end;

end;

procedure TFrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzidoAfterPost(
  DataSet: TDataSet);
begin
   prcSomarQuantidade;

end;

procedure TFrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzidoBeforeDelete(
  DataSet: TDataSet);
begin
   prcSomarQuantidade;

end;

procedure TFrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzidoBeforePost(
  DataSet: TDataSet);
begin
   db_OrdemProducaoProduzido.FieldByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_OrdemProducaoProduzido.FieldByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_OrdemProducaoProduzido.FieldByName('APROVADO').AsString   :=  prcOrdemProducao_retCampo(nOrdemProducao,'APROVADO');
   db_OrdemProducaoProduzido.FieldByName('DATA').AsDateTime     :=  StrToDate(prcOrdemProducao_retCampo(nOrdemProducao,'DATA'));

   db_OrdemProducaoProduzido.FieldByName('DATAATUALIZACAO').AsDateTime  :=  Now;
   db_OrdemProducaoProduzido.FieldByName('USUARIO').AsString            :=  FUsuario.UsuarioNome;

   db_OrdemProducaoProduzido.FieldByName('QUALIDADE').AsInteger  := StrToIntDef(EditQualidade.Text,0);

end;

procedure TFrmFaseProducaoLancaEstoque.db_OrdemProducaoProduzidoQUANTIDADEChange(
  Sender: TField);
begin
   if fncFaseValidarQuantidade(strReferencia,
                            nOrdemProducao,
                            nFaseOrigem,
                            db_OrdemProducaoProduzido.FieldByName('COR_ID').AsInteger,
                            db_OrdemProducaoProduzido.FieldByName('TAMANHO_ID').AsInteger,
                            db_OrdemProducaoProduzido.FieldByName('QUANTIDADE').AsInteger
                            )=True Then
   Begin

       AvisoSistemaErro('A quantidade que voc� informou � maior que a quantidade real.');
       db_OrdemProducaoProduzido.Cancel;
       Abort;
   End;

end;

procedure TFrmFaseProducaoLancaEstoque.db_TabelaVirtualFinalizar_xAfterPost(
  DataSet: TDataSet);
begin
   prcSomarQuantidade;
end;

procedure TFrmFaseProducaoLancaEstoque.db_TabelaVirtualFinalizar_xBeforeDelete(
  DataSet: TDataSet);
begin
   prcSomarQuantidade;
end;

procedure TFrmFaseProducaoLancaEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   if db_OrdemProducaoProduzido.IsEmpty=False then
   begin
      db_ProduzidosDeletarPendencia.ParamByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
      db_ProduzidosDeletarPendencia.ParamByName('CODIGO').AsInteger    :=  nOrdemProducao;

      db_ProduzidosDeletarPendencia.close;
      db_ProduzidosDeletarPendencia.ExecSQL;
      db_ProduzidosDeletarPendencia.close;
   end;

   db_OrdemProducaoProduzido.close;
end;

procedure TFrmFaseProducaoLancaEstoque.FormCreate(Sender: TObject);
begin
   EditQualidade.Text := IntToStr(FParametros.Producao.QualidadePadrao);


   if db_OrdemProducaoProduzido.IsEmpty=False then
   begin
      db_ProduzidosDeletarPendencia.ParamByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
      db_ProduzidosDeletarPendencia.ParamByName('CODIGO').AsInteger    :=  nOrdemProducao;

      db_ProduzidosDeletarPendencia.close;
      db_ProduzidosDeletarPendencia.ExecSQL;
      db_ProduzidosDeletarPendencia.close;
   end;

   db_OrdemProducaoProduzido.close;
   db_OrdemProducaoProduzido.ParamByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_OrdemProducaoProduzido.ParamByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_OrdemProducaoProduzido.open;


end;


procedure TFrmFaseProducaoLancaEstoque.prcLancaEstoque;
begin

   strProduto    :='';
   strReferencia :='';

   db_OrdemProducaoProduzido.close;
   db_OrdemProducaoProduzido.open;
   db_OrdemProducaoProduzido.First;
   while not db_OrdemProducaoProduzido.eof do
   begin

      strProduto    := db_OrdemProducaoProduzido.FieldByName('IDENTIFICADOR').AsString;
      strReferencia := db_OrdemProducaoProduzido.FieldByName('REFERENCIA').AsString;

      SP_ReferenciaLancaGrade.ParamByName('NEMPRESA').AsInteger         :=  FSistema.Empresa;
      SP_ReferenciaLancaGrade.ParamByName('SIDENTIFICADOR').AsString    :=  strProduto;
      SP_ReferenciaLancaGrade.ParamByName('NQUANTIDADE').AsInteger      :=  db_OrdemProducaoProduzido.FieldByName('QUANTIDADE').AsInteger;
      SP_ReferenciaLancaGrade.ParamByName('NQUALIDADE').AsInteger       :=  StrToIntDef(EditQualidade.Text,0);
      SP_ReferenciaLancaGrade.ParamByName('ACAO').AsString              :=  'INCLUIR';
      SP_ReferenciaLancaGrade.ExecProc;
      SP_ReferenciaLancaGrade.close;

      prcFaseAndamentoTransferirEstoque(   0, //  TERCEIRIZADO
                                           nOrdemProducao,
                                           db_OrdemProducaoProduzido.FieldByName('CODIGO').AsInteger,
                                           nFaseOrigem,
                                           nFaseDestino,
                                           db_OrdemProducaoProduzido.FieldByName('COR_ID').AsInteger,
                                           db_OrdemProducaoProduzido.FieldByName('TAMANHO_ID').AsInteger,
                                           strReferencia,
                                           db_OrdemProducaoProduzido.FieldByName('QUANTIDADE').AsInteger
                                          );

      db_OrdemProducaoProduzido.Edit;
      db_OrdemProducaoProduzido.FieldByName('BAIXADO').AsString :='S';
      db_OrdemProducaoProduzido.Post;

      // passar para o proximo registro
      db_OrdemProducaoProduzido.Next;
      db_OrdemProducaoProduzido.First;
   end;
   db_OrdemProducaoProduzido.close;

end;

procedure TFrmFaseProducaoLancaEstoque.prcSomarQuantidade;
Var
 nqtde : integer;
begin

   strProduto    :='';
   strReferencia :='';
   nqtde         :=0;

   db_OrdemProducaoProduzido.close;
   db_OrdemProducaoProduzido.open;

   while not db_OrdemProducaoProduzido.eof do
   begin
      strProduto    := db_OrdemProducaoProduzido.FieldByName('IDENTIFICADOR').AsString;
      strReferencia := db_OrdemProducaoProduzido.FieldByName('REFERENCIA').AsString;
      nqtde         := nqtde + db_OrdemProducaoProduzido.FieldByName('QUANTIDADE').AsInteger;
      db_OrdemProducaoProduzido.Next;
   end;
   db_OrdemProducaoProduzido.first;

   EditQuantidade.text := FormatFloat('###,##0', nqtde);

end;


end.
