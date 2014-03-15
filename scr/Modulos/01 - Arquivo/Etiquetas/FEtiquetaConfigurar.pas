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

unit FEtiquetaConfigurar;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, ComCtrls, ExtCtrls, jpeg, DB, MemDS, Uni,
   Grids, DBGrids, Mask, DBCtrls, Menus, 
   AdvSpin, DBAdvSp, DBAccess;

type
   TFrmEtiquetaConfigurar = class(TForm)
      FontDialog1: TFontDialog;
      Panel2: TPanel;
      Panel3: TPanel;
      GroupBox1: TGroupBox;
      BoxPreview: TGroupBox;
      PainelPreview: TPanel;
      GroupBox3: TGroupBox;
      PainelTamanho: TPanel;
      PainelCodigoBarra: TPanel;
      Image1: TImage;
      PainelDescricao: TPanel;
      PainelFornecedor: TPanel;
      PainelValor: TPanel;
      ds_EtiquetasLayout: TDataSource;
      BtnSair: TBitBtn;
      BtnExcluir: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnNovaNF: TBitBtn;
      ChkDescricao: TDBCheckBox;
      ChkFornecedor: TDBCheckBox;
      ChkCodigoBarra: TDBCheckBox;
      ChkCodigoProduto: TDBCheckBox;
      ChkTamanho: TDBCheckBox;
      PainelCodigoProduto: TPanel;
      ChkValor: TDBCheckBox;
      GroupBox7: TGroupBox;
      DBEdit17: TDBAdvSpinEdit;
      DBEdit19: TDBAdvSpinEdit;
      DBEdit22: TDBAdvSpinEdit;
      DBEdit23: TDBAdvSpinEdit;
      DBEdit25: TDBAdvSpinEdit;
      DBEdit27: TDBAdvSpinEdit;
      PopUpObjetos: TPopupMenu;
      Refazerposiesdosobjetos1: TMenuItem;
      PainelUnidade: TPanel;
      ChkUnidade: TDBCheckBox;
      PageSetupDialog1: TPageSetupDialog;
      GroupBox5: TGroupBox;
      EditPaperWidth: TDBAdvSpinEdit;
      EditPaperHeight: TDBAdvSpinEdit;
      EditBottomMargin: TDBAdvSpinEdit;
      EditTopMargin: TDBAdvSpinEdit;
      EditLeftMargin: TDBAdvSpinEdit;
      EditRightMargin: TDBAdvSpinEdit;
      Panel1: TPanel;
      GroupBox2: TGroupBox;
      EditNome: TDBEdit;
      GroupBox6: TGroupBox;
      Label26: TLabel;
      Label25: TLabel;
      BtnFontes: TButton;
      EditFonteNome: TDBEdit;
      EditFonteTamanho: TDBEdit;
      GroupBox8: TGroupBox;
      DBAdvSpinEdit2: TDBAdvSpinEdit;
      DBAdvSpinEdit4: TDBAdvSpinEdit;
      DBAdvSpinEdit5: TDBAdvSpinEdit;
      DBAdvSpinEdit8: TDBAdvSpinEdit;
      DBAdvSpinEdit10: TDBAdvSpinEdit;
      DBAdvSpinEdit12: TDBAdvSpinEdit;
      DBAdvSpinEdit1: TDBAdvSpinEdit;
      DBAdvSpinEdit3: TDBAdvSpinEdit;
      GroupBox9: TGroupBox;
      DBAdvSpinEdit6: TDBAdvSpinEdit;
      DBAdvSpinEdit7: TDBAdvSpinEdit;
      DBAdvSpinEdit9: TDBAdvSpinEdit;
      DBAdvSpinEdit11: TDBAdvSpinEdit;
      DBAdvSpinEdit13: TDBAdvSpinEdit;
      DBAdvSpinEdit14: TDBAdvSpinEdit;
      DBAdvSpinEdit15: TDBAdvSpinEdit;
      GroupBox10: TGroupBox;
      DBAdvSpinEdit16: TDBAdvSpinEdit;
      DBAdvSpinEdit17: TDBAdvSpinEdit;
      DBAdvSpinEdit18: TDBAdvSpinEdit;
      DBAdvSpinEdit19: TDBAdvSpinEdit;
      DBAdvSpinEdit20: TDBAdvSpinEdit;
      DBAdvSpinEdit21: TDBAdvSpinEdit;
      DBAdvSpinEdit22: TDBAdvSpinEdit;
      DBGrid1: TDBGrid;
      db_EtiquetasLayout: TUniQuery;
    GroupBox4: TGroupBox;
    EditColumnHeight: TDBAdvSpinEdit;
    EditColumnWidth: TDBAdvSpinEdit;
    EditColumns: TDBAdvSpinEdit;
    EditDistancia: TDBAdvSpinEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
      procedure BitBtn2Click(Sender: TObject);
      procedure BtnFontesClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure PainelTamanhoMouseMove(Sender: TObject; Shift: TShiftState;
        X, Y: Integer);
      procedure PainelCodigoBarraMouseMove(Sender: TObject; Shift: TShiftState;
        X, Y: Integer);
      procedure PainelDescricaoMouseMove(Sender: TObject; Shift: TShiftState;
        X, Y: Integer);
      procedure PainelFornecedorMouseMove(Sender: TObject; Shift: TShiftState;
        X, Y: Integer);
      procedure PainelValorMouseMove(Sender: TObject; Shift: TShiftState;
        X, Y: Integer);
      procedure BtnSairClick(Sender: TObject);
      procedure BtnNovaNFClick(Sender: TObject);
      procedure BtnExcluirClick(Sender: TObject);
      procedure PainelCodigoProdutoMouseMove(Sender: TObject;
        Shift: TShiftState; X, Y: Integer);
      procedure BtnSalvarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure db_EtiquetasLayoutNewRecord(DataSet: TDataSet);
      procedure Refazerposiesdosobjetos1Click(Sender: TObject);
      procedure db_EtiquetasLayoutAfterScroll(DataSet: TDataSet);
      procedure ChkValorClick(Sender: TObject);
      procedure db_EtiquetasDESCRICAO_COLUNAChange(Sender: TField);
      procedure db_EtiquetasLayoutAfterPost(DataSet: TDataSet);
      procedure PainelUnidadeMouseMove(Sender: TObject; Shift: TShiftState;
        X, Y: Integer);
      procedure ChkUnidadeClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
   private
      { Private declarations }
      MouseDownSpot: TPoint;
      Capturing: bool;

      procedure ObjetosLoad;
      procedure ObjetosSave;

      procedure RefazerObjetos;
      procedure ObjetosVisiveis;

   public
      { Public declarations }

   end;

