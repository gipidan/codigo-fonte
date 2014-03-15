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


unit FParametrosSistema;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, Menus, StdCtrls, ComCtrls, ImgList, Mask, DBCtrls, Db,
   ShellApi, MemDS, DBAccess, Uni, ExtDlgs, FFrameBarra, Grids, DBGrids,
  ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, AdvSpin,
  DBAdvSp, Classe.Global;

type
   TFrmParametrosSistema = class(TForm)
      Panel4: TPanel;
      BtnCancelar: TBitBtn;
      BtnSalvar: TBitBtn;
      Panel2: TPanel;
      OpenPictureDialog1: TOpenPictureDialog;
      PgParametros: TPageControl;
      Tab_DadosEmpresa: TTabSheet;
      GroupBox1: TGroupBox;
      GroupBox7: TGroupBox;
      Label5: TLabel;
      Label8: TLabel;
      Label9: TLabel;
      Label10: TLabel;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      Label19: TLabel;
      Label1: TLabel;
      Label33: TLabel;
      Label34: TLabel;
      Label48: TLabel;
      Label25: TLabel;
      EditRUA: TDBEdit;
      EditBAIRRO: TDBEdit;
      EditCEP: TDBEdit;
      EditCIDADE: TDBEdit;
      EditUF: TDBEdit;
      EditNUM_FONE: TDBEdit;
      EditFax: TDBEdit;
      EditULT_VISITA: TDBEdit;
      DBEdit1: TDBEdit;
      DBEdit21: TDBEdit;
      DBEdit22: TDBEdit;
      DBEdit27: TDBEdit;
      DBEdit12: TDBEdit;
      Tab_Alertas: TTabSheet;
      DBRadioGroup4: TDBRadioGroup;
      DBRadioGroup7: TDBRadioGroup;
      DBRadioGroup8: TDBRadioGroup;
      DBRadioGroup2: TDBRadioGroup;
      Tab_Financeiro: TTabSheet;
      GroupBox18: TGroupBox;
      Label28: TLabel;
      Label29: TLabel;
      Label30: TLabel;
      Label31: TLabel;
      Label32: TLabel;
      Label36: TLabel;
      Label37: TLabel;
      Label41: TLabel;
      DBEdit13: TDBEdit;
      DBEdit14: TDBEdit;
      DBEdit15: TDBEdit;
      DBEdit16: TDBEdit;
      DBEdit19: TDBEdit;
      Label4: TLabel;
      Label14: TLabel;
      DBEdit3: TDBEdit;
      Tab_Configurar: TTabSheet;
      GroupBox3: TGroupBox;
      db_Parametros: TUniQuery;
      DS_Parametros: TDataSource;
      DBCheckBox11: TDBCheckBox;
      DBEdit20: TDBEdit;
      Label44: TLabel;
      DBEdit23: TDBEdit;
      Label45: TLabel;
      GroupBox4: TGroupBox;
      DBRadioGroup3: TDBRadioGroup;
      Label46: TLabel;
      DBEdit24: TDBEdit;
      GroupBox9: TGroupBox;
      Label47: TLabel;
      DBRadioGroup10: TDBRadioGroup;
      DBEdit25: TDBEdit;
      GroupBox11: TGroupBox;
      Label49: TLabel;
      DBRadioGroup5: TDBRadioGroup;
      DBEdit26: TDBEdit;
      Panel1: TPanel;
      IMGLogomarca: TImage;
      BtnLogoRelatorios: TSpeedButton;
      BtnLogomarca: TSpeedButton;
      Panel3: TPanel;
      IMGLogoRelatorios: TImage;
      TabSheet1: TTabSheet;
      GroupBox6: TGroupBox;
      GroupBox2: TGroupBox;
      DBMemo1: TDBMemo;
      GroupBox5: TGroupBox;
      Label21: TLabel;
      Label22: TLabel;
      Label23: TLabel;
      GrpPreV: TGroupBox;
      GrpPreview: TLabel;
      DBRadioGroup9: TDBRadioGroup;
      FrmFrameBarra1: TFrmFrameBarra;
      SpnDigitosGrupo: TDBAdvSpinEdit;
      SpnDigitosSubGrupo: TDBAdvSpinEdit;
      SpnDigitosProduto: TDBAdvSpinEdit;
      DBRadioGroup1: TDBRadioGroup;
      GroupBox8: TGroupBox;
      Label17: TLabel;
      DBEdit2: TDBEdit;
      Label3: TLabel;
      Tab_Producao: TTabSheet;
      GroupBox12: TGroupBox;
      Label24: TLabel;
      DBLookupComboBox3: TDBLookupComboBox;
      Label42: TLabel;
      DBLookupComboBox2: TDBLookupComboBox;
      DBComboBox1: TDBComboBox;
      Label27: TLabel;
      Label6: TLabel;
      DBEdit4: TDBEdit;
      Tab_NFE: TTabSheet;
      OpenDialog1: TOpenDialog;
      GroupBox14: TGroupBox;
      DBEdit35: TDBEdit;
      Label7: TLabel;
      DBEdit36: TDBEdit;
      Label18: TLabel;
      DBEdit37: TDBEdit;
      Label58: TLabel;
      DBEdit38: TDBEdit;
      Label62: TLabel;
      DBEdit39: TDBEdit;
      Label63: TLabel;
      DBEdit40: TDBEdit;
      Label64: TLabel;
    EditNCM: TDBEdit;
    Label65: TLabel;
    GroupBox15: TGroupBox;
    Label67: TLabel;
    DBEdit41: TDBEdit;
    Label38: TLabel;
    EditAliquota: TDBEdit;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    DBEdit5: TDBEdit;
    EditNOME: TDBEdit;
    Label2: TLabel;
    Label15: TLabel;
    db_ParametrosEMPRESA: TIntegerField;
    db_ParametrosEMPRESA_NOME: TStringField;
    db_ParametrosEMPRESA_NOME_FANTASIA: TStringField;
    db_ParametrosEMPRESA_CNPJ: TStringField;
    db_ParametrosEMPRESA_IE: TStringField;
    db_ParametrosEMPRESA_IEMUNICIPAL: TStringField;
    db_ParametrosEMPRESA_ENDERECO: TStringField;
    db_ParametrosEMPRESA_BAIRRO: TStringField;
    db_ParametrosEMPRESA_COMPLEMENTO: TStringField;
    db_ParametrosEMPRESA_CEP: TStringField;
    db_ParametrosEMPRESA_FONE: TStringField;
    db_ParametrosEMPRESA_FAX: TStringField;
    db_ParametrosEMPRESA_EMAIL: TStringField;
    db_ParametrosEMPRESA_SITE: TStringField;
    db_ParametrosEMPRESA_CONTATO: TStringField;
    db_ParametrosEMPRESA_CODIGOCIDADE: TIntegerField;
    db_ParametrosEMPRESA_CIDADE: TStringField;
    db_ParametrosEMPRESA_UF: TStringField;
    db_ParametrosEMPRESA_CODIGOPAIS: TIntegerField;
    db_ParametrosEMPRESA_NOMEPAIS: TStringField;
    db_ParametrosPRODUTO_CODIFICACAO: TStringField;
    db_ParametrosPRODUTO_SEPARADOR: TStringField;
    db_ParametrosPRODUTO_GRUPO: TIntegerField;
    db_ParametrosPRODUTO_SUBGRUPO: TIntegerField;
    db_ParametrosPRODUTO_PRODUTO: TIntegerField;
    db_ParametrosPRODUTO_ESTOQUENEGATIVO: TStringField;
    db_ParametrosPRODUTO_SITUACAO_TRIBUTARIA: TStringField;
    db_ParametrosPRODUTO_CLASSIFICACAO_FISCAL: TStringField;
    db_ParametrosPRODUTO_NCM: TStringField;
    db_ParametrosFINANCEIRO_JUROS: TFloatField;
    db_ParametrosFINANCEIRO_CARTORIO: TFloatField;
    db_ParametrosFINANCEIRO_COBRANCADIAS: TIntegerField;
    db_ParametrosFINANCEIRO_VENDAVISTABAIXAR: TStringField;
    db_ParametrosFINANCEIRO_DIASBLOQUEIO: TIntegerField;
    db_ParametrosFINANCEIRO_PAGAR_LANCARCAIXA: TStringField;
    db_ParametrosFINANCEIRO_PAGAR_LANCARBANCO: TStringField;
    db_ParametrosFINANCEIRO_PAGAR_COMISSAO: TStringField;
    db_ParametrosFINANCEIRO_PAGAR_COMISSAOVENCIMENTO: TIntegerField;
    db_ParametrosFINANCEIRO_RECEBER_LANCARCAIXA: TStringField;
    db_ParametrosFINANCEIRO_RECEBER_LANCARBANCO: TStringField;
    db_ParametrosFINANCEIRO_RECEBER_CONTACAIXA: TIntegerField;
    db_ParametrosFINANCEIRO_BALCAO_LANCARCAIXA: TStringField;
    db_ParametrosALERTA_ESTOQUE: TStringField;
    db_ParametrosALERTA_CTARECEBER: TStringField;
    db_ParametrosALERTA_CTARECEBER_DIAS: TIntegerField;
    db_ParametrosALERTA_CTAPAGAR: TStringField;
    db_ParametrosALERTA_CTAPAGAR_DIAS: TIntegerField;
    db_ParametrosALERTA_PEDIDOS: TStringField;
    db_ParametrosALERTA_COBRANCA: TStringField;
    db_ParametrosALERTA_VALIDADE: TStringField;
    db_ParametrosALERTA_VALIDADE_DIAS: TIntegerField;
    db_ParametrosALERTA_PEDIDOSCOMPRAS: TStringField;
    db_ParametrosCFOP_VENDA_UF_INTERNO: TIntegerField;
    db_ParametrosCFOP_VENDA_UF_EXTERNO: TIntegerField;
    db_ParametrosCFOP_DEVOLUCAO_UF_INTERNO: TIntegerField;
    db_ParametrosCFOP_DEVOLUCAO_UF_EXTERNO: TIntegerField;
    db_ParametrosCFOP_COMPRA_UF_INTERNO: TIntegerField;
    db_ParametrosCFOP_COMPRA_UF_EXTERNO: TIntegerField;
    db_ParametrosNFE_AMBIENTE: TStringField;
    db_ParametrosNFE_TIPODANFE: TStringField;
    db_ParametrosNFE_FORMAEMISSAO: TStringField;
    db_ParametrosNFE_MODELO: TIntegerField;
    db_ParametrosNFE_SERIE: TIntegerField;
    db_ParametrosNFE_SEQUENCIA: TIntegerField;
    db_ParametrosNFE_LOTE: TIntegerField;
    db_ParametrosSISTEMA_LOGO_PRINCIPAL: TStringField;
    db_ParametrosSISTEMA_LOGO_RELATORIOS: TStringField;
    db_ParametrosCLIENTE_INATIVIDADE: TIntegerField;
    db_ParametrosCLIENTE_ATRASOPERMITIDO: TIntegerField;
    db_ParametrosVENDA_VENDEDOR: TIntegerField;
    db_ParametrosVENDA_CLIENTE: TIntegerField;
    db_ParametrosVENDA_IMPRIMEFATURA: TStringField;
    db_ParametrosPEDIDO_ENTREGA: TIntegerField;
    db_ParametrosPEDIDO_BAIXAESTOQUE: TStringField;
    db_ParametrosPEDIDO_MENSAGEM: TStringField;
    db_ParametrosEMPRESA_NUMERO: TStringField;
    GroupBox13: TGroupBox;
    db_Estados: TUniQuery;
    db_EstadosSIGLA: TStringField;
    db_EstadosNOME: TStringField;
    db_EstadosICMS: TFloatField;
    db_EstadosICMS_PFISICA: TFloatField;
    db_EstadosISS: TFloatField;
    db_EstadosIPI: TFloatField;
    db_EstadosIR: TFloatField;
    db_EstadosRETER_PIS: TStringField;
    db_EstadosRETER_COFINS: TStringField;
    db_EstadosRETER_CSLL: TStringField;
    db_EstadosRETER_INSS: TStringField;
    ds_Estados: TDataSource;
    DBGrid1: TDBGrid;
    editComissaoNomeContaCaixa: TEdit;
    editComissaoNomeCentroCusto: TEdit;
    db_ParametrosFINANCEIRO_PAGAR_COMISSAOCONTACAIXA: TIntegerField;
    db_ParametrosFINANCEIRO_PAGAR_COMISSAOCENTROCUSTO: TIntegerField;
    DCodPlano: TIDBEditDialog;
    EditNomePlanoContas: TEdit;
    db_ParametrosFINANCEIRO_PAGAR_COMISSAOPLANOCONTA: TStringField;
    EstSearchDialogZeos1: TIDBEditDialog;
    IDBEditDialog1: TIDBEditDialog;
    db_ParametrosFINANCEIRO_RECEBER_PLANOCONTAS: TStringField;
    db_ParametrosFINANCEIRO_PAGAR_CONTACAIXA: TIntegerField;
    db_ParametrosFINANCEIRO_PAGAR_PLANOCONTAS: TStringField;
    db_ParametrosCOMPRAS_PLANOCONTAS: TStringField;
    db_ParametrosCOMPRAS_CFOP: TIntegerField;
    GroupBox20: TGroupBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    IDBEditDialog3: TIDBEditDialog;
    Edit1: TEdit;
    Edit2: TEdit;
    IDBEditDialog4: TIDBEditDialog;
    GroupBox19: TGroupBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    IDBEditDialog2: TIDBEditDialog;
    ContaProcurar: TIDBEditDialog;
    EditNomeContaCaixa: TEdit;
    EditNomePlanoContasReceber: TEdit;
    GroupBox21: TGroupBox;
    Edit4: TEdit;
    DbEditCFOP: TIDBEditDialog;
    IDBEditDialog5: TIDBEditDialog;
    Edit3: TEdit;
    db_ParametrosSISTEMA_DATABASE: TDateTimeField;
    DBEdit33: TDBEdit;
    Label16: TLabel;
    GroupBox22: TGroupBox;
    IDBEditDialog6: TIDBEditDialog;
    Edit5: TEdit;
    IDBEditDialog7: TIDBEditDialog;
    Edit6: TEdit;
    Panel5: TPanel;
    DBRadioGroup12: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup11: TDBRadioGroup;
    DBRadioGroup14: TDBRadioGroup;
    db_ParametrosEMPRESA_REGIMETRIBUTARIO: TIntegerField;
    db_ParametrosEMPRESA_REGIMETRIBUTARIOALIQUOTA: TFloatField;
    DBRadioGroup15: TDBRadioGroup;
    db_ParametrosFRETEPADRAO: TIntegerField;
    db_ParametrosPRODUTO_QUALIDADEPADRAO: TIntegerField;
    db_ParametrosTERCEIRIZADO_DIAVENCIMENTO: TIntegerField;
    Edit7: TEdit;
    IDBEditDialog8: TIDBEditDialog;
    DBRadioGroup16: TDBRadioGroup;
    db_ParametrosPRODUCAOFINALIZAR: TStringField;
    TabSheet2: TTabSheet;
    GroupBox23: TGroupBox;
    DBRadioGroup13: TDBRadioGroup;
    GroupBox24: TGroupBox;
    EditCliente: TIDBEditDialog;
    EditNomeCliente: TEdit;
    EditVendedor1: TEdit;
    EditCodevendedor: TIDBEditDialog;
    GroupBox25: TGroupBox;
    Label70: TLabel;
    DBEdit42: TDBEdit;
    Label69: TLabel;
    Edit8: TEdit;
    IDBEditDialog9: TIDBEditDialog;
    Edit9: TEdit;
    IDBEditDialog10: TIDBEditDialog;
    Edit10: TEdit;
    IDBEditDialog11: TIDBEditDialog;
    db_ParametrosCOMPRAS_FORNECEDOR: TIntegerField;
      procedure ButtonGroup1Items3Click(Sender: TObject);
      procedure ButtonGroup1Items2Click(Sender: TObject);
      procedure ButtonGroup1Items1Click(Sender: TObject);
      procedure ButtonGroup1Items0Click(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure EditJornSTKeyPress(Sender: TObject; var Key: Char);
      procedure Btn_SalvarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnLogomarcaClick(Sender: TObject);
      procedure BtnLogoRelatoriosClick(Sender: TObject);
      procedure IMGLogomarcaDblClick(Sender: TObject);
      procedure IMGLogoRelatoriosDblClick(Sender: TObject);
      procedure db_Parametros_cdsBeforePost(DataSet: TDataSet);
      procedure SpnDigitosGrupoDownClick(Sender: TObject);
      procedure SpnDigitosGrupoUpClick(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure DBComboBox1ContextPopup(Sender: TObject; MousePos: TPoint;
        var Handled: Boolean);
      procedure db_ParametrosNewRecord(DataSet: TDataSet);
      procedure SpnDigitosGrupoChange(Sender: TObject);
      procedure Button1Click(Sender: TObject);
      procedure db_ParametrosAfterScroll(DataSet: TDataSet);
      procedure db_ParametrosPostError(DataSet: TDataSet; E: EDatabaseError;
        var Action: TDataAction);
    procedure db_ParametrosAfterPost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);

   private
      { Private declarations }

      Procedure MontarMascara;

   public
      { Public declarations }
   end;

var
   FrmParametrosSistema: TFrmParametrosSistema;

implementation

uses Biblioteca, FBaseDados, Global,
   Clientes, FPrincipal, MovProdutos,
   Biblioteca_pcp, FBaseDados_PCP, SQLServer,
  FControleCaixa, FControleBancario;

{$R *.DFM}

procedure TFrmParametrosSistema.FormCreate(Sender: TObject);
begin

   // PgParametros.Height          :=400;
   PgParametros.ActivePageIndex := 0;
   BtnLogomarca.Caption := 'Definir Logotipo' + #13 + #10 +
     'Papel de parede do Sistema';
   BtnLogoRelatorios.Caption := 'Logotipo NF-e' + #13 + #10 +
     '(Nota Fiscal Eletr�nica)';

   db_Parametros.Close;
   db_Parametros.ParamByName('EMPRESA').Clear;
   db_Parametros.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_Parametros.Open;

   BaseDados_PCP.db_ClassificacaoFiscal.Open;
   BaseDados_PCP.db_SituacaoTributaria.Open;

   db_Estados.Open;



end;

procedure TFrmParametrosSistema.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   db_Estados.Close;
   db_Parametros.close;
   BaseDados.db_Parametros.close;
   BaseDados.db_Parametros.open;

   BaseDados_PCP.db_ClassificacaoFiscal.close;
   BaseDados_PCP.db_SituacaoTributaria.close;

end;

procedure TFrmParametrosSistema.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

   If (db_Estados.state in [dsedit, dsinsert]) then
   Begin
      db_Estados.Post;
   End;

end;

procedure TFrmParametrosSistema.db_ParametrosNewRecord(DataSet: TDataSet);
begin

   db_Parametros.FieldByName('PRODUTO_ESTOQUENEGATIVO').AsString := 'S';
   db_Parametros.FieldByName('PEDIDO_BAIXAESTOQUE').AsString := 'N';
   db_Parametros.FieldByName('EMPRESA_CODIGOPAIS').AsInteger := 1058;
   db_Parametros.FieldByName('EMPRESA_NOMEPAIS').AsString := 'BRASIL';

end;

procedure TFrmParametrosSistema.db_ParametrosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   raise Exception.Create(E.Message);

end;

procedure TFrmParametrosSistema.EditJornSTKeyPress(Sender: TObject; var Key: Char);
begin
   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;
End;

procedure TFrmParametrosSistema.Btn_SalvarClick(Sender: TObject);
Begin

   If (db_Parametros.state in [dsEdit, dsInsert]) then
   Begin
      db_Parametros.Post;
   End;

   BaseDados.db_empresa.Refresh;
   FParametrosAtualizaDados;

   close;

End;

procedure TFrmParametrosSistema.Button1Click(Sender: TObject);
begin
   db_Parametros.Edit;
end;

procedure TFrmParametrosSistema.ButtonGroup1Items0Click(Sender: TObject);
begin
   PgParametros.ActivePage := Tab_DadosEmpresa;
end;

procedure TFrmParametrosSistema.ButtonGroup1Items1Click(Sender: TObject);
begin
   PgParametros.ActivePage := Tab_Configurar;

end;

procedure TFrmParametrosSistema.ButtonGroup1Items2Click(Sender: TObject);
begin
   PgParametros.ActivePage := Tab_Alertas;
end;

procedure TFrmParametrosSistema.ButtonGroup1Items3Click(Sender: TObject);
begin
   PgParametros.ActivePage := Tab_Financeiro;
end;

procedure TFrmParametrosSistema.BtnCancelarClick(Sender: TObject);
begin
   db_Parametros.Cancel;

   close;

end;

procedure TFrmParametrosSistema.DBComboBox1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
   MontarMascara;
end;

procedure TFrmParametrosSistema.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
      Key := #0;

end;

procedure TFrmParametrosSistema.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_HOME  then
   begin
     If pergunta('Acessar site do IBGE para Consulta de Munic�pio?')=false Then
        exit;
     strURL := 'http://www.ibge.gov.br/home/geociencias/areaterritorial/area.shtm';
     ShellExecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);
   end;
