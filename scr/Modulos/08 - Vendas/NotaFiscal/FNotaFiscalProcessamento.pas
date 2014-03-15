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

unit FNotaFiscalProcessamento;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids,
   ACBrNFeDANFEClass, ACBrNFe, pcnConversao, ACBrNFeUtil, DB,
   MemDS, Uni,  DBAccess, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos,
   classe.global;

type

   TFrmNotaFiscalProcessamento = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      Panel1: TPanel;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      DBGrid1: TDBGrid;
      Panel3: TPanel;
    BtnDANFE: TBitBtn;
    btnGerarPDF: TBitBtn;
    BtnSituacaoSEFAZ: TBitBtn;
    BtnCancelarNFe: TBitBtn;
    BtnInutilizarNFe: TBitBtn;
    BtnEnviarEMailNFe: TBitBtn;
    BtnProcurarNF: TBitBtn;
    dbProcurarNFe: TIDBEditDialog;
    db_Vendas_NFE: TUniQuery;
    db_Vendas_NFECODIGO: TIntegerField;
    db_Vendas_NFEEMPRESA: TIntegerField;
    db_Vendas_NFENOTAFISCAL: TIntegerField;
    db_Vendas_NFEMODELO: TStringField;
    db_Vendas_NFESERIE: TStringField;
    db_Vendas_NFETIPONF: TStringField;
    db_Vendas_NFEEMISSAO: TDateTimeField;
    db_Vendas_NFEOPERACAO: TStringField;
    db_Vendas_NFECLIENTE: TIntegerField;
    db_Vendas_NFEVENDEDOR: TIntegerField;
    db_Vendas_NFECFOP: TIntegerField;
    db_Vendas_NFETABELA: TIntegerField;
    db_Vendas_NFEFORMAPAGTO: TIntegerField;
    db_Vendas_NFETRANSPORTADORA: TIntegerField;
    db_Vendas_NFENOTAFISCALORIGEM: TIntegerField;
    db_Vendas_NFEDATA_ENTRADASAIDA: TDateTimeField;
    db_Vendas_NFETIPOPAGAMENTO: TStringField;
    db_Vendas_NFEIE_SUBSTITUTO_TRIBUTARIO: TStringField;
    db_Vendas_NFEICMS_BASECALCULO: TFloatField;
    db_Vendas_NFEICMS_VALOR: TFloatField;
    db_Vendas_NFEICMS_BASECALCULO_SUBSTITUICAO: TFloatField;
    db_Vendas_NFEICMS_BASECALCULO_SUBSTITUICAO_VALOR: TFloatField;
    db_Vendas_NFEICMS_REDUCAO: TFloatField;
    db_Vendas_NFEICMS_REDUCAO_VALOR: TFloatField;
    db_Vendas_NFEIPI_BASECALCULO: TFloatField;
    db_Vendas_NFEIPI_VALOR: TFloatField;
    db_Vendas_NFEISS: TFloatField;
    db_Vendas_NFEISS_BASECALCULO: TFloatField;
    db_Vendas_NFEISS_VALOR: TFloatField;
    db_Vendas_NFESIMPLESNACIONAL_ALIQUOTA: TFloatField;
    db_Vendas_NFESIMPLESNACIONAL_VALOR: TFloatField;
    db_Vendas_NFEVLR_FRETE: TFloatField;
    db_Vendas_NFEVLR_SEGURO: TFloatField;
    db_Vendas_NFEVLR_DESPESAS_ASSESSORIAS: TFloatField;
    db_Vendas_NFEDESCONTO: TFloatField;
    db_Vendas_NFEVLR_DESCONTO: TFloatField;
    db_Vendas_NFEVLR_RECEBIDO: TFloatField;
    db_Vendas_NFEVLR_CARTAO: TFloatField;
    db_Vendas_NFETROCO: TFloatField;
    db_Vendas_NFEVLR_CAIXA: TFloatField;
    db_Vendas_NFEFRETE: TStringField;
    db_Vendas_NFEFRETE_QUANTIDADE: TIntegerField;
    db_Vendas_NFEFRETE_ESPECIE: TStringField;
    db_Vendas_NFEFRETE_MARCA: TStringField;
    db_Vendas_NFEFRETE_NUMERO: TStringField;
    db_Vendas_NFEFRETE_PBRUTO: TFloatField;
    db_Vendas_NFEFRETE_PLIQUIDO: TFloatField;
    db_Vendas_NFEOBS1: TStringField;
    db_Vendas_NFEOBS2: TStringField;
    db_Vendas_NFETIPO_DESCONTO: TStringField;
    db_Vendas_NFEDESCONTO_ACRESCIMO: TStringField;
    db_Vendas_NFEPEDIDO: TIntegerField;
    db_Vendas_NFECONFERENCIA: TIntegerField;
    db_Vendas_NFECUPOM: TStringField;
    db_Vendas_NFEIMPRESSO: TStringField;
    db_Vendas_NFEQTDE_PRODUTOS: TIntegerField;
    db_Vendas_NFEVALOR_PRODUTOS: TFloatField;
    db_Vendas_NFETOTAL_NF: TFloatField;
    db_Vendas_NFEREGISTRODIARIO: TIntegerField;
    db_Vendas_NFEDEVOLUCAOCREDITADA: TStringField;
    db_Vendas_NFECREDITOABATIMENTO: TFloatField;
    db_Vendas_NFESTATUS: TStringField;
    DS_Vendas: TDataSource;
    MemoMSG: TMemo;
    BitBtn1: TBitBtn;
    db_Vendas_NFEHORA: TTimeField;
    db_Vendas_NFENFE_FINALIDADE: TIntegerField;
    db_Vendas_NFENFE_CERTIFICADO: TStringField;
    db_Vendas_NFENFE_ASSINADO: TStringField;
    db_Vendas_NFENFE_ASSINATURA: TStringField;
    db_Vendas_NFENFE_VALIDADO: TStringField;
    db_Vendas_NFENFE_TRANSMITIDO: TStringField;
    db_Vendas_NFENFE_DANFEIMPRESSA: TStringField;
    db_Vendas_NFENFE_SITUACAOSEFAZ: TStringField;
    db_Vendas_NFENFE_APROVADA: TStringField;
    db_Vendas_NFENFE_NFECANCELADA: TStringField;
    db_Vendas_NFENFE_RECIBO: TStringField;
    db_Vendas_NFENFE_DATATRANSMISSAO: TDateTimeField;
    db_Vendas_NFENFE_HORATRANSMISSAO: TTimeField;
    db_Vendas_NFENFE_CHAVEACESSO: TStringField;
    db_Vendas_NFENFE_PROTOCOLOUSO: TStringField;
    db_Vendas_NFENFE_SITUACAOCODIGO: TStringField;
    db_Vendas_NFENFE_LOTE: TIntegerField;
    db_Vendas_NFENFE_ARQUIVO: TStringField;
    db_Vendas_NFECANCELAMENTO_MOTIVO: TStringField;
    db_Vendas_NFECANCELAMENTO_DATA: TDateTimeField;
    db_Vendas_NFECANCELAMENTO_USUARIO: TStringField;
    db_Vendas_NFECANCELAMENTO_CODIGORETORNO: TIntegerField;
    db_Vendas_NFECANCELAMENTO_PROTOCOLO: TStringField;
    db_Vendas_NFECANCELAMENTO_SITUACAO: TStringField;
      procedure BtnSairClick(Sender: TObject);
      procedure BtnDANFEClick(Sender: TObject);
      procedure btnGerarPDFClick(Sender: TObject);
      procedure BtnSituacaoSEFAZClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure db_Vendas_NFEAfterPost(DataSet: TDataSet);
      procedure BtnCancelarNFeClick(Sender: TObject);
      procedure BtnProcurarNFClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnInutilizarNFeClick(Sender: TObject);
    procedure BtnEnviarEMailNFeClick(Sender: TObject);
    procedure db_Vendas_NFEBeforeOpen(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
   private
      { Private declarations }
      procedure FecharTabelas;
      procedure AbrirTabelas;
   public
      { Public declarations }
   end;

var
   FrmNotaFiscalProcessamento: TFrmNotaFiscalProcessamento;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, FBaseDados,
  FNotaFiscal, FNotaFiscalSituacaoSEFAZ, FNotaFiscalCancelar, Classe.Usuarios;

{$R *.dfm}

procedure TFrmNotaFiscalProcessamento.AbrirTabelas;
begin
   FrmNotaFiscal.AbrirTabelas;
   db_Vendas_NFE.Open;

end;

procedure TFrmNotaFiscalProcessamento.BtnProcurarNFClick(Sender: TObject);
begin

   dbProcurarNFe.SearchQuery.Clear;
   dbProcurarNFe.SearchQuery.Add('SELECT * FROM VIEW_NOTAFISCAL');
   dbProcurarNFe.SearchQuery.Add('WHERE');
   dbProcurarNFe.SearchQuery.Add('EMPRESA='+IntToStr(FSistema.Empresa));
   dbProcurarNFe.SearchQuery.Add('AND');
   dbProcurarNFe.SearchQuery.Add('%WHERE%');
   dbProcurarNFe.SearchQuery.Add('');

   if dbProcurarNFe.Execute then
   begin
      inVenda      := 0;
      inNotaFiscal := 0;

      FecharTabelas;
      BaseDados.db_Vendas.ParamByName('CODIGO').AsInteger := dbProcurarNFe.ResultFieldAsInteger('CODIGO');
      db_Vendas_NFE.ParamByName('CODIGO').AsInteger := dbProcurarNFe.ResultFieldAsInteger('CODIGO');
      AbrirTabelas;

      inVenda      := db_Vendas_NFE.FieldByName('CODIGO').AsInteger;
      inNotaFiscal := db_Vendas_NFE.FieldByName('NOTAFISCAL').AsInteger;
      inCliente    := db_Vendas_NFE.FieldByName('CLIENTE') .AsInteger;

      DimensionarGrid(DBGrid1,self);
   end;
   BtnDANFE.Setfocus;

end;

procedure TFrmNotaFiscalProcessamento.BtnEnviarEMailNFeClick(Sender: TObject);
var
 CC: Tstrings;
begin
   IF (db_Vendas_NFE.IsEmpty) or (db_Vendas_NFE.RecordCount<1) Then
   begin
     AvisoSistemaErro('Primeiro localize a NF (F8) para depois Cancelar');
     exit;
   end;

   if not FileExists(Trim(BaseDados.db_Vendas.FieldByName('NFE_ARQUIVO').AsString)) then
   begin
     Informar('Arquivo XML n�o foi gerado para enviar por e-mail.');
     exit;
   end;

   sUserNameEmail := LowerCase(FParametros.Empresa.Email) ;

   BaseDados.ACBrNFe1.NotasFiscais.Clear;
   BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsWideString));

   CC:=TstringList.Create;
   CC.Add('mrandrad@hotmail.com'); //especifique um email v�lido
   //CC.Add('');    //especifique um email v�lido
   BaseDados.ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(
                                              sSmtpServerName
                                            , IntToStr(nSmtpServerPort)
                                            , sSmtpServerUserName
                                            , sSmtpServerPassword
                                            , sSmtpServerUserName
                                            , LowerCase( fncBuscaClienteEmail(inCliente) )
                                            , 'NOTA FISCAL ELETRONICA ' + IntToStr(inNotaFiscal)
                                            , MemoMSG.Lines  // mensagem de texto (corpo do email)
                                            , True // SSL - Conex�o Segura
                                            , True //Enviar PDF junto
                                            , CC //Lista com emails que ser�o enviado c�pias - TStrings
                                            , nil // Lista de anexos - TStrings
                                            , False  //Pede confirma��o de leitura do email
                                            , True  //Aguarda Envio do Email(n�o usa thread)
                                            , FParametros.Empresa.NomeFantasia // Nome do Rementente
                                            , True ); // Auto TLS
   CC.Free;

