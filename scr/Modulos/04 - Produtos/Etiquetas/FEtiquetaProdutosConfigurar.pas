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

unit FEtiquetaProdutosConfigurar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FFrameBarra, ExtCtrls, FFrameBotoes, DB, MemDS, DBAccess, Uni,
  StdCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,
  Mask, DBCtrls, AdvSpin, DBAdvSp, AdvGroupBox, AdvOfficeButtons,
  DBAdvOfficeButtons, AdvEdit, AdvEdBtn, DBAdvEdBtn, AdvCombo, AdvDBComboBox;

type
  TFrmEtiquetaProdutosConfigurar = class(TForm)
    Panel1: TPanel;
    FrmFrameBarra1: TFrmFrameBarra;
    FrmFrameBotoes1: TFrmFrameBotoes;
    ds_EtiquetasLayout: TDataSource;
    db_EtiquetasLayout: TUniQuery;
    Grupo1: TGroupBox;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    EditNome: TDBEdit;
    Label2: TLabel;
    Grupo2: TGroupBox;
    DBAdvOfficeRadioGroup1: TDBAdvOfficeRadioGroup;
    DBAdvEditBtn1: TDBAdvEditBtn;
    Locate_EtiquetasLayout: TIDBEditDialog;
    ScrollBoxCampos: TScrollBox;
    grpColuna1: TGroupBox;
    GrupoDescricao1: TAdvGroupBox;
    DBAdvSpinEdit2: TDBAdvSpinEdit;
    DBAdvSpinEdit3: TDBAdvSpinEdit;
    DBAdvSpinEdit4: TDBAdvSpinEdit;
    DBCheckBox1: TDBCheckBox;
    GrupoCBarra1: TAdvGroupBox;
    DBAdvSpinEdit5: TDBAdvSpinEdit;
    DBAdvSpinEdit6: TDBAdvSpinEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    GrupoCor1: TAdvGroupBox;
    DBAdvSpinEdit8: TDBAdvSpinEdit;
    DBAdvSpinEdit9: TDBAdvSpinEdit;
    DBAdvSpinEdit10: TDBAdvSpinEdit;
    DBCheckBox3: TDBCheckBox;
    GrupoTamanho1: TAdvGroupBox;
    DBAdvSpinEdit11: TDBAdvSpinEdit;
    DBAdvSpinEdit12: TDBAdvSpinEdit;
    DBAdvSpinEdit13: TDBAdvSpinEdit;
    DBCheckBox4: TDBCheckBox;
    GrupoPrecos1: TAdvGroupBox;
    DBAdvSpinEdit14: TDBAdvSpinEdit;
    DBAdvSpinEdit15: TDBAdvSpinEdit;
    DBAdvSpinEdit16: TDBAdvSpinEdit;
    DBCheckBox5: TDBCheckBox;
    grpColuna2: TGroupBox;
    GrupoDescricao2: TAdvGroupBox;
    DBAdvSpinEdit17: TDBAdvSpinEdit;
    DBAdvSpinEdit18: TDBAdvSpinEdit;
    DBAdvSpinEdit19: TDBAdvSpinEdit;
    DBCheckBox7: TDBCheckBox;
    GrupoCBarra2: TAdvGroupBox;
    DBAdvSpinEdit20: TDBAdvSpinEdit;
    DBAdvSpinEdit21: TDBAdvSpinEdit;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    GrupoCor2: TAdvGroupBox;
    DBAdvSpinEdit22: TDBAdvSpinEdit;
    DBAdvSpinEdit23: TDBAdvSpinEdit;
    DBAdvSpinEdit24: TDBAdvSpinEdit;
    DBCheckBox10: TDBCheckBox;
    GrupoTamanho2: TAdvGroupBox;
    DBAdvSpinEdit25: TDBAdvSpinEdit;
    DBAdvSpinEdit26: TDBAdvSpinEdit;
    DBAdvSpinEdit27: TDBAdvSpinEdit;
    DBCheckBox11: TDBCheckBox;
    GrupoPrecos2: TAdvGroupBox;
    DBAdvSpinEdit28: TDBAdvSpinEdit;
    DBAdvSpinEdit29: TDBAdvSpinEdit;
    DBAdvSpinEdit30: TDBAdvSpinEdit;
    DBCheckBox12: TDBCheckBox;
    GrupoCodigoProduto: TAdvGroupBox;
    DBAdvSpinEdit31: TDBAdvSpinEdit;
    DBAdvSpinEdit32: TDBAdvSpinEdit;
    DBAdvSpinEdit33: TDBAdvSpinEdit;
    DBCheckBox13: TDBCheckBox;
    AdvGroupBox1: TAdvGroupBox;
    DBAdvSpinEdit34: TDBAdvSpinEdit;
    DBAdvSpinEdit35: TDBAdvSpinEdit;
    DBAdvSpinEdit36: TDBAdvSpinEdit;
    DBCheckBox14: TDBCheckBox;
    grpColuna3: TGroupBox;
    AdvGroupBox2: TAdvGroupBox;
    DBAdvSpinEdit37: TDBAdvSpinEdit;
    DBAdvSpinEdit38: TDBAdvSpinEdit;
    DBAdvSpinEdit39: TDBAdvSpinEdit;
    DBCheckBox15: TDBCheckBox;
    AdvGroupBox3: TAdvGroupBox;
    DBAdvSpinEdit40: TDBAdvSpinEdit;
    DBAdvSpinEdit41: TDBAdvSpinEdit;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    AdvGroupBox4: TAdvGroupBox;
    DBAdvSpinEdit42: TDBAdvSpinEdit;
    DBAdvSpinEdit43: TDBAdvSpinEdit;
    DBAdvSpinEdit44: TDBAdvSpinEdit;
    DBCheckBox18: TDBCheckBox;
    AdvGroupBox5: TAdvGroupBox;
    DBAdvSpinEdit45: TDBAdvSpinEdit;
    DBAdvSpinEdit46: TDBAdvSpinEdit;
    DBAdvSpinEdit47: TDBAdvSpinEdit;
    DBCheckBox19: TDBCheckBox;
    AdvGroupBox6: TAdvGroupBox;
    DBAdvSpinEdit48: TDBAdvSpinEdit;
    DBAdvSpinEdit49: TDBAdvSpinEdit;
    DBAdvSpinEdit50: TDBAdvSpinEdit;
    DBCheckBox20: TDBCheckBox;
    AdvGroupBox7: TAdvGroupBox;
    DBAdvSpinEdit51: TDBAdvSpinEdit;
    DBAdvSpinEdit52: TDBAdvSpinEdit;
    DBAdvSpinEdit53: TDBAdvSpinEdit;
    DBCheckBox21: TDBCheckBox;
    GroupBox1: TGroupBox;
    AdvDBComboBox1: TAdvDBComboBox;
    DBAdvSpinEdit7: TDBAdvSpinEdit;
    DBAdvSpinEdit54: TDBAdvSpinEdit;
    DBAdvSpinEdit55: TDBAdvSpinEdit;
    DBAdvSpinEdit1: TDBAdvSpinEdit;
    GrupoOP1: TAdvGroupBox;
    DBAdvSpinEdit56: TDBAdvSpinEdit;
    DBAdvSpinEdit57: TDBAdvSpinEdit;
    DBAdvSpinEdit58: TDBAdvSpinEdit;
    DBCheckBox22: TDBCheckBox;
    GrupoLote1: TAdvGroupBox;
    DBAdvSpinEdit59: TDBAdvSpinEdit;
    DBAdvSpinEdit60: TDBAdvSpinEdit;
    DBAdvSpinEdit61: TDBAdvSpinEdit;
    DBCheckBox23: TDBCheckBox;
    GrupoOP2: TAdvGroupBox;
    DBAdvSpinEdit62: TDBAdvSpinEdit;
    DBAdvSpinEdit63: TDBAdvSpinEdit;
    DBAdvSpinEdit64: TDBAdvSpinEdit;
    DBCheckBox24: TDBCheckBox;
    GrupoLote2: TAdvGroupBox;
    DBAdvSpinEdit65: TDBAdvSpinEdit;
    DBAdvSpinEdit66: TDBAdvSpinEdit;
    DBAdvSpinEdit67: TDBAdvSpinEdit;
    DBCheckBox25: TDBCheckBox;
    GrupoOP3: TAdvGroupBox;
    DBAdvSpinEdit68: TDBAdvSpinEdit;
    DBAdvSpinEdit69: TDBAdvSpinEdit;
    DBAdvSpinEdit70: TDBAdvSpinEdit;
    DBCheckBox26: TDBCheckBox;
    GrupoLote3: TAdvGroupBox;
    DBAdvSpinEdit71: TDBAdvSpinEdit;
    DBAdvSpinEdit72: TDBAdvSpinEdit;
    DBAdvSpinEdit73: TDBAdvSpinEdit;
    DBCheckBox27: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
    procedure db_EtiquetasLayoutAfterPost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure db_EtiquetasLayoutBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEtiquetaProdutosConfigurar: TFrmEtiquetaProdutosConfigurar;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.dfm}