var
   FrmEtiquetaConfigurar: TFrmEtiquetaConfigurar;

implementation

uses FPrincipal, Global, Biblioteca;

{$R *.DFM}

procedure TFrmEtiquetaConfigurar.PainelTamanhoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   ReleaseCapture;
   TWinControl(Sender).perform(WM_SYSCOMMAND, $F012, 0);
   BtnSalvarClick(Sender);
end;

procedure TFrmEtiquetaConfigurar.PainelUnidadeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   ReleaseCapture;
   TWinControl(Sender).perform(WM_SYSCOMMAND, $F012, 0);
   BtnSalvarClick(Sender);

end;

procedure TFrmEtiquetaConfigurar.PainelValorMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   ReleaseCapture;
   TWinControl(Sender).perform(WM_SYSCOMMAND, $F012, 0);
   BtnSalvarClick(Sender);
end;

procedure TFrmEtiquetaConfigurar.PainelDescricaoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   ReleaseCapture;
   TWinControl(Sender).perform(WM_SYSCOMMAND, $F012, 0);
   BtnSalvarClick(Sender);

end;

procedure TFrmEtiquetaConfigurar.PainelFornecedorMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   ReleaseCapture;
   TWinControl(Sender).perform(WM_SYSCOMMAND, $F012, 0);
   BtnSalvarClick(Sender);
end;

procedure TFrmEtiquetaConfigurar.PainelCodigoBarraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   ReleaseCapture;
   TWinControl(Sender).perform(WM_SYSCOMMAND, $F012, 0);
   BtnSalvarClick(Sender);
