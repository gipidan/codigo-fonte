{**********************************************************************************}
{ VESTIS PCPC - SISTEMA PARA INDUSTRIAS DE CONFECÇÕES.                             } 
{                                                                                  } 
{ Este arquivo é parte do codigo-fonte do sistema VESTIS PCP, é um software livre; }
{ você pode redistribuí-lo e/ou modificá-lo dentro dos termos da GNU LGPL versão 3 }
{ como publicada pela Fundação do Software Livre (FSF).                            }
{                                                                                  }
{ Este programa é distribuído na esperança que possa ser útil, mas SEM NENHUMA     }
{ GARANTIA; sem uma garantia implícita de ADEQUAÇÃO a qualquer MERCADO ou          }
{ APLICAÇÃO EM PARTICULAR. Veja a Licença Pública Geral GNU/LGPL em português      }
{ para maiores detalhes.                                                           }
{                                                                                  }
{ Você deve ter recebido uma cópia da GNU LGPL versão 3, sob o título              }
{ "LICENCA.txt", junto com esse programa.                                          }
{ Se não, acesse <http://www.gnu.org/licenses/>                                    }
{ ou escreva para a Fundação do Software Livre (FSF) Inc.,                         }
{ 51 Franklin St, Fifth Floor, Boston, MA 02111-1301, USA.                         }
{                                                                                  }
{                                                                                  }
{ Autor: Adriano Zanini -  zanini@r7.com                                           }
{                                                                                  }
{**********************************************************************************}


{***********************************************************************************
**  SISTEMA...............: VESTIS PCP                                            **
**  DESCRIÇÃO.............: SISTEMA ERP PARA INDUSTRIAS DE CONFECÇÕES             **
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
**  OBSERVAÇÃO............: CÓDIGO-FONTE LIVRE. E NÃO PODE SER COMERCIALIZADO.    **
**                          QUALQUER PESSOA FISICA OU JURIDICA (EMPRESA) PODE     **
**                          COPIAR E UTILIZAR SEM FINS COMERCIAIS.                **
**                                                                                **
***********************************************************************************}


unit FVendaDevolucaoProdutos;

interface

uses
   Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Buttons,
   Mask, DBCtrls, Grids, DBGrids, DB, MemDS, Uni,
   Menus,    ActnList,  FFrameBotoes, FFrameBotoes_II,
   ISFEdit,
   ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, FFrameBarra,
   DBAccess, StrUtils, frxClass, frxDBSet,
   Classe.Global;

type

   TFrmVendaDevolucaoProdutos = class(TForm)
    ds_VendasOrigem: TDataSource;
      ds_VendasItens: TDataSource;
      Panel1: TPanel;
      GRPTop: TGroupBox;
      Label7: TLabel;
      Label5: TLabel;
      EditData: TDBEdit;
      EditCodigo: TDBEdit;
      GRPItens: TGroupBox;
      FrmFrameBotoes1: TFrmFrameBotoes_II;
      EditCliente: TIDBEditDialog;
      EditNomeCliente: TEdit;
      EditNomeVendedor: TEdit;
      EditVendedor: TIDBEditDialog;
      FrmFrameBarra1: TFrmFrameBarra;
      GroupBox1: TGroupBox;
    dbGrid_Produtos: TDBGrid;
      GroupBox2: TGroupBox;
    db_VendasDevolucaoItens: TUniQuery;
      ds_VendasItensDevolucao: TDataSource;
      EditCodigoProduto: TLabeledEdit;
      GroupBox3: TGroupBox;
    db_VendasDevolucaoItensCODIGO: TIntegerField;
    db_VendasDevolucaoItensEMPRESA: TIntegerField;
    db_VendasDevolucaoItensNOTAFISCAL: TIntegerField;
    db_VendasDevolucaoItensMODELO: TStringField;
    db_VendasDevolucaoItensSERIE: TStringField;
    db_VendasDevolucaoItensTIPONF: TStringField;
    db_VendasDevolucaoItensEMISSAO: TDateTimeField;
    db_VendasDevolucaoItensOPERACAO: TStringField;
    db_VendasDevolucaoItensCLIENTE: TIntegerField;
    db_VendasDevolucaoItensVENDEDOR: TIntegerField;
    db_VendasDevolucaoItensCFOP: TIntegerField;
    db_VendasDevolucaoItensTABELA: TIntegerField;
    db_VendasDevolucaoItensFORMAPAGTO: TIntegerField;
    db_VendasDevolucaoItensTRANSPORTADORA: TIntegerField;
    db_VendasDevolucaoItensPRODUTO: TStringField;
    db_VendasDevolucaoItensSEQUENCIAITEM: TIntegerField;
    db_VendasDevolucaoItensNCM: TStringField;
    db_VendasDevolucaoItensDESCRICAO: TStringField;
    db_VendasDevolucaoItensUND: TStringField;
    db_VendasDevolucaoItensCLASSIFICACAO_FISCAL: TStringField;
    db_VendasDevolucaoItensSITUACAO_TRIBUTARIA: TStringField;
    db_VendasDevolucaoItensQUANTIDADE: TFloatField;
    db_VendasDevolucaoItensVLR_UNIT: TFloatField;
    db_VendasDevolucaoItensIPI: TFloatField;
    db_VendasDevolucaoItensVLR_IPI: TFloatField;
    db_VendasDevolucaoItensICMS: TFloatField;
    db_VendasDevolucaoItensVLR_ICMS: TFloatField;
    db_VendasDevolucaoItensISS: TFloatField;
    db_VendasDevolucaoItensISS_BASECALCULO: TFloatField;
    db_VendasDevolucaoItensISS_VALOR: TFloatField;
    db_VendasDevolucaoItensDESCONTO: TFloatField;
    db_VendasDevolucaoItensVLR_DESCONTO: TFloatField;
    db_VendasDevolucaoItensVLR_TOTAL: TFloatField;
    db_VendasDevolucaoItensALIQUOTA: TStringField;
    db_VendasDevolucaoItensTIPOQTDE: TStringField;
    db_VendasDevolucaoItensNATUREZA_DESCONTO: TStringField;
    db_VendasDevolucaoItensCASAS_DECIMAIS: TIntegerField;
    SP_NFE_CALCULA: TUniStoredProc;
    PopupMenuDeletar: TPopupMenu;
    ExcluirItem2: TMenuItem;
    db_VendasOrigem: TUniQuery;
    db_VendasOrigemCODIGO: TIntegerField;
    db_VendasOrigemEMPRESA: TIntegerField;
    db_VendasOrigemNOTAFISCAL: TIntegerField;
    db_VendasOrigemMODELO: TStringField;
    db_VendasOrigemSERIE: TStringField;
    db_VendasOrigemTIPONF: TStringField;
    db_VendasOrigemEMISSAO: TDateTimeField;
    db_VendasOrigemOPERACAO: TStringField;
    db_VendasOrigemCLIENTE: TIntegerField;
    db_VendasOrigemVENDEDOR: TIntegerField;
    db_VendasOrigemCFOP: TIntegerField;
    db_VendasOrigemTABELA: TIntegerField;
    db_VendasOrigemFORMAPAGTO: TIntegerField;
    db_VendasOrigemTRANSPORTADORA: TIntegerField;
    db_VendasOrigemDATA_ENTRADASAIDA: TDateTimeField;
    db_VendasOrigemHORA: TTimeField;
    db_VendasOrigemIE_SUBSTITUTO_TRIBUTARIO: TStringField;
    db_VendasOrigemICMS_BASECALCULO: TFloatField;
    db_VendasOrigemICMS_VALOR: TFloatField;
    db_VendasOrigemICMS_BASECALCULO_SUBSTITUICAO: TFloatField;
    db_VendasOrigemICMS_BASECALCULO_SUBSTITUICAO_VALOR: TFloatField;
    db_VendasOrigemICMS_REDUCAO: TFloatField;
    db_VendasOrigemICMS_REDUCAO_VALOR: TFloatField;
    db_VendasOrigemIPI_BASECALCULO: TFloatField;
    db_VendasOrigemIPI_VALOR: TFloatField;
    db_VendasOrigemISS: TFloatField;
    db_VendasOrigemISS_BASECALCULO: TFloatField;
    db_VendasOrigemISS_VALOR: TFloatField;
    db_VendasOrigemVLR_FRETE: TFloatField;
    db_VendasOrigemVLR_SEGURO: TFloatField;
    db_VendasOrigemVLR_DESPESAS_ASSESSORIAS: TFloatField;
    db_VendasOrigemDESCONTO: TFloatField;
    db_VendasOrigemVLR_DESCONTO: TFloatField;
    db_VendasOrigemVLR_RECEBIDO: TFloatField;
    db_VendasOrigemTROCO: TFloatField;
    db_VendasOrigemVLR_CAIXA: TFloatField;
    db_VendasOrigemFRETE: TStringField;
    db_VendasOrigemFRETE_QUANTIDADE: TIntegerField;
    db_VendasOrigemFRETE_ESPECIE: TStringField;
    db_VendasOrigemFRETE_MARCA: TStringField;
    db_VendasOrigemFRETE_NUMERO: TStringField;
    db_VendasOrigemFRETE_PBRUTO: TFloatField;
    db_VendasOrigemFRETE_PLIQUIDO: TFloatField;
    db_VendasOrigemOBS1: TStringField;
    db_VendasOrigemOBS2: TStringField;
    db_VendasOrigemTIPO_DESCONTO: TStringField;
    db_VendasOrigemDESCONTO_ACRESCIMO: TStringField;
    db_VendasOrigemPEDIDO: TIntegerField;
    db_VendasOrigemCUPOM: TStringField;
    db_VendasOrigemIMPRESSO: TStringField;
    db_VendasOrigemNFE_ASSINADO: TStringField;
    db_VendasOrigemNFE_ASSINATURA: TStringField;
    db_VendasOrigemNFE_VALIDADO: TStringField;
    db_VendasOrigemNFE_TRANSMITIDO: TStringField;
    db_VendasOrigemNFE_DANFEIMPRESSA: TStringField;
    db_VendasOrigemNFE_SITUACAOSEFAZ: TStringField;
    db_VendasOrigemNFE_APROVADA: TStringField;
    db_VendasOrigemNFE_NFECANCELADA: TStringField;
    db_VendasOrigemNFE_RECIBO: TStringField;
    db_VendasOrigemNFE_DATATRANSMISSAO: TDateTimeField;
    db_VendasOrigemNFE_HORATRANSMISSAO: TTimeField;
    db_VendasOrigemTIPOPAGAMENTO: TStringField;
    db_VendasOrigemNFE_CHAVEACESSO: TStringField;
    db_VendasOrigemNFE_PROTOCOLOUSO: TStringField;
    db_VendasOrigemNFE_SITUACAOCODIGO: TStringField;
    db_VendasOrigemNFE_LOTE: TIntegerField;
    db_VendasOrigemQTDE_PRODUTOS: TIntegerField;
    db_VendasOrigemVALOR_PRODUTOS: TFloatField;
    db_VendasOrigemTOTAL_NF: TFloatField;
    db_VendasOrigemSTATUS: TStringField;
    db_VendasOrigemNFE_ARQUIVO: TStringField;
    db_VendasOrigemVLR_CARTAO: TFloatField;
    db_VendasOrigemCONFERENCIA: TIntegerField;
    db_VendasOrigemSIMPLESNACIONAL_ALIQUOTA: TFloatField;
    db_VendasOrigemSIMPLESNACIONAL_VALOR: TFloatField;
    db_VendasItens: TUniQuery;
    db_VendasItensCODIGO: TIntegerField;
    db_VendasItensEMPRESA: TIntegerField;
    db_VendasItensNOTAFISCAL: TIntegerField;
    db_VendasItensMODELO: TStringField;
    db_VendasItensSERIE: TStringField;
    db_VendasItensTIPONF: TStringField;
    db_VendasItensEMISSAO: TDateTimeField;
    db_VendasItensOPERACAO: TStringField;
    db_VendasItensCLIENTE: TIntegerField;
    db_VendasItensVENDEDOR: TIntegerField;
    db_VendasItensCFOP: TIntegerField;
    db_VendasItensTABELA: TIntegerField;
    db_VendasItensFORMAPAGTO: TIntegerField;
    db_VendasItensTRANSPORTADORA: TIntegerField;
    db_VendasItensPRODUTO: TStringField;
    db_VendasItensNCM: TStringField;
    db_VendasItensDESCRICAO: TStringField;
    db_VendasItensUND: TStringField;
    db_VendasItensCLASSIFICACAO_FISCAL: TStringField;
    db_VendasItensSITUACAO_TRIBUTARIA: TStringField;
    db_VendasItensQUANTIDADE: TFloatField;
    db_VendasItensVLR_UNIT: TFloatField;
    db_VendasItensIPI: TFloatField;
    db_VendasItensVLR_IPI: TFloatField;
    db_VendasItensICMS: TFloatField;
    db_VendasItensVLR_ICMS: TFloatField;
    db_VendasItensISS: TFloatField;
    db_VendasItensISS_BASECALCULO: TFloatField;
    db_VendasItensISS_VALOR: TFloatField;
    db_VendasItensDESCONTO: TFloatField;
    db_VendasItensVLR_DESCONTO: TFloatField;
    db_VendasItensVLR_TOTAL: TFloatField;
    GroupBox4: TGroupBox;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    db_VendasOrigemNOTAFISCALORIGEM: TIntegerField;
    SPNFE_DEVOLVER: TUniStoredProc;
    ds_VendasDevolucao: TDataSource;
    db_VendasDevolucao: TUniQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    StringField4: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    DateTimeField2: TDateTimeField;
    TimeField1: TTimeField;
    StringField5: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    StringField6: TStringField;
    IntegerField11: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    IntegerField12: TIntegerField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    DateTimeField3: TDateTimeField;
    TimeField2: TTimeField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    StringField29: TStringField;
    StringField30: TStringField;
    FloatField24: TFloatField;
    IntegerField15: TIntegerField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    DBGrid1: TDBGrid;
    BtnQuantidade: TSpeedButton;
    db_deletarRegistrosIncompletos: TUniQuery;
    ds_ViewNotaFiscal: TDataSource;
    db_ViewNotaFiscal: TUniQuery;
    db_ViewNotaFiscalItens: TUniQuery;
    frxDB_NotaFiscalItens: TfrxDBDataset;
    frxDB_NotaFiscal: TfrxDBDataset;
    frxImprimirDevolucao: TfrxReport;
    db_VendasDevolucaoDEVOLUCAOCREDITADA: TStringField;
    dbProcurarNFe: TIDBEditDialog;
      procedure BtnCancelarClick(Sender: TObject);
      procedure BitBtn1Click(Sender: TObject);
      procedure EditCodigoChange(Sender: TObject);


      { *********************************************************** }
      { *********************************************************** }

      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure FormCreate(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure db_vendasAfterOpen(DataSet: TDataSet);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);

      procedure EditCodigoProdutoKeyPress(Sender: TObject; var Key: Char);
      procedure db_VendasDevolucaoItensBeforePost(DataSet: TDataSet);
    procedure db_VendasDevolucaoItensQUANTIDADEChange(Sender: TField);
    procedure db_VendasDevolucaoItensVLR_UNITChange(Sender: TField);
    procedure db_VendasDevolucaoItensAfterPost(DataSet: TDataSet);
    procedure db_VendasDevolucaoItensAfterDelete(DataSet: TDataSet);
    procedure ExcluirItem2Click(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure db_VendasDevolucaoBeforePost(DataSet: TDataSet);
    procedure EditCodigoProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnQuantidadeClick(Sender: TObject);
    procedure EditCodigoProdutoEnter(Sender: TObject);
    procedure db_VendasOrigemAfterOpen(DataSet: TDataSet);
    procedure db_VendasOrigemAfterClose(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);

   private
      procedure AbrirGrade;
      procedure AbrirTabelas;
      procedure FecharTabelas;

      procedure Calcular_Venda;
      procedure Calcular_VendaItensDevolucao;

      procedure FinalizarNotaFiscal;
    procedure LimpaRegistros;
      { Private declarations }

   public
      { Public declarations }
   end;

var
   FrmVendaDevolucaoProdutos: TFrmVendaDevolucaoProdutos;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios, FRelEntregas,
  FBaseDados, FVendasDevolucaoGradeEditar, FVendaDevolucaoOpcaoFinalizar;

{$R *.dfm}

procedure TFrmVendaDevolucaoProdutos.FormCreate(Sender: TObject);
begin

   FrmFrameBotoes1.DataSource := ds_VendasDevolucao;

   FecharTabelas;

end;

procedure TFrmVendaDevolucaoProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_VendasOrigem.cancel;
   db_VendasItens.cancel;
   db_VendasDevolucaoItens.cancel;
   FecharTabelas;

   FreeAndNil(FrmVendaDevolucaoProdutos);


end;

procedure TFrmVendaDevolucaoProdutos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   LimpaRegistros;
end;

procedure TFrmVendaDevolucaoProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = vk_escape then
   Begin

      If (db_VendasDevolucao.state in [dsEdit, dsInsert]) then
      Begin
         BtnCancelarClick(Sender);
         abort;
      End;

      If (db_VendasItens.state in [dsEdit, dsInsert]) then
      Begin
         BtnCancelarClick(Sender);
         abort;
      End;

      close;
   end;


end;

procedure TFrmVendaDevolucaoProdutos.FrmFrameBotoes1SpbAdicionarClick
  (Sender: TObject);
begin

   LimpaRegistros;


   OpcaoVenda := '';
   wTexto[0] := 'S';
   inVenda := 0;


   dbProcurarNFe.SearchQuery.Clear;
   dbProcurarNFe.SearchQuery.Add('SELECT * FROM VIEW_NOTAFISCAL');
   dbProcurarNFe.SearchQuery.Add('WHERE');
   dbProcurarNFe.SearchQuery.Add('EMPRESA='+IntToStr(FSistema.Empresa));
   dbProcurarNFe.SearchQuery.Add('AND');
   dbProcurarNFe.SearchQuery.Add('%WHERE%');
   dbProcurarNFe.SearchQuery.Add('');

   if dbProcurarNFe.Execute=false Then
      exit;

   inVenda      := dbProcurarNFe.ResultFieldAsInteger('CODIGO');
   inNotaFiscal := dbProcurarNFe.ResultFieldAsInteger('CODIGO');


   AbrirTabelas;

   if inNotaFiscal = 0 then
   Begin
      AvisoSistema('Você não selecionou uma Nota Fiscal.');
      exit;
   End;

   SPNFE_DEVOLVER.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
   SPNFE_DEVOLVER.ParamByName('NVENDA').AsInteger     := inVenda;
   SPNFE_DEVOLVER.ParamByName('CREDITAR').AsString    := 'N';
   SPNFE_DEVOLVER.ParamByName('ACAO').AsString        := 'INSERT';
   SPNFE_DEVOLVER.ExecProc;
   SPNFE_DEVOLVER.close;

   FecharTabelas;
   db_VendasOrigem.close;
   db_VendasOrigem.sql.Clear;
   db_VendasOrigem.sql.add('SELECT * FROM VENDAS');
   db_VendasOrigem.sql.add('where');
   db_VendasOrigem.sql.add('CODIGO=:CODIGO');
   db_VendasOrigem.ParamByName('CODIGO').Asinteger    := inVenda;
   db_VendasOrigem.Open;


   db_VendasDevolucao.close;
   db_VendasDevolucao.sql.Clear;
   db_VendasDevolucao.sql.add('SELECT TOP 1 * FROM VENDAS');
   db_VendasDevolucao.sql.add('where');
   db_VendasDevolucao.sql.add('TOTAL_NF<=0 AND NOTAFISCAL<=0 ');
   db_VendasDevolucao.open;
   inNotaFiscal := db_VendasDevolucao.FieldByName('NOTAFISCALORIGEM').AsInteger;


   AbrirTabelas;

   // pegar o numero registro (ID)
   inVenda:=db_VendasDevolucao.FieldByName('CODIGO').AsInteger;

   db_VendasDevolucao.close;
   db_VendasDevolucao.sql.Clear;
   db_VendasDevolucao.sql.add('SELECT * FROM VENDAS');
   db_VendasDevolucao.sql.add('where');
   db_VendasDevolucao.sql.add('CODIGO=:CODIGO');
   db_VendasDevolucao.ParamByName('CODIGO').Asinteger := inVenda;
   db_VendasDevolucao.open;


   EditCodigoProduto.Enabled := True;
   EditCodigoProduto.Setfocus;

end;

procedure TFrmVendaDevolucaoProdutos.FrmFrameBotoes1SpbCancelarClick
  (Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   db_VendasDevolucaoItens.Cancel;

end;

procedure TFrmVendaDevolucaoProdutos.FrmFrameBotoes1SpbEditarClick
  (Sender: TObject);
begin
  If db_VendasDevolucao.FieldByName('STATUS').AsString='S' then
  begin
     avisosistema('Devolução ja foi concluida e não pode ser alterada.');
     exit;
  end;

   FrmFrameBotoes1.SpbEditarClick(Sender);
   db_VendasDevolucaoItens.Edit;

end;

procedure TFrmVendaDevolucaoProdutos.FrmFrameBotoes1SpbExcluirClick(
  Sender: TObject);
begin

  If db_VendasDevolucao.FieldByName('STATUS').AsString='S' then
  begin
     avisosistema('Devolução ja foi concluida e não pode ser excluida.');
     exit;
  end;


  FrmFrameBotoes1.SpbExcluirClick(Sender);

   db_VendasOrigem.close;
   db_VendasItens.close;

end;

procedure TFrmVendaDevolucaoProdutos.FrmFrameBotoes1SpbImprimirClick(
  Sender: TObject);
begin
    db_ViewNotaFiscal.Close;
    db_ViewNotaFiscalItens.Close;
    db_ViewNotaFiscal.open;
    db_ViewNotaFiscalItens.open;
    frxImprimirDevolucao.ShowReport;
end;

procedure TFrmVendaDevolucaoProdutos.FrmFrameBotoes1SpbSairClick
  (Sender: TObject);
begin
   FecharTabelas;
   FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmVendaDevolucaoProdutos.FrmFrameBotoes1SpbSalvarClick
  (Sender: TObject);
begin

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   If (db_VendasDevolucaoItens.state in [dsEdit, dsInsert]) then
   Begin
      db_VendasDevolucaoItens.Post;
   End;

   If db_VendasDevolucao.FieldByName('TOTAL_NF').AsFloat>0 then
      FinalizarNotaFiscal;


end;

procedure TFrmVendaDevolucaoProdutos.AbrirTabelas;
begin
   db_VendasOrigem.open;
   db_VendasItens.open;
   db_VendasDevolucao.open;
   db_VendasDevolucaoItens.open;

end;

procedure TFrmVendaDevolucaoProdutos.FecharTabelas;
begin

   OpcaoVenda := '';
   db_VendasOrigem.close;
   db_VendasItens.close;
   db_VendasDevolucaoItens.close;
   db_VendasDevolucao.close;

end;

procedure TFrmVendaDevolucaoProdutos.BitBtn1Click(Sender: TObject);
begin

   FrmRelEntregas := TFrmRelEntregas.create(self);
   FrmRelEntregas.Showmodal;

end;

procedure TFrmVendaDevolucaoProdutos.BtnCancelarClick(Sender: TObject);
begin
   db_VendasDevolucao.cancel;
   db_VendasDevolucaoItens.cancel;
   FecharTabelas;

end;

procedure TFrmVendaDevolucaoProdutos.BtnQuantidadeClick(Sender: TObject);
begin
   AbrirGrade;
end;

procedure TFrmVendaDevolucaoProdutos.Calcular_Venda;
begin

   inVenda := db_VendasDevolucao.FieldByName('CODIGO').AsInteger;

   BaseDados.SP_NFE_CALCULA.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
   BaseDados.SP_NFE_CALCULA.ParamByName('NCODIGO').AsInteger    := inVenda;
   BaseDados.SP_NFE_CALCULA.ParamByName('ACAO').AsString        := 'DEVOLVER';
   BaseDados.SP_NFE_CALCULA.ExecProc;
   BaseDados.SP_NFE_CALCULA.close;

   db_VendasDevolucao.close;
   db_VendasDevolucao.ParamByName('CODIGO').Asinteger := inVenda;
   db_VendasDevolucao.open;

   db_VendasDevolucaoItens.Close;
   db_VendasDevolucaoItens.open;


End;

procedure TFrmVendaDevolucaoProdutos.Calcular_VendaItensDevolucao;
begin

   Quantidade := 0;
   Vlr_Unit := 0;
   SubTotal := 0;
   wFloat[0] := 0;
   wFloat[1] := 0;

   Quantidade := db_VendasDevolucaoItens.FieldByName('QUANTIDADE').AsFloat;
   Vlr_Unit := db_VendasDevolucaoItens.FieldByName('VLR_UNIT').AsFloat;
   wFloat[0] := db_VendasDevolucaoItens.FieldByName('DESCONTO').AsFloat;

   // quantidade X valor Unitário=subtotal
   SubTotal := (Quantidade * Vlr_Unit);
   wFloat[1] := fncGeraPercentual(SubTotal, wFloat[0]);
   SubTotal := (SubTotal - wFloat[1]);

   Wtexto[0] := FormatFloat('##0.00', SubTotal);
   Wtexto[1] := FormatFloat('##0.00', wFloat[1]);
   SubTotal := StrToFloat(Wtexto[0]);
   wFloat[1] := StrToFloat(Wtexto[1]);

   db_VendasDevolucaoItens.FieldByName('VLR_DESCONTO').AsFloat := wFloat[1];
   db_VendasDevolucaoItens.FieldByName('VLR_TOTAL').AsFloat := SubTotal;

   Quantidade := 0;
   Vlr_Unit := 0;
   SubTotal := 0;
   wFloat[0] := 0;
   wFloat[1] := 0;

end;

procedure TFrmVendaDevolucaoProdutos.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmVendaDevolucaoProdutos.dbGrid_ProdutosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF Key = VK_F2 then
   begin
      If db_VendasDevolucao.FieldByName('STATUS').AsString='S' then
        exit;

      AbrirGrade;
   end;

end;

procedure TFrmVendaDevolucaoProdutos.db_vendasAfterOpen(DataSet: TDataSet);
begin
   FrmFrameBotoes1.SpbCancelar.Enabled := True;
end;

procedure TFrmVendaDevolucaoProdutos.db_VendasDevolucaoBeforePost(
  DataSet: TDataSet);
begin
   db_VendasDevolucao.FieldByName('EMISSAO').AsDateTime :=Date;
end;

procedure TFrmVendaDevolucaoProdutos.db_VendasDevolucaoItensAfterDelete(
  DataSet: TDataSet);
begin
   // Calcular_VendaItens;
   Calcular_Venda;

end;

procedure TFrmVendaDevolucaoProdutos.db_VendasDevolucaoItensAfterPost(
  DataSet: TDataSet);
begin
   Calcular_Venda;

   If (db_VendasDevolucao.state in [dsEdit, dsInsert]) then
   Begin
      db_VendasDevolucao.Post;
   End;

   db_VendasDevolucao.Refresh;
   db_VendasDevolucaoItens.Refresh;

end;

procedure TFrmVendaDevolucaoProdutos.db_VendasDevolucaoItensBeforePost
  (DataSet: TDataSet);
begin

   db_VendasDevolucaoItens.FieldByName('EMPRESA').AsInteger :=
     db_VendasDevolucao.FieldByName('EMPRESA').AsInteger;

   db_VendasDevolucaoItens.FieldByName('CODIGO').AsInteger :=
     db_VendasDevolucao.FieldByName('CODIGO').AsInteger;

   db_VendasDevolucaoItens.FieldByName('NOTAFISCAL').AsInteger :=
     db_VendasDevolucao.FieldByName('NOTAFISCAL').AsInteger;

   db_VendasDevolucaoItens.FieldByName('MODELO').AsString :=
     db_VendasDevolucao.FieldByName('MODELO').AsString;

   db_VendasDevolucaoItens.FieldByName('SERIE').AsString :=
     db_VendasDevolucao.FieldByName('SERIE').AsString;

   db_VendasDevolucaoItens.FieldByName('TIPONF').AsString :=
     db_VendasDevolucao.FieldByName('TIPONF').AsString;

   db_VendasDevolucaoItens.FieldByName('EMISSAO').AsDateTime :=
     db_VendasDevolucao.FieldByName('EMISSAO').AsDateTime;

   db_VendasDevolucaoItens.FieldByName('OPERACAO').AsString :=
     db_VendasDevolucao.FieldByName('OPERACAO').AsString;

   db_VendasDevolucaoItens.FieldByName('CLIENTE').AsInteger :=
     db_VendasDevolucao.FieldByName('CLIENTE').AsInteger;

   db_VendasDevolucaoItens.FieldByName('VENDEDOR').AsInteger :=
     db_VendasDevolucao.FieldByName('VENDEDOR').AsInteger;

   db_VendasDevolucaoItens.FieldByName('CFOP').AsInteger := db_VendasDevolucao.FieldByName('CFOP')
     .AsInteger;

   db_VendasDevolucaoItens.FieldByName('TABELA').AsInteger :=
     db_VendasDevolucao.FieldByName('TABELA').AsInteger;

   db_VendasDevolucaoItens.FieldByName('FORMAPAGTO').AsInteger :=
     db_VendasDevolucao.FieldByName('FORMAPAGTO').AsInteger;

   db_VendasDevolucaoItens.FieldByName('TRANSPORTADORA').AsInteger :=
     db_VendasDevolucao.FieldByName('TRANSPORTADORA').AsInteger;

   if db_VendasDevolucaoItens.FieldByName('UND').AsString='' then
      db_VendasDevolucaoItens.FieldByName('UND').AsString:='PC' ;


end;

procedure TFrmVendaDevolucaoProdutos.db_VendasDevolucaoItensQUANTIDADEChange(
  Sender: TField);
begin
  Calcular_VendaItensDevolucao;
end;

procedure TFrmVendaDevolucaoProdutos.db_VendasDevolucaoItensVLR_UNITChange(
  Sender: TField);
begin
  Calcular_VendaItensDevolucao;
end;


procedure TFrmVendaDevolucaoProdutos.db_VendasOrigemAfterClose(
  DataSet: TDataSet);
begin
   db_VendasItens.close;
end;

procedure TFrmVendaDevolucaoProdutos.db_VendasOrigemAfterOpen(
  DataSet: TDataSet);
begin
   db_VendasItens.open;
end;

procedure TFrmVendaDevolucaoProdutos.EditCodigoProdutoEnter(Sender: TObject);
begin
   If (db_VendasDevolucao.state in [dsEdit, dsInsert]) then
   Begin
      db_VendasDevolucao.Post;
   End;
end;

procedure TFrmVendaDevolucaoProdutos.EditCodigoProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   IF Key = VK_F2 then
   begin
      AbrirGrade;
   end;


end;

procedure TFrmVendaDevolucaoProdutos.EditCodigoProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin

   // db_VendasItens.FieldByName('QUANTIDADE').AsFloat;
   // codigo de barras
   If Key = #13 then
   Begin

      strProduto:= '';
      strProduto:= Uppercase(alltrim(EditCodigoProduto.Text));
      EditCodigoProduto.Text := '';

      if not db_VendasItens.locate('PRODUTO', strProduto, []) then
      begin
         AvisoSistema('Produto informado não consta na Nota Fiscal de origem');
         EditCodigoProduto.Setfocus;
         exit;
      End;

      // se já existir, adicionar, caso contrário, inserir
      If db_VendasDevolucaoItens.locate('PRODUTO', strProduto, []) = True then
      begin
         db_VendasDevolucaoItens.Edit;
      end
      Else
      begin
         db_VendasDevolucaoItens.Append;
      End;

      db_VendasDevolucaoItens.FieldByName('PRODUTO').asString     := db_VendasItens.FieldByName('PRODUTO').asString;
      db_VendasDevolucaoItens.FieldByName('DESCRICAO').asString   := db_VendasItens.FieldByName('DESCRICAO').asString;
      db_VendasDevolucaoItens.FieldByName('QUANTIDADE').AsFloat   := 0;
      db_VendasDevolucaoItens.FieldByName('VLR_UNIT').AsFloat     := db_VendasItens.FieldByName('VLR_UNIT').AsFloat;
      db_VendasDevolucaoItens.Post;


      // REPOSICIONAR NO REGISTRO EM EDIÇÃO
      db_VendasDevolucaoItens.locate('PRODUTO', strProduto, []);
      strProduto := '';
      strProduto := db_VendasDevolucaoItens.FieldByName('PRODUTO').AsString;

      AbrirGrade;
      FrmFrameBotoes1.SpbSalvar.Enabled :=True;

      EditCodigoProduto.Setfocus;


   End;

end;

procedure TFrmVendaDevolucaoProdutos.EditCodigoChange(Sender: TObject);
begin
   GRPItens.Enabled := True;
end;

procedure TFrmVendaDevolucaoProdutos.ExcluirItem2Click(Sender: TObject);
begin

   if db_VendasDevolucaoItens.IsEmpty then
   begin
      BeepCritica;
      Aviso('Não há itens para excluir');
      exit;
   end;

   if Pergunta('Excluir item selecionado?') = False then
      exit;

   db_VendasDevolucaoItens.delete;
   db_VendasDevolucaoItens.close;
   db_VendasDevolucaoItens.open;

end;

procedure TFrmVendaDevolucaoProdutos.AbrirGrade;
begin

   If (db_VendasDevolucaoItens.State in [dsedit, dsinsert]) then
   Begin
      db_VendasDevolucaoItens.Post;
   End;

   If db_VendasDevolucao.FieldByName('STATUS').AsString='S' then
   Begin
      Aviso('Esta Devolução de Venda (produtos) já foi concluida e não poderá ser alterada.');
      exit;
   End;


   if ValidaReferencia(strProduto) Then
   begin
      FrmVendasDevolucaoGradeEditar := TFrmVendasDevolucaoGradeEditar.Create(self);
      FrmVendasDevolucaoGradeEditar.ShowModal;
   end;

   EditCodigoProduto.Setfocus;

end;

procedure TFrmVendaDevolucaoProdutos.FinalizarNotaFiscal;
begin

   If db_VendasDevolucao.FieldByName('STATUS').AsString='S' then
      exit;

   If not (ds_VendasDevolucao.DataSet.state in [dsEdit, dsInsert]) then
   Begin
      ds_VendasDevolucao.DataSet.Edit;
   End;

   FrmVendaDevolucaoOpcaoFinalizar := TFrmVendaDevolucaoOpcaoFinalizar.Create(self);
   FrmVendaDevolucaoOpcaoFinalizar.PnlValorDevolucao.Caption := Concat( 'Valor da Devolução: ', FormatSettings.CurrencyString, ' ',FormatFloat('###,##0.00',db_VendasDevolucao.FieldByName('TOTAL_NF').AsFloat) );
   FrmVendaDevolucaoOpcaoFinalizar.ShowModal;

   If  (ds_VendasDevolucao.DataSet.state in [dsEdit, dsInsert]) then
   Begin
      ds_VendasDevolucao.DataSet.Post;
   End;

   if (strOpcaoDevolver='CANCELAR') or  (strOpcaoDevolver='')  Then
   begin
      avisosistema('Você cancelou a conclusão da Devolução. Este regitro ficará pendente.');
      exit;
   end;

   if pergunta('Concluir Nota Fiscal e devolver produtos ao estoque?')=false then
   begin
      avisosistema('Você cancelou a conclusão da Devolução. Este regitro ficará pendente.');
      abort;
   end;


   // se nao houver numero de nota fiscal, então gere.
   inVenda := db_VendasDevolucao.FieldByName('CODIGO').AsInteger;
   //BaseDados.GerarNumeroNotaFiscal(inVenda);

   db_VendasDevolucao.Close;
   db_VendasDevolucao.ParamByName('CODIGO').AsInteger := inVenda;
   db_VendasDevolucao.Open;


   SPNFE_DEVOLVER.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
   SPNFE_DEVOLVER.ParamByName('NVENDA').AsInteger     := inVenda;
   SPNFE_DEVOLVER.ParamByName('CREDITAR').AsString    := IfThen(strOpcaoDevolver='CREDITAR',  'S', 'N' ) ;
   SPNFE_DEVOLVER.ParamByName('ACAO').AsString        := 'DEVOLVER';
   SPNFE_DEVOLVER.ExecProc;
   SPNFE_DEVOLVER.close;


   db_VendasDevolucao.Close;
   db_VendasDevolucao.ParamByName('CODIGO').AsInteger := inVenda;
   db_VendasDevolucao.Open;

  avisosistema('Devolução concluida.');


end;


procedure TFrmVendaDevolucaoProdutos.LimpaRegistros;
begin
   db_deletarRegistrosIncompletos.ExecSQL;
end;

end.
