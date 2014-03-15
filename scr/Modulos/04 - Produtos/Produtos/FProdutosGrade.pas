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


unit FProdutosGrade;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, ExtCtrls, DB, MemDS, Uni,
   ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
   uEstSearchDialogZeos, DBAccess;

type
   TFrmProdutosGrade = class(TForm)
      Panel1: TPanel;
      Panel2: TPanel;
      GroupBox6: TGroupBox;
      GroupBox16: TGroupBox;
      DBGrid4: TDBGrid;
      GroupBox1: TGroupBox;
      GridGradeCores: TDBGrid;
      Panel3: TPanel;
      db_GradeLista: TUniQuery;
      db_GradeListaNometamanho: TStringField;

      ds_GradeLista: TDataSource;
      EditGrade: TIDBEditDialog;
      EditNomeGrade: TEdit;
      db_Cores_Modelos: TUniQuery;

      ds_Cores_Modelos: TDataSource;
      SP_ExisteCor: TUniStoredProc;
      SP_NomeCor: TUniStoredProc;
      Button1: TButton;
      db_GradeListaCODIGO: TIntegerField;
      db_GradeListaID_TAMANHO: TIntegerField;
      db_GradeListaORDEM: TStringField;
      db_GradeListaDESCRICAO: TStringField;
      db_GradeListaTAMANHO: TStringField;
      db_Cores_ModelosCODIGO: TIntegerField;
      db_Cores_ModelosID_COR: TIntegerField;
      db_Cores_ModelosNOME: TStringField;
    dbEditPesquisarCores: TIDBEditDialog;

      procedure EditGradeChange(Sender: TObject);

      procedure GridGradeCoresEditButtonClick(Sender: TObject);

      procedure GridGradeCoresKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);

      procedure GridGradeCoresKeyPress(Sender: TObject; var Key: Char);

      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure db_Cores_ModelosBeforePost(DataSet: TDataSet);
      procedure db_Cores_ModelosID_CORChange(Sender: TField);
      procedure FormShow(Sender: TObject);
      procedure Button1Click(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmProdutosGrade: TFrmProdutosGrade;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global, Classe.Usuarios, FProdutos;

{$R *.dfm}

procedure TFrmProdutosGrade.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TFrmProdutosGrade.db_Cores_ModelosBeforePost(DataSet: TDataSet);
begin

   db_Cores_Modelos.FieldByName('CODIGO').AsInteger :=
     FrmProdutos.db_referencias.FieldByName('CODIGO').AsInteger;

end;

procedure TFrmProdutosGrade.db_Cores_ModelosID_CORChange(Sender: TField);
begin
   // envia uma requisi��o para o servidor checar se o PRODUTO digitado na grade
   // j� existe em outra linha da mesma grade
   If ExisteCor(FrmProdutos.db_referencias.FieldByName('CODIGO').AsInteger,
     db_Cores_Modelos.FieldByName('ID_COR').AsInteger) then
   begin
      BeepCritica;
      Aviso('Cor ' + db_Cores_Modelos.FieldByName('ID_COR').AsString +
        ' j� est� inclu�do na grade.');
      db_Cores_Modelos.Cancel;
      exit;
   end;

   db_Cores_Modelos.FieldByName('NOME').AsString :=
     BuscaNomeCor(db_Cores_Modelos.FieldByName('ID_COR').AsInteger);

end;

procedure TFrmProdutosGrade.EditGradeChange(Sender: TObject);
Var
   igrade: integer;

begin

   try
      igrade := StrToInt(EditGrade.text);
   except
      igrade := 0;
   end;

   db_GradeLista.close;
   db_GradeLista.ParamByName('GRADE').Clear;;
   db_GradeLista.ParamByName('GRADE').AsInteger := igrade;
   db_GradeLista.open;
   db_GradeLista.Refresh;

end;

procedure TFrmProdutosGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   FrmProdutos.FrmFrameBotoes1.SpbSalvarClick(Sender);

   db_GradeLista.close;
   db_Cores_Modelos.close;

end;

procedure TFrmProdutosGrade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_escape then
      close;

end;

procedure TFrmProdutosGrade.FormShow(Sender: TObject);
begin
   db_GradeLista.open;
   db_Cores_Modelos.open;

end;

procedure TFrmProdutosGrade.GridGradeCoresEditButtonClick(Sender: TObject);
begin

   if dbEditPesquisarCores.Execute then
   begin
      if not(db_Cores_Modelos.State  in [dsEdit, dsInsert]) then
         db_Cores_Modelos.Edit;

      db_Cores_Modelos.FieldByname('ID_COR').AsInteger :=dbEditPesquisarCores.ResultFieldAsInteger('CODIGO');
   End;

end;

procedure TFrmProdutosGrade.GridGradeCoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF Key = VK_F8 Then
   begin

     if dbEditPesquisarCores.Execute then
     begin
        if not(db_Cores_Modelos.State  in [dsEdit, dsInsert]) then
           db_Cores_Modelos.Edit;

        db_Cores_Modelos.FieldByname('ID_COR').AsInteger :=dbEditPesquisarCores.ResultFieldAsInteger('CODIGO');
     End;

   end;

end;

procedure TFrmProdutosGrade.GridGradeCoresKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

end.
