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

unit FOrdemCorte;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, FFrameBarra, FFrameBotoes, ExtCtrls, Grids, DBGrids, StdCtrls,
   DBCtrls, ISFEdit, ISFEditbtn, ISFdbEditbtn, db,
   uEstSearchDialogZeos, Mask, Buttons, IDBEdit, frxClass, MemDS, Uni,
   frxDBSet, DBAccess;

type
   TFrmOrdemCorte = class(TForm)
      FrmFrameBarra1: TFrmFrameBarra;
      FrmFrameBotoes1: TFrmFrameBotoes;
      GroupBox1: TGroupBox;
      GroupBox2: TGroupBox;
      Panel1: TPanel;
      Panel3: TPanel;
      Panel5: TPanel;
      Label4: TLabel;
      Label5: TLabel;
      Label7: TLabel;
      DBEdit3: TDBEdit;
      DBEdit1: TDBEdit;
      DBEdit6: TDBEdit;
      LocalizaOrdemProducao: TIDBEditDialog;
      EditOPNome: TEdit;
      LocalizaOrdemCorte: TIDBEditDialog;
    FRX_OrdemCorte: TfrxReport;
      GroupBox3: TGroupBox;
      dbGrid_Referencias: TDBGrid;
      GridMateriaPrima: TDBGrid;
    db_MateriaPrima: TUniQuery;
    ds_MateriaPrimaTecidos: TDataSource;
    db_MateriaPrimaTecidos: TUniQuery;
    db_MateriaPrimaTecidosCODIGO: TIntegerField;
    db_MateriaPrimaTecidosPRODUTO: TStringField;
    db_MateriaPrimaTecidosDESCRICAO: TStringField;
    db_MateriaPrimaTecidosUND: TStringField;
    db_MateriaPrimaTecidosQTDE_METROS: TFloatField;
    db_MateriaPrimaTecidosVLR_UNIT: TFloatField;
    db_MateriaPrimaTecidosVLR_TOTAL: TFloatField;
    db_MateriaPrimaTecidosCOMPOSICAO: TIntegerField;
    db_MateriaPrimaTecidosCOMPOSICAO_DESCRICAO: TStringField;
    db_MateriaPrimaTecidosDIMENSIONAMENTO: TStringField;
    db_MateriaPrimaTecidosCOR: TStringField;
    db_MateriaPrimaTecidosTAMANHO: TStringField;
    ds_MateriaPrima: TDataSource;
    dts_MateriaPrimaGrade: TfrxDBDataset;
    ds_MateriaPrimaGrade: TDataSource;
    db_MateriaPrimaGrade: TUniQuery;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
      procedure FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
      procedure SpeedButton1Click(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure LocalizaOrdemProducaoEnter(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmOrdemCorte: TFrmOrdemCorte;

implementation

uses FPrincipal, FBaseDados_PCP, Biblioteca, Global,
   UsuariosAcao;

{$R *.dfm}

procedure TFrmOrdemCorte.FormCreate(Sender: TObject);
begin

   Top := 10;
   Left := 10;

   FrmFrameBotoes1.DataSource := BaseDados_PCP.ds_OrdemCorte;

   FrmPrincipal.Mnu_OrdemCorte.Enabled := false;

   BaseDados_PCP.db_OrdemCorte.Close;
   BaseDados_PCP.db_OrdemCorte.Params.ParamByName('CODIGO').Clear;
   BaseDados_PCP.db_OrdemCorte.open;

   BaseDados_PCP.db_OrdemCorte_Enfesto.open;
   db_OrdemProduzir.open;

   // Reabrirtabela;

end;

procedure TFrmOrdemCorte.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_escape then
      Close;

end;

procedure TFrmOrdemCorte.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FrmPrincipal.Mnu_OrdemCorte.Enabled := True;

   BaseDados_PCP.db_OrdemCorte.Close;
   BaseDados_PCP.db_OrdemCorte_Enfesto.Close;

   Action := Cafree;
end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbAdicionarClick(Sender);
   LocalizaOrdemProducao.SetFocus;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbCancelarClick(Sender);
   BaseDados_PCP.db_OrdemCorte_Enfesto.Cancel;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbEditarClick(Sender);
   BaseDados_PCP.db_OrdemCorte_Enfesto.edit;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
   FrmFrameBotoes1.SpbExcluirClick(Sender);
   db_OrdemProduzir.Close;
   db_OrdemProducao_Referencias.Close;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbImprimirClick(Sender: TObject);
begin

   db_MateriaPrima.close;
   db_MateriaPrimaTecidos.close;

   db_OrdemProduzir.Close;
   db_OrdemProduzir.ParamByName('ORDEMPRODUCAO').Clear;
   db_OrdemProduzir.ParamByName('ORDEMPRODUCAO').AsInteger := BaseDados_PCP.db_OrdemCorte.FieldByName('ORDEM_PRODUCAO').AsInteger;
   db_OrdemProduzir.open;

   FRX_OrdemCorte.ShowReport;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin

   if LocalizaOrdemCorte.Execute then
   begin

      BaseDados_PCP.db_OrdemCorte.Close;
      BaseDados_PCP.db_OrdemCorte.ParamByName('CODIGO').Clear;
      BaseDados_PCP.db_OrdemCorte.ParamByName('CODIGO').AsInteger :=
        LocalizaOrdemCorte.ResultFieldAsInteger('CODIGO');
      BaseDados_PCP.db_OrdemCorte.open;

      db_OrdemProducao_Referencias.Close;
      db_OrdemProducao_Referencias.ParamByName('ORDEMPRODUCAO').Clear;
      db_OrdemProducao_Referencias.ParamByName('ORDEMPRODUCAO').AsInteger :=
        BaseDados_PCP.db_OrdemCorte.FieldByName('ORDEM_PRODUCAO').AsInteger;
      db_OrdemProducao_Referencias.open;

   end;

end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
   // close;
   Screen.FocusedForm.Close;
end;

procedure TFrmOrdemCorte.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin

   FrmFrameBotoes1.SpbSalvarClick(Sender);

   If (BaseDados_PCP.db_OrdemCorte_Enfesto.state in [dsedit, dsinsert]) then
   begin
      BaseDados_PCP.db_OrdemCorte_Enfesto.Post;
   end;

end;

procedure TFrmOrdemCorte.LocalizaOrdemProducaoEnter(Sender: TObject);
begin

   If (BaseDados_PCP.db_OrdemCorte.state in [dsedit, dsinsert]) then
   Begin
      BaseDados_PCP.db_OrdemCorte.Post;
   End;

end;

procedure TFrmOrdemCorte.SpeedButton1Click(Sender: TObject);
begin

   avisosistema(' Por que FECHAR? ' + #13 + #10 +
     ' Se n�o fechar, n�o ser� possivel emitir ordem de produ��o. ' +
     ' Somente � possivel produzir ap�s finaliza�ao do departamento de corte.' +
     #13 + #10 + #13 + #10 +
     ' Aten��o: A Ordem e Corte deve ser fechada somente ap�s real t�rmino do corte das pe�as. '

     );

end;

end.
