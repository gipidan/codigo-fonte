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

unit FFaseProducaoDefeito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, StdCtrls, Buttons, ExtCtrls, Mask, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB, MemDS, DBAccess, Uni, DBCtrls,
  ComCtrls, jpeg, Classe.Global;

type
  TFrmFaseProducaoDefeito = class(TForm)
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    db_Defeito: TUniQuery;
    ProgressBar1: TProgressBar;
    ds_Defeito: TDataSource;
    gbxFaseSeguinte: TGroupBox;
    Label2: TLabel;
    EditData: TDBEdit;
    dbEditPesquisarFasesDestino: TIDBEditDialog;
    EditNomeFaseProxima: TEdit;
    EditTerceirizado: TIDBEditDialog;
    EditNomeTerceirizado: TEdit;
    Edit1: TEdit;
    EditDefeito: TIDBEditDialog;
    Label5: TLabel;
    LabeledEdit2: TDBEdit;
    GroupBox3: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    lblCor: TLabel;
    lblTamanho: TLabel;
    Label4: TLabel;
    db_DefeitoEMPRESA: TIntegerField;
    db_DefeitoCODIGO: TIntegerField;
    db_DefeitoAPROVADO: TStringField;
    db_DefeitoDATA: TDateTimeField;
    db_DefeitoREFERENCIA: TStringField;
    db_DefeitoDATAREGISTRO: TDateTimeField;
    db_DefeitoCOR_ID: TIntegerField;
    db_DefeitoCOR: TStringField;
    db_DefeitoTAMANHO_ID: TIntegerField;
    db_DefeitoTAMANHO: TStringField;
    db_DefeitoORDEM_GRADE: TStringField;
    db_DefeitoQTDEPERDAS: TIntegerField;
    db_DefeitoTERCEIRIZADO: TIntegerField;
    db_DefeitoFASE: TIntegerField;
    db_DefeitoCELULA: TIntegerField;
    db_DefeitoMAQUINA: TIntegerField;
    db_DefeitoOPERADOR: TIntegerField;
    db_DefeitoPROCESSO: TIntegerField;
    db_DefeitoTURNO: TIntegerField;
    db_DefeitoQUALIDADE: TIntegerField;
    db_DefeitoDEFEITO: TIntegerField;
    db_DefeitoOBSERVACAO: TStringField;
    IDBEditDialog1: TIDBEditDialog;
    Edit2: TEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure db_DefeitoBeforeOpen(DataSet: TDataSet);
    procedure db_DefeitoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure db_DefeitoQTDEPERDASChange(Sender: TField);
  private
    { Private declarations }
  public
    procedure prcSalvar;
    { Public declarations }
  end;

var
  FrmFaseProducaoDefeito: TFrmFaseProducaoDefeito;

  lbPermiteDeletar  : Boolean;


implementation

uses FPrincipal, Biblioteca, Global, SQLServer, FFaseProducao,
  FFaseProducaoTransferirFaseGrade;

{$R *.dfm}


procedure TFrmFaseProducaoDefeito.BtnCancelarClick(Sender: TObject);
begin
   nQuantidadeDigitada :=0;
   close;

end;

procedure TFrmFaseProducaoDefeito.BtnOkClick(Sender: TObject);
begin
   prcSalvar;

   if pergunta('Deseja realmente concluir a Transferencia de fase?')=false then
      exit;


   lbPermiteDeletar :=False;
   nQuantidadeDigitada :=db_Defeito.FieldByName('QTDEPERDAS').AsInteger;

   AvisoSistema('Transferencia concluida com sucesso');

   close;

end;

procedure TFrmFaseProducaoDefeito.db_DefeitoBeforeOpen(
  DataSet: TDataSet);
begin
   db_Defeito.ParamByName('EMPRESA').AsInteger :=FSistema.Empresa;
   db_Defeito.ParamByName('CODIGO').AsInteger  :=nOrdemProducao;
end;

procedure TFrmFaseProducaoDefeito.db_DefeitoBeforePost(
  DataSet: TDataSet);
begin
   db_Defeito.FieldByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_Defeito.FieldByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_Defeito.FieldByName('APROVADO').AsString   :=  prcOrdemProducaoItens_retCampo(nOrdemProducao,'APROVADO');
   db_Defeito.FieldByName('DATA').AsDateTime     :=  StrToDate( prcOrdemProducaoItens_retCampo(nOrdemProducao,'DATA') );
   db_Defeito.FieldByName('REFERENCIA').AsString :=  strReferencia;
end;

procedure TFrmFaseProducaoDefeito.db_DefeitoQTDEPERDASChange(Sender: TField);
begin
   if (db_Defeito.FieldByName('QTDEPERDAS').AsInteger > FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('QTDE_PRODUZIR').AsInteger) then
   begin
      Erro('A quantidade que voce esta tentando informar como Defeito � maior que a quantidade disponivel.');
      db_Defeito.Cancel;
      Abort;
   end;

end;

procedure TFrmFaseProducaoDefeito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


  {Clicando no bot�o "Gravar..." a variavel lbPermiteDeletar � configurada
   para False (do qual nao permitir� deletar o registro ao sair do formulario)
   Mas se clicar em Cancelar ou no X do formulario, significa que o usu�rio
  desistou e deseja cancelar/deletar o que fez.}

  if lbPermiteDeletar then
  begin
     nQuantidadeDigitada :=0;

     if not db_Defeito.IsEmpty then
         db_Defeito.Delete;
  end;

  db_Defeito.Close;


  Action :=Cafree;

end;

procedure TFrmFaseProducaoDefeito.FormCreate(Sender: TObject);
begin
   lblCor.Caption       := '['+UpperCase( FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('COR').AsString)+']';
   lblTamanho.Caption   := '['+UpperCase(  FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('TAMANHO').AsString)+']';
   db_Defeito.Open;
end;

procedure TFrmFaseProducaoDefeito.FormShow(Sender: TObject);
begin

   lbPermiteDeletar :=True;

   if not db_Defeito.Active then
      db_Defeito.Open;

   db_Defeito.Append;
   db_Defeito.FieldByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_Defeito.FieldByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_Defeito.FieldByName('APROVADO').AsString   :=  prcOrdemProducaoItens_retCampo(nOrdemProducao,'APROVADO');
   db_Defeito.FieldByName('DATA').AsDateTime     :=  StrToDate( prcOrdemProducaoItens_retCampo(nOrdemProducao,'DATA') );
   db_Defeito.FieldByName('FASE').AsInteger      :=  nFaseOrigem;
   db_Defeito.FieldByName('REFERENCIA').AsString :=  strReferencia;

   db_Defeito.FieldByName('COR_ID').AsInteger     :=  FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('COR_ID').AsInteger;
   db_Defeito.FieldByName('TAMANHO_ID').AsInteger :=  FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('TAMANHO_ID').AsInteger;

   db_Defeito.FieldByName('COR').AsString        :=   FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('COR').AsString;
   db_Defeito.FieldByName('TAMANHO').AsString    :=   FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('TAMANHO').AsString;
   db_Defeito.FieldByName('DATAREGISTRO').AsDateTime  :=  Date;

   db_Defeito.Post;

   EditData.SetFocus;

end;

procedure TFrmFaseProducaoDefeito.prcSalvar;
begin
   if (db_Defeito.State in [dsedit,dsinsert]) then
      db_Defeito.Post;
end;



end.