end;

procedure TFrmNotaFiscalProcessamento.BtnDANFEClick(Sender: TObject);
begin
   IF (db_Vendas_NFE.IsEmpty) or (db_Vendas_NFE.RecordCount<1) Then
   begin
     AvisoSistemaErro('Primeiro localize a NF (F8) para depois Cancelar');
     exit;
   end;

   if not FileExists(Trim(BaseDados.db_Vendas.FieldByName('NFE_ARQUIVO').AsString)) then
   begin
     AvisoSistemaErro('Arquivo XML ainda n�o foi gerado.');
     exit;
   end;

   BaseDados.ACBrNFe1.NotasFiscais.Clear;
   BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(BaseDados.db_Vendas.FieldByName('NFE_ARQUIVO').AsString));
   BaseDados.prcDANFELogo;

   if BaseDados.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
   begin
      BaseDados.ACBrNFe1.WebServices.ConsultaDPEC.NFeChave :=     BaseDados.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
      BaseDados.ACBrNFe1.WebServices.ConsultaDPEC.Executar;
      BaseDados.ACBrNFe1.DANFE.ProtocoloNFe  := BaseDados.ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC + ' ' + DateTimeToStr(BaseDados.ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
   end
   else
   begin

      if BaseDados.ACBrNFe1.DANFE.ProtocoloNFe='' then
         BaseDados.ACBrNFe1.DANFE.ProtocoloNFe            := BaseDados.db_Vendas.FieldByName('NFE_PROTOCOLOUSO').AsString;

      if BaseDados.ACBrNFe1.WebServices.Retorno.Recibo='' then
         BaseDados.ACBrNFe1.WebServices.Retorno.Recibo    := BaseDados.db_Vendas.FieldByName('NFE_RECIBO').AsString;

      if BaseDados.ACBrNFe1.WebServices.Retorno.ChaveNFe='' then
         BaseDados.ACBrNFe1.WebServices.Retorno.ChaveNFe  := BaseDados.db_Vendas.FieldByName('NFE_CHAVEACESSO').AsString;
   end;

   BaseDados.ACBrNFe1.NotasFiscais.Imprimir;
   //end;

   BaseDados.db_Vendas.Edit;
   BaseDados.db_Vendas.FieldByName('NFE_DANFEIMPRESSA').AsString := 'SIM';
   BaseDados.db_Vendas.Post;
   db_Vendas_NFE.Refresh;

   AcaoUserName[0] := 'Imprimiu DANFE da Nota Fiscal Eletr�nica '+BaseDados.db_Vendas.FieldByName('NOTAFISCAL').AsString;
   FUsuario.prcLogUsuario('Processamento de Nota Fiscal Eletr�nica',AcaoUserName[0]);

end;

procedure TFrmNotaFiscalProcessamento.btnGerarPDFClick(Sender: TObject);
begin
   IF (db_Vendas_NFE.IsEmpty) or (db_Vendas_NFE.RecordCount<1) Then
   begin
     AvisoSistemaErro('Primeiro localize a NF (F8) para depois Cancelar');
     exit;
   end;

   if not FileExists(Trim(BaseDados.db_Vendas.FieldByName('NFE_ARQUIVO').AsString)) then
   begin
     AvisoSistemaErro('Arquivo XML ainda n�o foi gerado.');
     exit;
   end;


   BaseDados.prcDANFELogo;
   BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(BaseDados.db_Vendas.FieldByName('NFE_ARQUIVO').AsString));
   BaseDados.ACBrNFe1.NotasFiscais.ImprimirPDF;

   AcaoUserName[0] := 'Gerou PDF da Nota Fiscal Eletr�nica '+BaseDados.db_Vendas.FieldByName('NOTAFISCAL').AsString;
   FUsuario.prcLogUsuario('Processamento de Nota Fiscal Eletr�nica',AcaoUserName[0]);
   AvisoSistema('PDF da NF-e foi gerado com sucesso!');