procedure TFrmEtiquetaProdutosConfigurar.FormCreate(Sender: TObject);
begin
   FrmFrameBotoes1.DataSource := ds_EtiquetasLayout;
   ScrollBoxCampos.VertScrollBar.Position := 0;
   db_EtiquetasLayout.open;

end;

procedure TFrmEtiquetaProdutosConfigurar.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF Key = VK_PRIOR THEN
   Begin
      ScrollBoxCampos.VertScrollBar.Position :=
        ScrollBoxCampos.VertScrollBar.Position - 20;
   End;

   IF Key = VK_NEXT THEN
   Begin
      ScrollBoxCampos.VertScrollBar.Position :=
        ScrollBoxCampos.VertScrollBar.Position + 20;
   End;

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbAdicionarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbAdicionarClick(Sender);
  EditNome.Setfocus;

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbCancelarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbCancelarClick(Sender);

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbEditarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbEditarClick(Sender);

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbExcluirClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbExcluirClick(Sender);

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbProcurarClick(
  Sender: TObject);
begin

   if Locate_EtiquetasLayout.Execute then
   begin
      db_EtiquetasLayout.Cancel;
      db_EtiquetasLayout.close;
      db_EtiquetasLayout.ParamByName('CODIGO').Clear;
      db_EtiquetasLayout.ParamByName('CODIGO').AsInteger := Locate_EtiquetasLayout.ResultFieldAsInteger('CODIGO');
      db_EtiquetasLayout.Open;
      EditNome.Setfocus;

   end;

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbSairClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbSairClick(Sender);