end;

procedure TFrmEtiquetaConfigurar.PainelCodigoProdutoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   ReleaseCapture;
   TWinControl(Sender).perform(WM_SYSCOMMAND, $F012, 0);
   BtnSalvarClick(Sender);
end;

procedure TFrmEtiquetaConfigurar.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrmEtiquetaConfigurar.BtnCancelarClick(Sender: TObject);
begin
   db_EtiquetasLayout.Cancel;
end;

procedure TFrmEtiquetaConfigurar.BtnExcluirClick(Sender: TObject);
begin

   If db_EtiquetasLayout.IsEmpty then
   Begin
      Informar('N�o h� dados para excluir');
      Exit;
   end;

   If Pergunta('Deseja realmente excluir este Registro?') = true then
   Begin
      db_EtiquetasLayout.Delete;
   End;

end;

procedure TFrmEtiquetaConfigurar.BtnNovaNFClick(Sender: TObject);
begin
   // Gerar novo codigo para o CIDADE
   db_EtiquetasLayout.Append;
   EditNome.SetFocus;

end;

procedure TFrmEtiquetaConfigurar.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmEtiquetaConfigurar.BtnSalvarClick(Sender: TObject);
begin

   if (db_EtiquetasLayout.state in [dsedit, dsinsert]) then
   begin
      ObjetosSave;
      if (db_EtiquetasLayout.state in [dsedit, dsinsert]) then
         db_EtiquetasLayout.Post;
      db_EtiquetasLayout.Refresh;
   end;


end;

procedure TFrmEtiquetaConfigurar.Button1Click(Sender: TObject);
begin

   if FontDialog1.Execute then
   begin
      if not(db_EtiquetasLayout.state in [dsedit, dsinsert]) then
         db_EtiquetasLayout.Edit;

      db_EtiquetasLayout.FieldByName('DSC_FONTENOME').AsString :=         FontDialog1.Font.Name;
      db_EtiquetasLayout.FieldByName('DSC_FONTETAMANHO').AsInteger :=     FontDialog1.Font.Size;
   end;

end;

procedure TFrmEtiquetaConfigurar.ChkUnidadeClick(Sender: TObject);
begin
   ObjetosVisiveis;
end;

procedure TFrmEtiquetaConfigurar.ChkValorClick(Sender: TObject);
begin
   ObjetosVisiveis;
end;

procedure TFrmEtiquetaConfigurar.db_EtiquetasLayoutAfterPost(DataSet: TDataSet);
begin

   ObjetosLoad;

end;

procedure TFrmEtiquetaConfigurar.db_EtiquetasLayoutAfterScroll
  (DataSet: TDataSet);
begin
   ObjetosLoad;
   ObjetosVisiveis;
end;

procedure TFrmEtiquetaConfigurar.db_EtiquetasDESCRICAO_COLUNAChange
  (Sender: TField);
begin
   ObjetosLoad;

end;

procedure TFrmEtiquetaConfigurar.db_EtiquetasLayoutNewRecord(DataSet: TDataSet);
begin
   //
   db_EtiquetasLayout.FieldByName('PRD_VISIVEL').AsString := 'SIM';
   db_EtiquetasLayout.FieldByName('CB_VISIVEL').AsString  := 'SIM';
   db_EtiquetasLayout.FieldByName('DSC_VISIVEL').AsString := 'SIM';
   db_EtiquetasLayout.FieldByName('UND_VISIVEL').AsString := 'SIM';
   db_EtiquetasLayout.FieldByName('TAM_VISIVEL').AsString := 'SIM';
   db_EtiquetasLayout.FieldByName('VLR_VISIVEL').AsString := 'SIM';
   db_EtiquetasLayout.FieldByName('FRN_VISIVEL').AsString := 'SIM';

end;

procedure TFrmEtiquetaConfigurar.BtnFontesClick(Sender: TObject);
begin

   if FontDialog1.Execute then
   begin
      if not(db_EtiquetasLayout.state in [dsedit, dsinsert]) then
         db_EtiquetasLayout.Edit;

      db_EtiquetasLayout.FieldByName('FNT_NOME').AsString :=
        FontDialog1.Font.Name;
      db_EtiquetasLayout.FieldByName('FNT_TAMANHO').AsInteger :=
        FontDialog1.Font.Size;
   end;

