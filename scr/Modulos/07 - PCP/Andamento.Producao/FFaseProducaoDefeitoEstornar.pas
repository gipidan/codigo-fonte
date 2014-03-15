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

unit FFaseProducaoDefeitoEstornar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, StdCtrls, Buttons, ExtCtrls, Mask, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB, MemDS, DBAccess, Uni, DBCtrls,
  ComCtrls, jpeg, Grids, DBGrids, Classe.Global;

type
  TFrmFaseProducaoDefeitoEstornar = class(TForm)
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox1: TGroupBox;
    db_Defeito: TUniQuery;
    ProgressBar1: TProgressBar;
    ds_Defeito: TDataSource;
    GroupBox3: TGroupBox;
    Image1: TImage;
    DBGrid1: TDBGrid;
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
    Panel2: TPanel;
    editQuantidade: TLabeledEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure db_DefeitoBeforeOpen(DataSet: TDataSet);
    procedure db_DefeitoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure db_DefeitoAfterOpen(DataSet: TDataSet);
    procedure db_DefeitoAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure prcSalvar;
    { Public declarations }
  end;

var
  FrmFaseProducaoDefeitoEstornar: TFrmFaseProducaoDefeitoEstornar;



implementation

uses FPrincipal, Biblioteca, Global, SQLServer, FFaseProducao,
  FFaseProducaoTransferirFaseGrade;

{$R *.dfm}


procedure TFrmFaseProducaoDefeitoEstornar.BtnCancelarClick(Sender: TObject);
begin
   nQuantidadeDigitada :=0;
   close;

end;

procedure TFrmFaseProducaoDefeitoEstornar.BtnOkClick(Sender: TObject);
begin
   prcSalvar;


   nQuantidadeDigitada := StrToIntDef(editQuantidade.Text ,0);

   if nQuantidadeDigitada<1 then
   begin
      Erro('Informe a quantidade que deseja estornar.');
      editQuantidade.SetFocus;
      exit;
   end;

   if  (db_Defeito.IsEmpty)  then
   begin
      Erro('N�o ha registro para ser estornado.');
      exit;
   end;

   if (nQuantidadeDigitada > FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('QTDE_DEFEITO').AsInteger) then
   begin
      Erro('A quantidade que voce esta tentando estornar � maior que a quantidade real.');
      exit;
   end;



   if pergunta('Deseja realmente estornar este defeito?')=false then
      exit;



   // se a quantidade informada for a mesma que da tabela, significa que esta estornando tudo
   // diante disso deletar o registro para evitar qualquer outra movimenta��o

   // se a quantidade informada for menor que da tabela, entao diminuir.
   if  (nQuantidadeDigitada<db_Defeito.FieldByName('QTDEPERDAS').AsInteger) then
   begin
      db_Defeito.edit;
      db_Defeito.FieldByName('QTDEPERDAS').AsInteger := db_Defeito.FieldByName('QTDEPERDAS').AsInteger - nQuantidadeDigitada;
      db_Defeito.post;
   end;

   if  (nQuantidadeDigitada=db_Defeito.FieldByName('QTDEPERDAS').AsInteger) then
   begin
      db_Defeito.Delete;
   end;


   AvisoSistema('Defeito estornado com sucesso');

   close;

end;

procedure TFrmFaseProducaoDefeitoEstornar.db_DefeitoAfterOpen(
  DataSet: TDataSet);
begin
   editQuantidade.Text := IntToStr( StrToIntDef(db_Defeito.FieldByName('QTDEPERDAS').AsString,0) );

end;

procedure TFrmFaseProducaoDefeitoEstornar.db_DefeitoAfterScroll(
  DataSet: TDataSet);
begin
   editQuantidade.Text := IntToStr( StrToIntDef(db_Defeito.FieldByName('QTDEPERDAS').AsString,0) );

end;

procedure TFrmFaseProducaoDefeitoEstornar.db_DefeitoBeforeOpen(
  DataSet: TDataSet);
begin
   db_Defeito.ParamByName('EMPRESA').AsInteger :=FSistema.Empresa;
   db_Defeito.ParamByName('CODIGO').AsInteger  :=nOrdemProducao;
end;

procedure TFrmFaseProducaoDefeitoEstornar.db_DefeitoBeforePost(
  DataSet: TDataSet);
begin
   db_Defeito.FieldByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_Defeito.FieldByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_Defeito.FieldByName('APROVADO').AsString   :=  prcOrdemProducaoItens_retCampo(nOrdemProducao,'APROVADO');
   db_Defeito.FieldByName('DATA').AsDateTime     :=  StrToDate( prcOrdemProducaoItens_retCampo(nOrdemProducao,'DATA') );
   db_Defeito.FieldByName('REFERENCIA').AsString :=  strReferencia;
end;

procedure TFrmFaseProducaoDefeitoEstornar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  db_Defeito.Close;
  Action :=Cafree;

end;

procedure TFrmFaseProducaoDefeitoEstornar.FormCreate(Sender: TObject);
begin
   nQuantidadeDigitada :=0;
   db_Defeito.Open;
end;

procedure TFrmFaseProducaoDefeitoEstornar.FormShow(Sender: TObject);
begin

   db_Defeito.close;
   db_Defeito.ParamByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_Defeito.ParamByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_Defeito.Open;

   DBGrid1.SetFocus;

end;

procedure TFrmFaseProducaoDefeitoEstornar.prcSalvar;
begin
   if (db_Defeito.State in [dsedit,dsinsert]) then
      db_Defeito.Post;
end;



end.