end;

procedure TFrmEtiquetaProdutosConfigurar.FrmFrameBotoes1SpbSalvarClick(
  Sender: TObject);
begin
  FrmFrameBotoes1.SpbSalvarClick(Sender);

end;

procedure TFrmEtiquetaProdutosConfigurar.db_EtiquetasLayoutAfterPost(
  DataSet: TDataSet);
begin
   db_EtiquetasLayout.ParamByName('CODIGO').AsInteger := db_EtiquetasLayout.FieldByName('CODIGO').AsInteger;

end;

procedure TFrmEtiquetaProdutosConfigurar.db_EtiquetasLayoutBeforePost(
  DataSet: TDataSet);
begin

   if db_EtiquetasLayout.FieldByName('CODBARRAS_LARGURA').AsInteger<=0 then
      db_EtiquetasLayout.FieldByName('CODBARRAS_LARGURA').AsInteger    :=1;

   if db_EtiquetasLayout.FieldByName('CODBARRAS_LARGURABARRAS').AsInteger<=0 then
      db_EtiquetasLayout.FieldByName('CODBARRAS_LARGURABARRAS').AsInteger    :=1;

end;

procedure TFrmEtiquetaProdutosConfigurar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_EtiquetasLayout.open;
   action :=Cafree;
end;


end.