end;

procedure TFrmEtiquetaConfigurar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_Escape then
      Close;

end;

procedure TFrmEtiquetaConfigurar.Refazerposiesdosobjetos1Click(Sender: TObject);
begin
   if Pergunta('Tem certeza que deseja refazer as posi��es dos objetos')
     = false then
      Exit;

   RefazerObjetos;
   Update;

   ObjetosSave;

end;

procedure TFrmEtiquetaConfigurar.RefazerObjetos;
begin

   // Coluna
   PainelCodigoProduto.Left := 2;
   // Linha
   PainelCodigoProduto.Top := 10;
   // largura
   PainelCodigoProduto.Width := 130;
   // comprimento
   PainelCodigoProduto.Height := 15;

   // Coluna
   PainelCodigoBarra.Left := 2;
   // Linha
   PainelCodigoBarra.Top := 30;
   // largura
   PainelCodigoBarra.Width := 130;
   // comprimento
   PainelCodigoBarra.Height := 30;

   // Coluna
   PainelDescricao.Left := 2;
   // Linha
   PainelDescricao.Top := 65;
   // largura
   PainelDescricao.Width := 130;
   // comprimento
   PainelDescricao.Height := 15;

   // Coluna
   PainelUnidade.Left := 2;
   // Linha
   PainelUnidade.Top := 85;
   // largura
   PainelUnidade.Width := 55;
   // comprimento
   PainelUnidade.Height := 15;

   // Coluna
   PainelTamanho.Left := 84;
   // Linha
   PainelTamanho.Top := 85;
   // largura
   PainelTamanho.Width := 80;
   // comprimento
   PainelTamanho.Height := 15;

   // Coluna
   PainelValor.Left := 2;
   // Linha
   PainelValor.Top := 105;
   // largura
   PainelValor.Width := 60;
   // comprimento
   PainelValor.Height := 15;

   // Coluna
   PainelFornecedor.Left := 2;
   // Linha
   PainelFornecedor.Top := 125;
   // largura
   PainelFornecedor.Width := 130;
   // comprimento
   PainelFornecedor.Height := 15;

end;