end;

procedure TFrmNotaFiscalProcessamento.BtnSituacaoSEFAZClick(Sender: TObject);
begin
   IF (db_Vendas_NFE.IsEmpty) or (db_Vendas_NFE.RecordCount<1) Then
   begin
     AvisoSistemaErro('Primeiro localize a NF (F8) para depois Cancelar');
     exit;
   end;

   if not FileExists(Trim(BaseDados.db_Vendas.FieldByName('NFE_ARQUIVO').AsString)) then
   begin
     AvisoSistemaErro('Arquivo XML ainda n�o foi gerado.');
     exit;
   end;


   BaseDados.ACBrNFe1.NotasFiscais.Clear;
   if BaseDados.ACBrNFe1.Configuracoes.Certificados.NumeroSerie='' then
      BaseDados.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := BaseDados.ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
   BaseDados.ACBrNFe1.Configuracoes.WebServices.UF              := FParametros.Empresa.UF;


   //BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
   BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(BaseDados.db_Vendas.FieldByName('NFE_ARQUIVO').AsString));
   BaseDados.ACBrNFe1.Consultar;

   // LoadXML(MemoResp, WBResposta);

   FrmNotaFiscalSituacaoSEFAZ := TFrmNotaFiscalSituacaoSEFAZ.create(self);

   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Clear;
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('');
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('SITUA��O DA NOTA FICAL NA SEFAZ:');
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Chave............: ' +      BaseDados.ACBrNFe1.WebServices.Consulta.NFeChave);
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Protocolo........: ' +      BaseDados.ACBrNFe1.WebServices.Consulta.Protocolo);
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('C�digo Retorno...: ' +      IntToStr(BaseDados.ACBrNFe1.WebServices.Consulta.cStat));
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Situa��o.........: ' +      BaseDados.ACBrNFe1.WebServices.Consulta.xMotivo);

   FrmNotaFiscalSituacaoSEFAZ.Showmodal;
   AcaoUserName[0] := 'Verificou na SEFAZ situa��o da Nota Fiscal Eletr�nica '+BaseDados.db_Vendas.FieldByName('NOTAFISCAL').AsString;
   FUsuario.prcLogUsuario('Processamento de Nota Fiscal Eletr�nica',AcaoUserName[0]);