end;

procedure TFrmParametrosSistema.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmParametrosSistema.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = VK_ESCAPE then
      BtnCancelarClick(Sender);
end;

procedure TFrmParametrosSistema.FormShow(Sender: TObject);
begin
   MontarMascara;

end;

procedure TFrmParametrosSistema.IMGLogomarcaDblClick(Sender: TObject);
begin

   If not(db_Parametros.state in [dsEdit, dsInsert]) then
      db_Parametros.Edit;

   db_Parametros.FieldByName('SISTEMA_LOGO_PRINCIPAL').AsString := '';

   If (db_Parametros.state in [dsEdit, dsInsert]) then
   Begin
      db_Parametros.Post;
   End;

   IMGLogomarca.Picture.LoadFromFile
     (db_Parametros.FieldByName('SISTEMA_LOGO_PRINCIPAL').AsString);

end;

procedure TFrmParametrosSistema.IMGLogoRelatoriosDblClick(Sender: TObject);
begin

   If not(db_Parametros.state in [dsEdit, dsInsert]) then
      db_Parametros.Edit;

   db_Parametros.FieldByName('SISTEMA_LOGO_RELATORIOS').AsString := '';
   IMGLogoRelatorios.Picture.LoadFromFile
     (db_Parametros.FieldByName('SISTEMA_LOGO_RELATORIOS').AsString);

   If (db_Parametros.state in [dsEdit, dsInsert]) then
   Begin
      db_Parametros.Post;
   End;

