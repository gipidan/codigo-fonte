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

unit FHistoricoFuncionario;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls,
   ImgList, Mask, Db, Menus, DBAccess,
   MemDS, Uni, BTOdeum,  ISFEdit,
   ISFEditbtn, ISFdbEditbtn, uEstSearchDialogZeos, IDBEdit;

type
   TFrmHistoricoFuncionario = class(TForm)
      Panel1: TPanel;
      BtnSair: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnNovo: TBitBtn;
      BtnExcluir: TBitBtn;
      PaginaHistorico: TPageControl;
      Tab_Principal: TTabSheet;
      Tab_Detalhes: TTabSheet;
      GridCadastrados: TDBGrid;
      Label2: TLabel;
      GBox2: TGroupBox;
      Label8: TLabel;
      Label11: TLabel;
      EditData: TDBEdit;
      EditValor: TDBEdit;
      BtnLocalizar: TBitBtn;
      Label13: TLabel;
      DBEdit6: TDBEdit;
      Label19: TLabel;
      EditPlano: TDBEdit;
      EditNome: TDBEdit;
      db_Departamento: TUniQuery;
      PainelDicas: TPanel;
      Label9: TLabel;
      DBEdit4: TDBEdit;
      db_CaixaFuncionarios: TUniQuery;
      ds_CaixaFuncionarios: TDataSource;
      db_CaixaFuncionariosCODIGO: TIntegerField;
      db_CaixaFuncionariosFUNCIONARIO: TStringField;
      db_CaixaFuncionariosDATA: TDateField;
      db_CaixaFuncionariosVENCIMENTO: TDateField;
      db_CaixaFuncionariosDOCUMENTO: TStringField;
      db_CaixaFuncionariosTIPO: TStringField;
      db_CaixaFuncionariosDEPARTAMENTO: TStringField;
      db_CaixaFuncionariosHISTORICO: TStringField;
      db_CaixaFuncionariosVALOR: TFloatField;
      db_Vendedores: TUniQuery;
      Label1: TLabel;
      DBComboBox1: TDBComboBox;
      db_CaixaFuncionariosQUITADO: TStringField;
      db_CaixaFuncionariosNomeFuncionario: TStringField;
      db_CaixaFuncionariosNomeCentroCusto: TStringField;
      db_IncluirSequencia: TUniQuery;
      db_ChecarSequencia: TUniQuery;
      EditCodevendedor: TIDBEditDialog;
      EditVendedor1: TEdit;
      procedure BtnSairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure GridCadastradosDblClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnNovoClick(Sender: TObject);
      procedure BtnSalvarClick(Sender: TObject);
      procedure BtnExcluirClick(Sender: TObject);
      procedure DbgridParcelasKeyPress(Sender: TObject; var Key: Char);
      procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
      procedure GridCadastradosCellClick(Column: TColumn);
      procedure Tab_DetalhesShow(Sender: TObject);
      procedure GridCadastradosDrawColumnCell(Sender: TObject;
        const Rect: TRect; DataCol: Integer; Column: TColumn;
        State: TGridDrawState);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmHistoricoFuncionario: TFrmHistoricoFuncionario;
   aPagar, aLancado, aPago: Real;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.dfm}

procedure TFrmHistoricoFuncionario.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmHistoricoFuncionario.FormCreate(Sender: TObject);
begin
   // Essa rotina � para suprir uma deficiencia de projeto
   // na tabela SEQUECICAS n�o existia o registri "FLL"
   // que identifica o SEQUENCIADOR de c�digos para filiais.
   // As fun��es abaixo checa se exite. Se n�o existir, acrescenta.
   db_ChecarSequencia.Open;
   If db_ChecarSequencia.RecordCount < 1 then
   // incluir o sequenciador de c�digos
   begin
      db_IncluirSequencia.ExecSQL;
   end;

   aPagar := 0;
   aLancado := 0;

   // PaginaHistorico.Pages[1].TabVisible:=false; {}
   PaginaHistorico.ActivePage := Tab_Principal;

   db_CaixaFuncionarios.Open;

   db_Vendedores.Open;

End;

procedure TFrmHistoricoFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   db_CaixaFuncionarios.Open;
   db_Departamento.Open;
   db_Vendedores.Open;

   Action := Cafree;
end;

procedure TFrmHistoricoFuncionario.GridCadastradosDblClick(Sender: TObject);
begin
   PaginaHistorico.ActivePage := Tab_Detalhes;
end;

procedure TFrmHistoricoFuncionario.BtnCancelarClick(Sender: TObject);
begin
   db_CaixaFuncionarios.Cancel;
   PaginaHistorico.ActivePage := Tab_Principal;
end;

procedure TFrmHistoricoFuncionario.BtnNovoClick(Sender: TObject);
begin

   // PaginaHistorico.Pages[1].TabVisible:=True; {}
   PaginaHistorico.ActivePage := Tab_Detalhes;

   db_CaixaFuncionarios.Append;
   db_CaixaFuncionarios.FieldByName('DATA').AsDateTime := Date;
   db_CaixaFuncionarios.FieldByName('QUITADO').AsString := 'N';

end;

procedure TFrmHistoricoFuncionario.BtnSalvarClick(Sender: TObject);
begin

   if (db_CaixaFuncionarios.State in [dsedit, dsinsert]) then
   Begin
      db_CaixaFuncionarios.Post;
   End;

   // Proteger;

end;

procedure TFrmHistoricoFuncionario.BtnExcluirClick(Sender: TObject);
Begin

   If not db_CaixaFuncionarios.IsEmpty then
   begin
      IF Pergunta('Deseja excluir este registro?') = TRUE THEN
      BEGIN
         db_CaixaFuncionarios.Delete;
      END;
   End
   Else
   Begin
      Erro('N�o h� dados para excluir.');
   End;

end;

procedure TFrmHistoricoFuncionario.DbgridParcelasKeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmHistoricoFuncionario.DBGrid4KeyPress(Sender: TObject;
  var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmHistoricoFuncionario.GridCadastradosCellClick(Column: TColumn);
begin
   // Proteger;
end;

procedure TFrmHistoricoFuncionario.Tab_DetalhesShow(Sender: TObject);
begin
   Try
      EditCodevendedor.SetFocus;
   Except
   End;
end;

procedure TFrmHistoricoFuncionario.GridCadastradosDrawColumnCell
  (Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

   (* DBGrid zebrado *)
   if not odd(db_CaixaFuncionarios.RecNo) then // se for �mpar
      if not(gdSelected in State) then // se a c�lula n�o est� selecionada
      begin
         GridCadastrados.Canvas.Brush.Color := $00FFEFDF;
         // define uma cor de fundo
         GridCadastrados.Canvas.FillRect(Rect); // pinta a c�lula
         GridCadastrados.DefaultDrawDataCell(Rect, Column.Field, State);
         // pinta o texto padr�o
      end;

end;

procedure TFrmHistoricoFuncionario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_ESCAPE then
   Begin
      BtnSair.Click;
   End;

end;

End.