end;

procedure TFrmNotaFiscalProcessamento.BitBtn1Click(Sender: TObject);
begin
   IF (db_Vendas_NFE.IsEmpty) or (db_Vendas_NFE.RecordCount<1) Then
   begin
     AvisoSistemaErro('Primeiro localize a NF (F8) para depois Cancelar');
     exit;
   end;

   if not FileExists(Trim(BaseDados.db_Vendas.FieldByName('NFE_ARQUIVO').AsString)) then
   begin
     AvisoSistemaErro('Arquivo XML ainda n�o foi gerado.');
     exit;
   end;

   prcStatusMessage('NF-e','Validando arquivo XML',True);
   BaseDados.ACBrNFe1.NotasFiscais.Clear;
   if BaseDados.ACBrNFe1.Configuracoes.Certificados.NumeroSerie='' then
      BaseDados.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := BaseDados.ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
   BaseDados.ACBrNFe1.Configuracoes.WebServices.UF              := FParametros.Empresa.UF;
   BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(BaseDados.db_Vendas.FieldByName('NFE_ARQUIVO').AsString);
   BaseDados.ACBrNFe1.Consultar;
   prcStatusMessage('NF-e','',False);

   AvisoSistema('Arquivo XML validado com sucesso.');


end;

procedure TFrmNotaFiscalProcessamento.BtnCancelarNFeClick(Sender: TObject);
begin
   IF (db_Vendas_NFE.IsEmpty) or (db_Vendas_NFE.RecordCount<1) Then
   begin
     AvisoSistemaErro('Primeiro localize a NF (F8) para depois Cancelar');
     exit;
   end;

   If (db_Vendas_NFE.FieldByName('NFE_TRANSMITIDO').AsString <> 'SIM') then
   begin
      AvisoSistemaErro('Esta Nota Fiscal Eletr�nica n�o foi enviada para a SEFAZ. ' +
                   'N�o h� necessidade de cancelar na SEFAZ.');
      Exit;
   end;


   FUsuario.prcLogUsuario('Nota Fiscal | Cancelar','O sistema perguntou se desejava cancelar a NF-e numero ' + IntToStr(inNotaFiscal)  );

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   if pergunta('Tem certeza que deseja CANCELAR esta NF-e?')=false then
   begin
      FUsuario.prcLogUsuario('Nota Fiscal | Cancelar','Desistiu de cancelar a NF-e numero ' + IntToStr(inNotaFiscal)+ ', antes de abrir tela que solicita justificativa. '  );
      exit;
   end;

   strOpcaoCancelar :='';
   FrmNotaFiscalCancelar :=TFrmNotaFiscalCancelar.create(self);
   FrmNotaFiscalCancelar.ShowModal;

   if strSimNao='' then
   begin
      FUsuario.prcLogUsuario('Nota Fiscal | Cancelar','Desistiu de cancelar a NF-e numero ' + IntToStr(inNotaFiscal)+ ', ap�s abrir tela que solicita justificativa. '  );
      exit;
   end;

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------

   if strOpcaoCancelar='PARCIAL' then
   begin
      BaseDados.SPNFE_PROCESSAR.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
      BaseDados.SPNFE_PROCESSAR.ParamByName('NVENDA').AsInteger     := inVenda;
      BaseDados.SPNFE_PROCESSAR.ParamByName('ACAO').AsString        := 'CANCELAR';
      BaseDados.SPNFE_PROCESSAR.ExecProc;
   end;

   if strOpcaoCancelar='TUDO' then
   begin
      BaseDados.SPNFE_PROCESSAR.ParamByName('NEMPRESA').AsInteger   := FSistema.Empresa;
      BaseDados.SPNFE_PROCESSAR.ParamByName('NVENDA').AsInteger     := inVenda;
      BaseDados.SPNFE_PROCESSAR.ParamByName('ACAO').AsString        := 'CANCELARTUDO';
      BaseDados.SPNFE_PROCESSAR.ExecProc;
   end;

   // -------------------------------------------------------------------------
   // ------ Envir solicita��o de cancelamento para a SEFAZ              -----
   // -------------------------------------------------------------------------
   if BaseDados.ACBrNFe1.Configuracoes.Certificados.NumeroSerie='' then
      BaseDados.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := BaseDados.ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
   BaseDados.ACBrNFe1.Configuracoes.WebServices.UF              := FParametros.Empresa.UF;
   BaseDados.ACBrNFe1.NotasFiscais.Valida;

   BaseDados.ACBrNFe1.NotasFiscais.Clear;
   BaseDados.ACBrNFe1.NotasFiscais.LoadFromFile(Trim(db_Vendas_NFE.FieldByName('NFE_ARQUIVO').AsWideString));

   FUsuario.prcLogUsuario('Nota Fiscal | Cancelar','Comando de cancelamento foi enviado para o servidor da SEFAZ / NF-e numero ' + IntToStr(inNotaFiscal)  );

   if BaseDados.ACBrNFe1.Cancelamento(strJustificativa)=False Then
   begin

      FUsuario.prcLogUsuario('Nota Fiscal | Cancelar','N�o foi possivel cancelar NF-e numero ' + IntToStr(inNotaFiscal)
                    +sLineBreak
                    +sLineBreak
                    +'O servidor da SEFAZ retornou a seguinte mensagem: '
                    +sLineBreak
                    +BaseDados.ACBrNFe1.WebServices.Cancelamento.xMotivo
                      );
   end;

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   BaseDados.db_Vendas.Edit;
   BaseDados.db_Vendas.FieldByName('CANCELAMENTO_CODIGORETORNO').AsInteger      := BaseDados.ACBrNFe1.WebServices.Cancelamento.cStat;
   BaseDados.db_Vendas.FieldByName('CANCELAMENTO_PROTOCOLO').AsWideString       := BaseDados.ACBrNFe1.WebServices.Cancelamento.Protocolo;
   BaseDados.db_Vendas.FieldByName('CANCELAMENTO_SITUACAO').AsWideString        := BaseDados.ACBrNFe1.WebServices.Cancelamento.xMotivo;
   BaseDados.db_Vendas.FieldByName('OPERACAO').AsString                         := 'C';
   BaseDados.db_Vendas.Post;

   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   FrmNotaFiscalSituacaoSEFAZ := TFrmNotaFiscalSituacaoSEFAZ.create(self);
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Clear;
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('');
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('CANCELAMENTO DE NOTA FISCAL:');
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('C�digo Retorno...: ' +     IntToStr(BaseDados.ACBrNFe1.WebServices.Cancelamento.cStat));
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Protocolo........: ' +     BaseDados.ACBrNFe1.WebServices.Cancelamento.Protocolo);
   FrmNotaFiscalSituacaoSEFAZ.MemoDados.Lines.Add('Situa��o.........: ' +     BaseDados.ACBrNFe1.WebServices.Cancelamento.xMotivo);
   FrmNotaFiscalSituacaoSEFAZ.Showmodal;


   // -------------------------------------------------------------------------
   // ------                                                              -----
   // -------------------------------------------------------------------------
   AcaoUserName[0] := 'Cancelou a Nota Fiscal Eletr�nica '+IntToStr(inNotaFiscal);
   FUsuario.prcLogUsuario('Processamento de Nota Fiscal Eletr�nica',AcaoUserName[0]);


   avisoSistemaErro('Nota Fiscal '+IntToStr(inNotaFiscal)+' cancelada com sucesso.');