end;

procedure TFrmParametrosSistema.MontarMascara;
begin

   If (db_Parametros.state in [dsEdit, dsInsert]) then
   Begin
      db_Parametros.Post;
   End;
   db_Parametros.Refresh;

   GrpPreview.Caption := MontarCodigoProduto('X', 'X', 'X');

   Update;

end;

procedure TFrmParametrosSistema.SpnDigitosGrupoChange(Sender: TObject);
begin
   // MontarMascara;
end;

procedure TFrmParametrosSistema.SpnDigitosGrupoDownClick(Sender: TObject);
begin
   MontarMascara;
end;

procedure TFrmParametrosSistema.SpnDigitosGrupoUpClick(Sender: TObject);
begin
   MontarMascara;
end;

procedure TFrmParametrosSistema.BtnLogomarcaClick(Sender: TObject);
begin

   If OpenPictureDialog1.Execute then
   begin

      If not(db_Parametros.state in [dsEdit]) then
         db_Parametros.Edit;

      db_Parametros.FieldByName('SISTEMA_LOGO_PRINCIPAL').AsString :=
        OpenPictureDialog1.FileName;

      If (db_Parametros.state in [dsEdit, dsInsert]) then
      Begin
         db_Parametros.Post;
      End;

      db_Parametros.close;
      db_Parametros.open;

   End;

