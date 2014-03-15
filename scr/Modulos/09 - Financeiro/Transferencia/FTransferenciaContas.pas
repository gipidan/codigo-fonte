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

unit FTransferenciaContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, DB, MemDS, DBAccess, Uni, FFrameBotoes, ExtCtrls,
  ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, StdCtrls,
  Mask, DBCtrls, Buttons;

type
  TFrmTransferenciaContas = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    db_Transferencias: TUniQuery;
    ds_Transferencias: TDataSource;
    FrmFrameBotoes1: TFrmFrameBotoes;
    db_TransferenciasCODIGO: TIntegerField;
    db_TransferenciasDATA: TDateTimeField;
    db_TransferenciasHISTORICO: TStringField;
    db_TransferenciasPLN_CONTA: TStringField;
    db_TransferenciasDOCUMENTO: TStringField;
    db_TransferenciasCONTACAIXAORIGEM: TIntegerField;
    db_TransferenciasCONTACAIXADESTINO: TIntegerField;
    db_TransferenciasCONTABANCOORIGEM: TIntegerField;
    db_TransferenciasCONTABANCODESTINO: TIntegerField;
    db_TransferenciasVALOR: TFloatField;
    GroupBox1: TGroupBox;
    EditNomeContaCaixaDestino: TEdit;
    ContaProcurar: TIDBEditDialog;
    EditContaCorrenteDestino: TEdit;
    EditConta_Credito: TIDBEditDialog;
    GroupBox2: TGroupBox;
    EditNomeContaCaixaOrigem: TEdit;
    IDBEditDialog1: TIDBEditDialog;
    EditContaCorrenteOrigem: TEdit;
    IDBEditDialog2: TIDBEditDialog;
    db_TransferenciasTIPO: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    GrupoEfetivar: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    db_CtrlBancario: TUniQuery;
    db_CAIXA: TUniQuery;
    db_TransferenciasEFETIVADO: TStringField;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure db_TransferenciasNewRecord(DataSet: TDataSet);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure db_TransferenciasAfterScroll(DataSet: TDataSet);
    procedure db_TransferenciasBeforeInsert(DataSet: TDataSet);
  private
    procedure ProtegerCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTransferenciaContas: TFrmTransferenciaContas;

implementation

uses FPrincipal, Biblioteca, SQLServer, Global;

{$R *.dfm}

