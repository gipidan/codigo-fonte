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

unit FFaseProducaoPerdaEstornar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, StdCtrls, Buttons, ExtCtrls, Mask, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB, MemDS, DBAccess, Uni, DBCtrls,
  ComCtrls, jpeg, Grids, DBGrids, Classe.Global;

type
  TFrmFaseProducaoPerdaEstornar = class(TForm)
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox1: TGroupBox;
    db_Perda: TUniQuery;
    ProgressBar1: TProgressBar;
    ds_Perda: TDataSource;
    GroupBox3: TGroupBox;
    Image1: TImage;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    editQuantidade: TLabeledEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure db_PerdaBeforeOpen(DataSet: TDataSet);
    procedure db_PerdaBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure db_PerdaAfterOpen(DataSet: TDataSet);
    procedure db_PerdaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure prcSalvar;
    { Public declarations }
  end;

var
  FrmFaseProducaoPerdaEstornar: TFrmFaseProducaoPerdaEstornar;



implementation

uses FPrincipal, Biblioteca, Global, SQLServer, FFaseProducao,
  FFaseProducaoTransferirFaseGrade;

{$R *.dfm}


procedure TFrmFaseProducaoPerdaEstornar.BtnCancelarClick(Sender: TObject);
begin
   nQuantidadeDigitada :=0;
   close;

end;

procedure TFrmFaseProducaoPerdaEstornar.BtnOkClick(Sender: TObject);
begin
   prcSalvar;


   nQuantidadeDigitada := StrToIntDef(editQuantidade.Text ,0);

   if nQuantidadeDigitada<1 then
   begin
      Erro('Informe a quantidade que deseja estornar.');
      editQuantidade.SetFocus;
      exit;
   end;

   if  (db_Perda.IsEmpty)  then
   begin
      Erro('N�o ha registro para ser estornado.');
      exit;
   end;

   if (nQuantidadeDigitada > FrmFaseProducao.db_ReferenciasFaseGrade.FieldByName('QTDE_PERDA').AsInteger) then
   begin
      Erro('A quantidade que voce esta tentando estornar � maior que a quantidade real.');
      exit;
   end;



   if pergunta('Deseja realmente estornar este defeito?')=false then
      exit;



   // se a quantidade informada for a mesma que da tabela, significa que esta estornando tudo
   // diante disso deletar o registro para evitar qualquer outra movimenta��o

   // se a quantidade informada for menor que da tabela, entao diminuir.
   if  (nQuantidadeDigitada<db_Perda.FieldByName('QTDEPERDAS').AsInteger) then
   begin
      db_Perda.edit;
      db_Perda.FieldByName('QTDEPERDAS').AsInteger := db_Perda.FieldByName('QTDEPERDAS').AsInteger - nQuantidadeDigitada;
      db_Perda.post;
   end;

   if  (nQuantidadeDigitada=db_Perda.FieldByName('QTDEPERDAS').AsInteger) then
   begin
      db_Perda.Delete;
   end;


   AvisoSistema('Defeito estornado com sucesso');

   close;

end;

procedure TFrmFaseProducaoPerdaEstornar.db_PerdaAfterOpen(
  DataSet: TDataSet);
begin
   editQuantidade.Text := IntToStr( StrToIntDef(db_Perda.FieldByName('QTDEPERDAS').AsString,0) );

end;

procedure TFrmFaseProducaoPerdaEstornar.db_PerdaAfterScroll(
  DataSet: TDataSet);
begin
   editQuantidade.Text := IntToStr( StrToIntDef(db_Perda.FieldByName('QTDEPERDAS').AsString,0) );

end;

procedure TFrmFaseProducaoPerdaEstornar.db_PerdaBeforeOpen(
  DataSet: TDataSet);
begin
   db_Perda.ParamByName('EMPRESA').AsInteger :=FSistema.Empresa;
   db_Perda.ParamByName('CODIGO').AsInteger  :=nOrdemProducao;
end;

procedure TFrmFaseProducaoPerdaEstornar.db_PerdaBeforePost(
  DataSet: TDataSet);
begin
   db_Perda.FieldByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_Perda.FieldByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_Perda.FieldByName('APROVADO').AsString   :=  prcOrdemProducaoItens_retCampo(nOrdemProducao,'APROVADO');
   db_Perda.FieldByName('DATA').AsDateTime     :=  StrToDate( prcOrdemProducaoItens_retCampo(nOrdemProducao,'DATA') );
   db_Perda.FieldByName('REFERENCIA').AsString :=  strReferencia;
end;

procedure TFrmFaseProducaoPerdaEstornar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  db_Perda.Close;
  Action :=Cafree;

end;

procedure TFrmFaseProducaoPerdaEstornar.FormCreate(Sender: TObject);
begin
   nQuantidadeDigitada :=0;
   db_Perda.Open;
end;

procedure TFrmFaseProducaoPerdaEstornar.FormShow(Sender: TObject);
begin

   db_Perda.close;
   db_Perda.ParamByName('EMPRESA').AsInteger   :=  FSistema.Empresa;
   db_Perda.ParamByName('CODIGO').AsInteger    :=  nOrdemProducao;
   db_Perda.Open;

   DBGrid1.SetFocus;

end;

procedure TFrmFaseProducaoPerdaEstornar.prcSalvar;
begin
   if (db_Perda.State in [dsedit,dsinsert]) then
      db_Perda.Post;
end;



end.
