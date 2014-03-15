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


Unit FPlanoContas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Menus, Mask, DBCtrls, DB, BTOdeum, Grids,
   DBGrids, ComCtrls, MemDS, Uni, FFrameBarra,
   FFrameBotoes, DBAccess, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit,
  uEstSearchDialogZeos;

type
   TFrmPlanoContas = class(TForm)
      PagePlanoContas: TPageControl;
      Tab_registros: TTabSheet;
      DBGrid_Principal: TDBGrid;
      Tab_Editar: TTabSheet;
      GroupBox1: TGroupBox;
      DBNavigator1: TDBNavigator;
      PainelClasse: TPanel;
      GroupBox2: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      EditCodigo: TDBEdit;
      EditNome: TDBEdit;
      DBRadioGroup1: TDBRadioGroup;
      GroupBox3: TGroupBox;
      DBGridDetalhes: TDBGrid;
      DS_PlanoClasses: TDataSource;
      DB_PlanoClasses: TUniQuery;
      DB_PlanoClassesTIPO: TStringField;
      DB_PlanoClassesDESCRICAO: TStringField;
      DB_PlanoDetalhes: TUniQuery;
      ds_PlanoDetalhes: TDataSource;
      db_PlanoChecar: TUniQuery;
      DB_PlanoClassesVALOR_ACUMULADO: TFloatField;
      FrmFrameBarra1: TFrmFrameBarra;
    DB_PlanoClassesCODIGO: TStringField;
    DB_PlanoDetalhesCODIGO: TStringField;
    DB_PlanoDetalhesCODIGO_PLANO: TStringField;
    DB_PlanoDetalhesNOME: TStringField;
    DB_PlanoDetalhesTIPO: TStringField;
    DB_PlanoDetalhesLIMITE: TFloatField;
    FrmFrameBotoes1: TFrmFrameBotoes;
    dbEditPesquisar: TIDBEditDialog;
    dbEditPesquisarDetalhe: TIDBEditDialog;
      procedure FormCreate(Sender: TObject);
      procedure Btn_SairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure DBGridDetalhesEnter(Sender: TObject);
      procedure DBGrid_PrincipalDblClick(Sender: TObject);
      procedure DBGridDetalhesKeyPress(Sender: TObject; var Key: Char);
      procedure DB_PlanoDetalhesBeforePost(DataSet: TDataSet);
      procedure DB_PlanoClassesBeforePost(DataSet: TDataSet);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure DB_PlanoDetalhesNewRecord(DataSet: TDataSet);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure DBGridDetalhesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmPlanoContas: TFrmPlanoContas;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.DFM}

procedure TFrmPlanoContas.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := DS_PlanoClasses;

   PagePlanoContas.ActivePageIndex := 0;

   DB_PlanoClasses.open;
   DB_PlanoDetalhes.open;
end;

procedure TFrmPlanoContas.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   PagePlanoContas.ActivePageIndex := 1;
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   EditCodigo.SetFocus;
end;

procedure TFrmPlanoContas.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   PagePlanoContas.ActivePageIndex := 0;
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   DB_PlanoDetalhes.Cancel;
end;

procedure TFrmPlanoContas.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);
end;

procedure TFrmPlanoContas.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmPlanoContas.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
   if dbEditPesquisar.Execute then
   begin
      DB_PlanoClasses.Locate('CODIGO', dbEditPesquisar.ResultFieldAsInteger('CODIGO'), []);
   end;
end;

procedure TFrmPlanoContas.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmPlanoContas.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbSalvarClick(Sender);
   // SALVAR REGISTRO
   If (DB_PlanoDetalhes.state in [dsEdit, dsInsert]) then
   Begin
      DB_PlanoDetalhes.Post;
      DB_PlanoDetalhes.Refresh;
   End;

end;

procedure TFrmPlanoContas.Btn_SairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmPlanoContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DB_PlanoClasses.close;
   DB_PlanoDetalhes.close;

end;

procedure TFrmPlanoContas.DBGridDetalhesEnter(Sender: TObject);
begin
   // SALVAR REGISTRO
   If (DB_PlanoClasses.state in [dsEdit, dsInsert]) then
   Begin
      DB_PlanoClasses.Post;
   End;

end;

procedure TFrmPlanoContas.DBGrid_PrincipalDblClick(Sender: TObject);
begin

   If DB_PlanoClasses.IsEmpty then
   Begin
      Informar('N�o h� dados para editar');
      abort;
   end;

   PagePlanoContas.ActivePageIndex := 1;

end;

procedure TFrmPlanoContas.DB_PlanoClassesBeforePost(DataSet: TDataSet);
begin

   If Empty(DB_PlanoClasses.FieldByName('DESCRICAO').AsString) then
   begin
      Informar('Informe o Nome da Classe referente ao Plano de Contas');
      abort;
   end;

   If Empty(DB_PlanoClasses.FieldByName('TIPO').AsString) then
   begin
      Informar('Informe o Classifica��o do Plano de Contas');
      abort;
   end;

end;

procedure TFrmPlanoContas.DB_PlanoDetalhesBeforePost(DataSet: TDataSet);
begin

   If Empty(DB_PlanoDetalhes.FieldByName('CODIGO_PLANO').AsString) then
   begin
      Informar('Informe o C�digo do Plano de Contas');
      abort;
   end;

   If Empty(DB_PlanoDetalhes.FieldByName('NOME').AsString) then
   begin
      Informar('Informe o Nome do Plano de Contas');
      abort;
   end;

   DB_PlanoDetalhes.FieldByName('CODIGO').AsString :=
     DB_PlanoClasses.FieldByName('CODIGO').AsString;

   // checar existencia de c�digo semelhante.
   db_PlanoChecar.close;
   db_PlanoChecar.open;

   if DB_PlanoDetalhes.FieldByName('CODIGO').AsString <>
     db_PlanoChecar.FieldByName('CODIGO').AsString then
   begin

      if db_PlanoChecar.RecordCount > 0 then
      begin
         Informar('J� Existe Plano de Contas com esse c�digo... ' + #13 + #10 +
           'C�digo da Classe: ' + db_PlanoChecar.FieldByName('CODIGO').AsString
           + ' / ' + 'Classifica��o: ' + db_PlanoChecar.FieldByName('TIPO')
           .AsString + #13 + #10 + #13 + #10 + 'Digite outro C�digo');
         db_PlanoChecar.close;
         abort;
      end;

   End;
   db_PlanoChecar.close;

end;

procedure TFrmPlanoContas.DB_PlanoDetalhesNewRecord(DataSet: TDataSet);
begin
   DB_PlanoDetalhes.FieldByName('TIPO').AsString :=
     DB_PlanoClasses.FieldByName('TIPO').AsString;

end;

procedure TFrmPlanoContas.DBGridDetalhesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=vk_f8 then
   begin
     if dbEditPesquisar.Execute then
     begin
        DB_PlanoDetalhes.Locate('CODIGO_PLANO', dbEditPesquisar.ResultFieldAsString('CODIGO_PLANO'), []);
     end;
   end;
end;

procedure TFrmPlanoContas.DBGridDetalhesKeyPress(Sender: TObject;
  var Key: Char);
begin
   // converter os caracteres em mai�sculos
   Key := AnsiUpperCase(Key)[1];

end;

end.