procedure TFrmTransferenciaContas.BitBtn1Click(Sender: TObject);
begin

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   if pergunta('Confirma a tranfer�ncia de valores')=false then
      exit;

   if db_Transferencias.FieldByName('TIPO').AsString='BANCO->BANCO' Then
   begin
      db_CtrlBancario.Close;
      db_CtrlBancario.Open;

      // primeiro, lan�ar debito
      db_CtrlBancario.Append;
      db_CtrlBancario.FieldByName('DATA').AsDateTime         := db_Transferencias.FieldByName('DATA').AsDateTime;
      db_CtrlBancario.FieldByName('DOCUMENTO').AsString      := db_Transferencias.FieldByName('DOCUMENTO').AsString;
      db_CtrlBancario.FieldByName('CTA_CORRENTE').AsInteger  := db_Transferencias.FieldByName('CONTABANCOORIGEM').AsInteger;
      db_CtrlBancario.FieldByName('DC').AsString             :='DEBITO';
      db_CtrlBancario.FieldByName('HISTORICO').AsString      :='PROVENIENTE DE TRANSFERENCIA - CONTA DESTINO: '+(EditContaCorrenteDestino.Text);
      db_CtrlBancario.FieldByName('VLR_DEBITO').AsFloat      := db_Transferencias.FieldByName('VALOR').AsFloat;
      db_CtrlBancario.Post;


      // depois, lan�ar credito
      db_CtrlBancario.Append;
      db_CtrlBancario.FieldByName('DATA').AsDateTime         := db_Transferencias.FieldByName('DATA').AsDateTime;
      db_CtrlBancario.FieldByName('DOCUMENTO').AsString      := db_Transferencias.FieldByName('DOCUMENTO').AsString;
      db_CtrlBancario.FieldByName('CTA_CORRENTE').AsInteger  := db_Transferencias.FieldByName('CONTABANCODESTINO').AsInteger;
      db_CtrlBancario.FieldByName('DC').AsString             :='CREDITO';
      db_CtrlBancario.FieldByName('HISTORICO').AsString      :='PROVENIENTE DE TRANSFERENCIA - CONTA ORIGEM: '+(EditContaCorrenteOrigem.Text);
      db_CtrlBancario.FieldByName('VLR_CREDITO').AsFloat     := db_Transferencias.FieldByName('VALOR').AsFloat;
      db_CtrlBancario.Post;

      db_CtrlBancario.Close;
   end;

   if db_Transferencias.FieldByName('TIPO').AsString='CAIXA->CAIXA' Then
   begin
      db_CAIXA.Close;
      db_CAIXA.Open;

      // primeiro, lan�ar debito
      db_CAIXA.Append;
      db_CAIXA.FieldByName('DATA').AsDateTime         := db_Transferencias.FieldByName('DATA').AsDateTime;
      db_CAIXA.FieldByName('DOCUMENTO').AsString      := db_Transferencias.FieldByName('DOCUMENTO').AsString;
      db_CAIXA.FieldByName('CONTACAIXA').AsInteger    := db_Transferencias.FieldByName('CONTACAIXAORIGEM').AsInteger;
      db_CAIXA.FieldByName('DC').AsString             :='DEBITO';
      db_CAIXA.FieldByName('HISTORICO').AsString      :='PROVENIENTE DE TRANSFERENCIA - CONTA CAIXA DESTINO: '+(EditNomeContaCaixaDestino.Text);
      db_CAIXA.FieldByName('VLR_DEBITO').AsFloat      := db_Transferencias.FieldByName('VALOR').AsFloat;
      db_CAIXA.Post;


      // depois, lan�ar credito
      db_CAIXA.Append;
      db_CAIXA.FieldByName('DATA').AsDateTime         := db_Transferencias.FieldByName('DATA').AsDateTime;
      db_CAIXA.FieldByName('DOCUMENTO').AsString      := db_Transferencias.FieldByName('DOCUMENTO').AsString;
      db_CAIXA.FieldByName('CONTACAIXA').AsInteger    := db_Transferencias.FieldByName('CONTACAIXADESTINO').AsInteger;
      db_CAIXA.FieldByName('DC').AsString             :='CREDITO';
      db_CAIXA.FieldByName('HISTORICO').AsString      :='PROVENIENTE DE TRANSFERENCIA - CONTA CAIXA ORIGEM: '+(EditNomeContaCaixaOrigem.Text);
      db_CAIXA.FieldByName('VLR_CREDITO').AsFloat     := db_Transferencias.FieldByName('VALOR').AsFloat;
      db_CAIXA.Post;

      db_CAIXA.Close;
   end;

   if db_Transferencias.FieldByName('TIPO').AsString='CAIXA->BANCO' Then
   begin

   end;

   if db_Transferencias.FieldByName('TIPO').AsString='BANCO->CAIXA' Then
   begin

   end;

   db_Transferencias.edit;
   db_Transferencias.FieldByName('EFETIVADO').AsString :='S';
   db_Transferencias.post;

   Informar('Transfer�ncia realizada com sucesso.');

end;

procedure TFrmTransferenciaContas.db_TransferenciasAfterScroll(
  DataSet: TDataSet);
begin
   ProtegerCampos;
end;

procedure TFrmTransferenciaContas.db_TransferenciasBeforeInsert(
  DataSet: TDataSet);
begin
   ProtegerCampos;

end;

procedure TFrmTransferenciaContas.db_TransferenciasNewRecord(DataSet: TDataSet);
begin
   ProtegerCampos;
   db_Transferencias.FieldByName('DATA').AsDateTime := Date;
   db_Transferencias.FieldByName('TIPO').AsString   :='BANCO->BANCO';
end;

procedure TFrmTransferenciaContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FrmPrincipal.MnuFin_TransferenciaContas.Enabled := True;
   db_Transferencias.Close;

   FreeAndNil( FrmTransferenciaContas );
end;

procedure TFrmTransferenciaContas.FormCreate(Sender: TObject);
begin
   FrmPrincipal.MnuFin_TransferenciaContas.Enabled := False;
   FrmFrameBotoes1.DataSource := ds_Transferencias;
   db_Transferencias.Open;
end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbAdicionarClick(
  Sender: TObject);
begin
  GrupoEfetivar.Enabled      := True;
  db_Transferencias.ReadOnly := False;

  FrmFrameBotoes1.SpbAdicionarClick(Sender);

end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbCancelarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbEditarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbExcluirClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmTransferenciaContas.FrmFrameBotoes1SpbSalvarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);
end;

procedure TFrmTransferenciaContas.ProtegerCampos;
begin

   exit;

   if db_Transferencias.FieldByName('EFETIVADO').AsString ='S' then
   begin
      GrupoEfetivar.Enabled      := False;
      db_Transferencias.ReadOnly := True;
   end
   else
   begin
      GrupoEfetivar.Enabled      := True;
      db_Transferencias.ReadOnly := False;
   end;

end;

end.