// carrega as configura��es salvas no banco de dados
// e reposiona os objetos da etiqueta fazendo com que fique
// nas posi��es definidas pelo  usu�rio.
// As possi��es s�o salvas pela Procedure "ObjetosLoad"
procedure TFrmEtiquetaConfigurar.ObjetosLoad;
begin

   // Coluna
   PainelCodigoProduto.Left := db_EtiquetasLayout.FieldByName('PRD_COLUNA')
     .AsInteger;
   // Linha
   PainelCodigoProduto.Top := db_EtiquetasLayout.FieldByName('PRD_LINHA')
     .AsInteger;
   // largura
   PainelCodigoProduto.Width := db_EtiquetasLayout.FieldByName('PRD_LARGURA')
     .AsInteger;
   // comprimento
   PainelCodigoProduto.Height := db_EtiquetasLayout.FieldByName
     ('PRD_COMPRIMENTO').AsInteger;

   // Coluna
   PainelCodigoBarra.Left := db_EtiquetasLayout.FieldByName('CB_COLUNA')
     .AsInteger;
   // Linha
   PainelCodigoBarra.Top := db_EtiquetasLayout.FieldByName('CB_LINHA')
     .AsInteger;
   // largura
   PainelCodigoBarra.Width := db_EtiquetasLayout.FieldByName('CB_LARGURA')
     .AsInteger;
   // comprimento
   PainelCodigoBarra.Height := db_EtiquetasLayout.FieldByName('CB_COMPRIMENTO')
     .AsInteger;

   // Coluna
   PainelDescricao.Left := db_EtiquetasLayout.FieldByName('DSC_COLUNA')
     .AsInteger;
   // Linha
   PainelDescricao.Top := db_EtiquetasLayout.FieldByName('DSC_LINHA').AsInteger;
   // largura
   PainelDescricao.Width := db_EtiquetasLayout.FieldByName('DSC_LARGURA')
     .AsInteger;
   // comprimento
   PainelDescricao.Height := db_EtiquetasLayout.FieldByName('DSC_COMPRIMENTO')
     .AsInteger;

   // Coluna
   PainelUnidade.Left := db_EtiquetasLayout.FieldByName('UND_COLUNA').AsInteger;
   // Linha
   PainelUnidade.Top := db_EtiquetasLayout.FieldByName('UND_LINHA').AsInteger;
   // largura
   PainelUnidade.Width := db_EtiquetasLayout.FieldByName('UND_LARGURA')
     .AsInteger;
   // comprimento
   PainelUnidade.Height := db_EtiquetasLayout.FieldByName('UND_COMPRIMENTO')
     .AsInteger;

   // Coluna
   PainelTamanho.Left := db_EtiquetasLayout.FieldByName('TAM_COLUNA').AsInteger;
   // Linha
   PainelTamanho.Top := db_EtiquetasLayout.FieldByName('TAM_LINHA').AsInteger;
   // largura
   PainelTamanho.Width := db_EtiquetasLayout.FieldByName('TAM_LARGURA')
     .AsInteger;
   // comprimento
   PainelTamanho.Height := db_EtiquetasLayout.FieldByName('TAM_COMPRIMENTO')
     .AsInteger;

   // Coluna
   PainelValor.Left := db_EtiquetasLayout.FieldByName('VLR_COLUNA').AsInteger;
   // Linha
   PainelValor.Top := db_EtiquetasLayout.FieldByName('VLR_LINHA').AsInteger;
   // largura
   PainelValor.Width := db_EtiquetasLayout.FieldByName('VLR_LARGURA').AsInteger;
   // comprimento
   PainelValor.Height := db_EtiquetasLayout.FieldByName('VLR_COMPRIMENTO')
     .AsInteger;

   // Coluna
   PainelFornecedor.Left := db_EtiquetasLayout.FieldByName('FRN_COLUNA')
     .AsInteger;
   // Linha
   PainelFornecedor.Top := db_EtiquetasLayout.FieldByName('FRN_LINHA')
     .AsInteger;
   // largura
   PainelFornecedor.Width := db_EtiquetasLayout.FieldByName('FRN_LARGURA')
     .AsInteger;
   // comprimento
   PainelFornecedor.Height := db_EtiquetasLayout.FieldByName('FRN_COMPRIMENTO')
     .AsInteger;

end;