end;

procedure TFrmNotaFiscalProcessamento.BtnInutilizarNFeClick(Sender: TObject);
begin
   AcaoUserName[0] := 'Inutilizou a Nota Fiscal Eletr�nica '+IntToStr(inNotaFiscal);
   FUsuario.prcLogUsuario('Processamento de Nota Fiscal Eletr�nica',AcaoUserName[0]);

end;

procedure TFrmNotaFiscalProcessamento.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmNotaFiscalProcessamento.db_Vendas_NFEAfterPost(DataSet: TDataSet);
begin
   db_Vendas_NFE.Refresh;
end;

procedure TFrmNotaFiscalProcessamento.db_Vendas_NFEBeforeOpen(DataSet: TDataSet);
begin
   db_Vendas_NFE.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;

end;

procedure TFrmNotaFiscalProcessamento.FecharTabelas;
begin
   FrmNotaFiscal.FecharTabelas;
   db_Vendas_NFE.close;

end;

procedure TFrmNotaFiscalProcessamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   AcaoUserName[0] := 'Saiu do m�dulo Processamento de Nota Fiscal Eletr�nica' ;
   FUsuario.prcLogUsuario('Processamento de Nota Fiscal Eletr�nica',AcaoUserName[0]);
   db_Vendas_NFE.close;
end;

procedure TFrmNotaFiscalProcessamento.FormCreate(Sender: TObject);
begin
   AcaoUserName[0] := 'Acessou o m�dulo Processamento de Nota Fiscal Eletr�nica' ;
   FUsuario.prcLogUsuario('Processamento de Nota Fiscal Eletr�nica',AcaoUserName[0]);
   db_Vendas_NFE.Open;

   BtnCancelarNFe.Visible :=(fncUsuario_retCampo(nUsuario,'PERMISSAO_NOTAFISCALCANCELAR')='S');

end;

procedure TFrmNotaFiscalProcessamento.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   if Key = VK_F8 then
   begin
      BtnProcurarNFClick(Sender);
   end;

   if Key = VK_ESCAPE then
      close;

end;

end.