end;

procedure TFrmParametrosSistema.BtnLogoRelatoriosClick(Sender: TObject);
begin

   If OpenPictureDialog1.Execute then
   begin
      If not(db_Parametros.state in [dsEdit]) then
         db_Parametros.Edit;

      db_Parametros.FieldByName('SISTEMA_LOGO_RELATORIOS').AsString :=
        OpenPictureDialog1.FileName;

      If (db_Parametros.state in [dsEdit, dsInsert]) then
      Begin
         db_Parametros.Post;
      End;

      db_Parametros.close;
      db_Parametros.open;

   end;

end;

procedure TFrmParametrosSistema.db_ParametrosAfterPost(DataSet: TDataSet);
begin
   db_Parametros.ParamByName('EMPRESA').AsInteger:=db_Parametros.FieldByName('EMPRESA').AsInteger;

end;

procedure TFrmParametrosSistema.db_ParametrosAfterScroll(DataSet: TDataSet);
begin

   SpnDigitosGrupo.Value := db_Parametros.FieldByName('PRODUTO_GRUPO')
     .AsInteger;
   SpnDigitosSubGrupo.Value := db_Parametros.FieldByName('PRODUTO_SUBGRUPO')
     .AsInteger;
   SpnDigitosProduto.Value := db_Parametros.FieldByName('PRODUTO_PRODUTO')
     .AsInteger;

   GrpPreview.Caption := MontarCodigoProduto('X', 'X', 'X');

   Try
      IMGLogomarca.Picture.LoadFromFile
        (db_Parametros.FieldByName('SISTEMA_LOGO_PRINCIPAL').AsString);
   Except
   End;

   Try
      IMGLogoRelatorios.Picture.LoadFromFile
        (db_Parametros.FieldByName('SISTEMA_LOGO_RELATORIOS').AsString);
   Except
   End;

end;

procedure TFrmParametrosSistema.db_Parametros_cdsBeforePost(DataSet: TDataSet);
begin

   db_Parametros.FieldByName('EMPRESA').AsInteger := FSistema.Empresa;

   if (db_Parametros.FieldByName('PRODUTO_ESTOQUENEGATIVO').AsString = 'N') or
     (db_Parametros.FieldByName('PRODUTO_ESTOQUENEGATIVO').IsNull) Then
   begin
      BeepCritica;
      FormMensagem('Voc� est� permitindo venda sem estoque. Cuidado!' + #13 +
        #10 + #13 + #10 + 'Verifique na guia "Estoque"');
   end;

end;

end.