// salva no banco de dados as posi��es dos objetos da etiqueta
// definidas pelo  usu�rio.
// As possi��es s�o carregadas pela Procedure "ObjetosLoad"
procedure TFrmEtiquetaConfigurar.ObjetosSave;
begin

   // colocar em modo edicao
   if not(db_EtiquetasLayout.state in [dsedit]) then
      db_EtiquetasLayout.Edit;

   // Coluna
   db_EtiquetasLayout.FieldByName('PRD_COLUNA').AsInteger :=
     PainelCodigoProduto.Left;
   // Linha
   db_EtiquetasLayout.FieldByName('PRD_LINHA').AsInteger :=
     PainelCodigoProduto.Top;
   // largura
   //db_EtiquetasLayout.FieldByName('PRD_LARGURA').AsInteger :=     PainelCodigoProduto.Width;
   // comprimento
   db_EtiquetasLayout.FieldByName('PRD_COMPRIMENTO').AsInteger :=
     PainelCodigoProduto.Height;

   // Coluna
   db_EtiquetasLayout.FieldByName('CB_COLUNA').AsInteger :=
     PainelCodigoBarra.Left;
   // Linha
   db_EtiquetasLayout.FieldByName('CB_LINHA').AsInteger :=
     PainelCodigoBarra.Top;
   // largura
   //db_EtiquetasLayout.FieldByName('CB_LARGURA').AsInteger :=      PainelCodigoBarra.Width;
   // comprimento
   db_EtiquetasLayout.FieldByName('CB_COMPRIMENTO').AsInteger :=
     PainelCodigoBarra.Height;

   // Coluna
   db_EtiquetasLayout.FieldByName('DSC_COLUNA').AsInteger :=
     PainelDescricao.Left;
   // Linha
   db_EtiquetasLayout.FieldByName('DSC_LINHA').AsInteger := PainelDescricao.Top;
   // largura
   //db_EtiquetasLayout.FieldByName('DSC_LARGURA').AsInteger :=     PainelDescricao.Width;
   // comprimento
   db_EtiquetasLayout.FieldByName('DSC_COMPRIMENTO').AsInteger :=
     PainelDescricao.Height;

   // Coluna
   db_EtiquetasLayout.FieldByName('UND_COLUNA').AsInteger := PainelUnidade.Left;
   // Linha
   db_EtiquetasLayout.FieldByName('UND_LINHA').AsInteger := PainelUnidade.Top;
   // largura
   //db_EtiquetasLayout.FieldByName('UND_LARGURA').AsInteger :=     PainelUnidade.Width;
   // comprimento
   db_EtiquetasLayout.FieldByName('UND_COMPRIMENTO').AsInteger :=
     PainelUnidade.Height;

   // Coluna
   db_EtiquetasLayout.FieldByName('TAM_COLUNA').AsInteger := PainelTamanho.Left;
   // Linha
   db_EtiquetasLayout.FieldByName('TAM_LINHA').AsInteger := PainelTamanho.Top;
   // largura
   //db_EtiquetasLayout.FieldByName('TAM_LARGURA').AsInteger :=  PainelTamanho.Width;
   // comprimento
   db_EtiquetasLayout.FieldByName('TAM_COMPRIMENTO').AsInteger :=
     PainelTamanho.Height;

   // Coluna
   db_EtiquetasLayout.FieldByName('VLR_COLUNA').AsInteger := PainelValor.Left;
   // Linha
   db_EtiquetasLayout.FieldByName('VLR_LINHA').AsInteger := PainelValor.Top;
   // largura
   //db_EtiquetasLayout.FieldByName('VLR_LARGURA').AsInteger := PainelValor.Width;
   // comprimento
   db_EtiquetasLayout.FieldByName('VLR_COMPRIMENTO').AsInteger :=
     PainelValor.Height;

   // Coluna
   db_EtiquetasLayout.FieldByName('FRN_COLUNA').AsInteger :=
     PainelFornecedor.Left;
   // Linha
   db_EtiquetasLayout.FieldByName('FRN_LINHA').AsInteger :=
     PainelFornecedor.Top;
   // largura
   //db_EtiquetasLayout.FieldByName('FRN_LARGURA').AsInteger :=      PainelFornecedor.Width;
   // comprimento
   db_EtiquetasLayout.FieldByName('FRN_COMPRIMENTO').AsInteger :=
     PainelFornecedor.Height;

   // salvar

   if (db_EtiquetasLayout.state in [dsedit]) then
      db_EtiquetasLayout.Post;

end;

procedure TFrmEtiquetaConfigurar.ObjetosVisiveis;
begin

   if ChkDescricao.Checked then
      PainelDescricao.Visible := true
   else
      PainelDescricao.Visible := false;

   if ChkFornecedor.Checked then
      PainelFornecedor.Visible := true
   else
      PainelFornecedor.Visible := false;

   if ChkCodigoBarra.Checked then
      PainelCodigoBarra.Visible := true
   else
      PainelCodigoBarra.Visible := false;

   if ChkCodigoProduto.Checked then
      PainelCodigoProduto.Visible := true
   else
      PainelCodigoProduto.Visible := false;

   if ChkUnidade.Checked then
      PainelUnidade.Visible := true
   else
      PainelUnidade.Visible := false;

   if ChkTamanho.Checked then
      PainelTamanho.Visible := true
   else
      PainelTamanho.Visible := false;

   if ChkValor.Checked then
      PainelValor.Visible := true
   else
      PainelValor.Visible := false;

end;

procedure TFrmEtiquetaConfigurar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure TFrmEtiquetaConfigurar.FormCreate(Sender: TObject);
begin
   db_EtiquetasLayout.Open;
   ObjetosLoad;
   ObjetosVisiveis;
end;

end.
