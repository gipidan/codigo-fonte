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


unit FOrdemProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ToolWin, StdCtrls, ActnMan, ActnCtrls, ComCtrls,
  Grids, DBGrids, FFrameBarra, DBCtrls, Mask, Buttons, ISFEdit, ISFEditbtn,
  ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DB, MemDS, DBAccess, Uni,
  frxClass, frxDBSet,
  Classe.Global;


type
  TFrmOrdemProducao = class(TForm)
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    spt_divisor2: TSplitter;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel2: TCategoryPanel;
    CategoryPanel1: TCategoryPanel;
    Panel1: TPanel;
    SpbExcluir: TSpeedButton;
    SpbProcurar: TSpeedButton;
    SpbImprimir: TSpeedButton;
    SpbSair: TSpeedButton;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    btnDesaprovar: TSpeedButton;
    btnEncerrar: TSpeedButton;
    btnAutorizar: TSpeedButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    GroupBox5: TGroupBox;
    DBMemo1: TDBMemo;
    btnGerarOrdemProducao: TSpeedButton;
    LocalizaOrdemProducao: TIDBEditDialog;
    dbProcurarProdutos: TIDBEditDialog;
    rdgFiltrarOrdemProducao: TRadioGroup;
    SP_GerarOP: TUniStoredProc;
    SP_Deletar: TUniStoredProc;
    SP_Aprovar: TUniStoredProc;
    SP_MovimentoAtualizar: TUniStoredProc;
    btnOrdemCorte: TSpeedButton;
    CategoryPanel3: TCategoryPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    db_OrdemProducaoImprimir: TUniQuery;
    frd_OrdemProducaoGrade: TfrxDBDataset;
    FRX_OrdemProducao: TfrxReport;
    frx_dsOrdemProducao: TfrxDBDataset;
    db_OrdemProducaoGradeImprimir: TUniQuery;
    FRX_OrdemCorte: TfrxReport;
    db_MateriaPrimaTecidos: TUniQuery;
    ds_MateriaPrimaTecidos: TDataSource;
    db_MateriaPrima: TUniQuery;
    ds_MateriaPrima: TDataSource;
    db_MateriaPrimaGrade: TUniQuery;
    ds_MateriaPrimaGrade: TDataSource;
    dts_MateriaPrimaGrade: TfrxDBDataset;
    dts_MateriasPrimas: TfrxDBDataset;
    dts_Tecidos: TfrxDBDataset;
    ds_OrdemProduzir: TDataSource;
    db_OrdemProduzir: TUniQuery;
    db_AprovarAcao: TUniQuery;
    DBGrid1: TDBGrid;
    SP_DeletarFase: TUniStoredProc;
    SP_MontarGrade: TUniStoredProc;
    ProgressBar1: TProgressBar;
    GroupBox4: TGroupBox;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    EditReferencia: TLabeledEdit;
    db_OPReferencias: TUniQuery;
    ds_OPReferencias: TDataSource;
    PopupMenu1: TPopupMenu;
    AprovarTudo1: TMenuItem;
    Desaprovartudo1: TMenuItem;
    db_MateriaPrimaTecidosGrade: TUniQuery;
    ds_MateriaPrimaTecidosGrade: TDataSource;
    dts_TecidosGrade: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SpbProcurarClick(Sender: TObject);
    procedure rdgFiltrarOrdemProducaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGerarOrdemProducaoClick(Sender: TObject);
    procedure btnAutorizarClick(Sender: TObject);
    procedure btnDesaprovarClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure btnEncerrarClick(Sender: TObject);
    procedure SpbExcluirClick(Sender: TObject);
    procedure SpbImprimirClick(Sender: TObject);
    procedure btnOrdemCorteClick(Sender: TObject);
    procedure EditReferenciaChange(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure AprovarTudo1Click(Sender: TObject);
    procedure Desaprovartudo1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    procedure prcFiltrarOrdemProducao;
    procedure GradeAbrir;
    procedure MontarFaseGrade(lAcao: String);
    procedure prcRefresh;
    procedure prcProcurar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOrdemProducao: TFrmOrdemProducao;


  lblnCancelar,
  lblnTodosPedidos,
  lblnTodosClientes,
  lblnTodosVendedores       : Boolean;


implementation

uses FPrincipal, FBaseDados_PCP, SQLServer, Biblioteca, Global,
  FOrdemProducaoPedidos,  FOrdemProducaoReferencias,
  FOrdemProducaoMateriaPrimaBaixar, Classe.Usuarios;

{$R *.dfm}

procedure TFrmOrdemProducao.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;
   strNatureza    :=BaseDados_PCP.db_OrdemProducao.FieldByName('NATUREZA').AsString;
   strSimNao      :=BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString;

   if (key=vk_f2) then
   begin
      if (strNatureza='MANUAL') and (strSimNao='N') Then
      Begin
         GradeAbrir;
      End
      else
      begin
         FUsuario.prcLogUsuario('ordem de produ��o | alterar grade','tentou alterar grade de quantidade da OP ' + IntToStr(nOrdemProducao) +
         '. O sistema n�o permitiu, por j� estar aprovado/autorizado para produ��o. ' );

         AvisoSistemaErro('N�o � possivel alterar grade.'
                      +sLineBreak
                      +sLineBreak
                      +'Para alterar a grade desta Ordem de Produ��o:'
                      +sLineBreak
                      +' - n�o poder� estar Aprovado/Autorizado; '
                      +sLineBreak
                      +' - a Naturza n�o pode ser Pedido de Venda; '

                      );

      end;
   end;

   if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
   begin
      FUsuario.prcLogUsuario('ordem de produ��o | deletar','tentou deletar Ordem de Produ��o ' + IntToStr(nOrdemProducao)+'.'
      +sLineBreak
      +'Tentou usando CTRL+DELETE. O sistema n�o permitiu deletar usando este metodo. '
      +sLineBreak
      +'O Correto � utilizar o bot�o [Deletar].'  );
      abort;
   end;

end;

procedure TFrmOrdemProducao.DBGrid2CellClick(Column: TColumn);
begin
   EditReferencia.Text :=db_OPReferencias.FieldByName('REFERENCIA').AsString;
end;

procedure TFrmOrdemProducao.Desaprovartudo1Click(Sender: TObject);
begin

   ProgressBar1.Max :=BaseDados_PCP.db_OrdemProducao.RecordCount;
   ProgressBar1.Position := 0;
   BaseDados_PCP.db_OrdemProducao.first;
   while not BaseDados_PCP.db_OrdemProducao.Eof do
   begin

      nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

      //  ESSA PROCEDURE (SPOP_DELETARFASE) DEVE SER EXECUTADA
      //  ANTES DA PROOEDURE "SPOP_DELETAR"
      SP_DeletarFase.ParamByName('NEMPRESA').AsInteger         := FSistema.Empresa;
      SP_DeletarFase.ParamByName('NORDEMPRODUCAO').AsInteger   := nOrdemProducao;
      SP_DeletarFase.ExecProc;
      SP_DeletarFase.close;

      SP_Aprovar.ParamByName('NEMPRESA').AsInteger        :=  FSistema.Empresa;
      SP_Aprovar.ParamByName('NORDEMPRODUCAO').AsInteger  :=  nOrdemProducao;
      SP_Aprovar.ParamByName('ACAO').AsString             :=  'DESAPROVAR';
      SP_Aprovar.ExecProc;
      SP_Aprovar.close;

      prcRefresh;
      BaseDados_PCP.db_OrdemProducao.Locate('CODIGO', nOrdemProducao, []);

      // Enviar comando para atualizar movimenta��o de produtos
      SP_MovimentoAtualizar.ExecProc;
      SP_MovimentoAtualizar.close;

      MontarFaseGrade('DELETAR');
      ProgressBar1.Position :=  ProgressBar1.Position + 1;
      Application.ProcessMessages;
      BaseDados_PCP.db_OrdemProducao.Next;

   end;

   BaseDados_PCP.db_OrdemProducao.Refresh;
   aviso('Ordem de Produ��o desaprovada (reaberta) com sucesso.');
   ProgressBar1.Position := 0;


end;

procedure TFrmOrdemProducao.EditReferenciaChange(Sender: TObject);
begin
   prcProcurar;
end;

procedure TFrmOrdemProducao.prcProcurar;
Var
   nOrdemProducaoReferencia : Integer;
   WSREFERENCIA : STRING;
begin

   db_OPReferencias.First;
   db_OPReferencias.Locate('REFERENCIA', (EditReferencia.Text) ,[]);
   nOrdemProducaoReferencia :=db_OPReferencias.FieldByName('CODIGO').AsInteger;


   BaseDados_PCP.db_OrdemProducao.First;
   BaseDados_PCP.db_OrdemProducao.Locate('CODIGO',nOrdemProducaoReferencia,[]);

end;

procedure TFrmOrdemProducao.FormActivate(Sender: TObject);
begin
   prcRefresh;

   rdgFiltrarOrdemProducaoClick(Sender);
   DimensionarGrid(DBGrid1,self);
   DimensionarGrid(DBGrid2,self);

end;

procedure TFrmOrdemProducao.FormCreate(Sender: TObject);
begin
   FrmPrincipal.Mnu_PCP_OrdemProducao.Enabled := false;

   BaseDados_PCP.db_OrdemProducao.Close;
   BaseDados_PCP.db_OrdemProducaoItens.Close;
   db_OPReferencias.Close;

   BaseDados_PCP.db_OrdemProducao.Params.ParamByName('EMPRESA').Clear;
   BaseDados_PCP.db_OrdemProducao.open;
   BaseDados_PCP.db_OrdemProducaoItens.open;
   db_OPReferencias.Open;

   btnAutorizar.Visible   :=(fncUsuario_retCampo(nUsuario,'PERMISSAO_PRODUCAOAPROVAR')='S');
   btnDesaprovar.Visible  :=(fncUsuario_retCampo(nUsuario,'PERMISSAO_PRODUCAOAPROVAR')='S');

end;

procedure TFrmOrdemProducao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   BaseDados_PCP.db_OrdemProducao.Close;
   BaseDados_PCP.db_OrdemProducaoItens.Close;
   db_OPReferencias.Close;

   FrmPrincipal.Mnu_PCP_OrdemProducao.Enabled := True;
   FreeAndNil(FrmOrdemProducao);
end;


procedure TFrmOrdemProducao.FormResize(Sender: TObject);
begin
   DimensionarGrid(DBGrid1,self);
   DimensionarGrid(DBGrid2,self);

end;

procedure TFrmOrdemProducao.FormShow(Sender: TObject);
begin

   rdgFiltrarOrdemProducaoClick(Sender);
   DimensionarGrid(DBGrid1,self);
   DimensionarGrid(DBGrid2,self);
   BaseDados_PCP.db_OrdemProducao.Last;

end;


procedure TFrmOrdemProducao.SpbExcluirClick(Sender: TObject);
begin
   if BaseDados_PCP.db_OrdemProducao.IsEmpty then
   begin
      Informar('N�o h� dados para excluir');
      Abort;
   end;

   if (BaseDados_PCP.db_OrdemProducao.FieldByName('ENCERRADO').AsString = 'S') or
     (BaseDados_PCP.db_OrdemProducao.FieldByName('ENCERRADO').AsString = 'SIM') then
   Begin
      BeepCritica;
      AvisoSistema('Ordem de Produ��o j� foi encerrada e n�o poder� ser excluida.');
      abort;
   End;

   if (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'S') or
     (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'SIM') then
   Begin
      BeepCritica;
      AvisoSistema('Ordem de Produ��o j� foi aprovada e n�o pode ser excluida. '
                   +sLineBreak
                   +sLineBreak
                   +'Desaprove (reabra) a Ordem de Produ��o e ent�o voc� conseguir� excluir.'
                   );
      abort;
   End;

   if (BaseDados_PCP.db_OrdemProducao.FieldByName('QTDE_PRODUZIDA').AsInteger > 0) then
   begin
      FormMensagem
        ('N�o � permitido deletar. H� produ��o concluida para esta Ordem de Produ��o.' + #13
        + #10 + 'J� foram produzidos ' + FormatFloat('###,##0',
         BaseDados_PCP.db_OrdemProducao.FieldByName('QTDE_PRODUZIDA').AsInteger));
      Abort;
   end;

   if pergunta('Deseja realmente excluir este registro?')=false then
   begin
      Abort;
   end;

   nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

   FUsuario.prcLogUsuario('ordem de produ��o | deletar','deletou Ordem de Produ��o ' + IntToStr(nOrdemProducao)  );

   SP_Deletar.ParamByName('NEMPRESA').AsInteger         := FSistema.Empresa;
   SP_Deletar.ParamByName('NORDEMPRODUCAO').AsInteger   := nOrdemProducao;
   SP_Deletar.ExecProc;
   SP_Deletar.close;

   prcRefresh;

   Informar('Registro excluido');

end;

procedure TFrmOrdemProducao.SpbImprimirClick(Sender: TObject);
begin
   nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;
   If (BaseDados_PCP.db_OrdemProducao.state in [dsedit, dsinsert]) then
      BaseDados_PCP.db_OrdemProducao.Post;

   db_OrdemProducaoImprimir.Close;
   db_OrdemProducaoGradeImprimir.Close;
   FRX_OrdemProducao.ShowReport;
   FUsuario.prcLogUsuario('ordem de produ��o | Ordem de Corte','imprimiu Ordem de Produ��o: ' + IntToStr(nOrdemProducao)  );

   db_OrdemProducaoImprimir.Close;
   db_OrdemProducaoGradeImprimir.Close;


end;

procedure TFrmOrdemProducao.SpbProcurarClick(Sender: TObject);
begin
   if LocalizaOrdemProducao.Execute then
   begin

      BaseDados_PCP.db_OrdemProducaoItens.Close;
      BaseDados_PCP.db_OrdemProducao.Locate('CODIGO',LocalizaOrdemProducao.ResultFieldAsInteger('CODIGO'),[]);
      BaseDados_PCP.db_OrdemProducaoItens.open;
      prcRefresh;
      DimensionarGrid(DBGrid1,self);
      DimensionarGrid(DBGrid2,self);

   end;

end;

procedure TFrmOrdemProducao.SpbSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmOrdemProducao.SpeedButton6Click(Sender: TObject);
begin

   nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

   db_MateriaPrima.close;
   db_MateriaPrimaTecidos.close;


   db_MateriaPrima.Close;
   db_MateriaPrima.ParamByName('ORDEMPRODUCAO').Clear;
   db_MateriaPrima.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   db_MateriaPrima.open;

   db_MateriaPrimaGrade.Close;
   db_MateriaPrimaGrade.open;

   db_MateriaPrimaTecidos.Close;
   db_MateriaPrimaTecidos.ParamByName('ORDEMPRODUCAO').Clear;
   db_MateriaPrimaTecidos.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   db_MateriaPrimaTecidos.open;

   db_MateriaPrimaTecidosGrade.Close;
   db_MateriaPrimaTecidosGrade.open;


   FrmOrdemProducaoMateriaPrimaBaixar :=TFrmOrdemProducaoMateriaPrimaBaixar.Create(self);
   FrmOrdemProducaoMateriaPrimaBaixar.ShowModal;

   db_MateriaPrima.close;
   db_MateriaPrimaTecidos.close;
   db_MateriaPrimaGrade.Close;

end;

procedure TFrmOrdemProducao.btnOrdemCorteClick(Sender: TObject);
begin

   nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

   db_OrdemProducaoImprimir.Close;
   db_OrdemProducaoGradeImprimir.Close;

   db_MateriaPrima.close;
   db_MateriaPrimaTecidos.close;

   db_MateriaPrimaGrade.Close;
   db_MateriaPrimaGrade.ParamByName('ORDEMPRODUCAO').Clear;
   db_MateriaPrimaGrade.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   db_MateriaPrimaGrade.open;

   db_MateriaPrimaTecidosGrade.Close;
   db_MateriaPrimaTecidosGrade.ParamByName('ORDEMPRODUCAO').Clear;
   db_MateriaPrimaTecidosGrade.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   db_MateriaPrimaTecidosGrade.open;

   db_OrdemProduzir.Close;
   db_OrdemProduzir.ParamByName('ORDEMPRODUCAO').Clear;
   db_OrdemProduzir.ParamByName('ORDEMPRODUCAO').AsInteger := nOrdemProducao;
   db_OrdemProduzir.open;

   FRX_OrdemCorte.ShowReport;
   FUsuario.prcLogUsuario('ordem de produ��o | Ordem de Corte','imprimiu Ordem de Corte referente Ordem de Produ��o: ' + IntToStr(nOrdemProducao)  );

end;

procedure TFrmOrdemProducao.btnDesaprovarClick(Sender: TObject);
begin
   if BaseDados_PCP.db_OrdemProducao.IsEmpty then
   begin
      AvisoSistemaErro('Selecione uma Ordem de Produ��o');
      exit;
   end;

   if (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'N')   or
      (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'NAO') then
   Begin
      BeepCritica;
      AvisoSistemaErro('Ordem de Produ��o j� foi desaprovada (reaberta).');
      abort;
   End;


   if (BaseDados_PCP.db_OrdemProducao.FieldByName('ENCERRADO').AsString = 'S') or
     (BaseDados_PCP.db_OrdemProducao.FieldByName('ENCERRADO').AsString = 'SIM') then
   Begin
      BeepCritica;
      AvisoSistemaErro('Ordem de Produ��o j� foi encerrada e n�o poder� ser desaprovada (reaberta).');
      abort;
   End;

   prcStatusMessage('Ordem de Produ��o','desaprovando e deletando processos de produ��o, aguarde...',True);
   nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

   //  ESSA PROCEDURE (SPOP_DELETARFASE) DEVE SER EXECUTADA
   //  ANTES DA PROOEDURE "SPOP_DELETAR"
   SP_DeletarFase.ParamByName('NEMPRESA').AsInteger         := FSistema.Empresa;
   SP_DeletarFase.ParamByName('NORDEMPRODUCAO').AsInteger   := nOrdemProducao;
   SP_DeletarFase.ExecProc;
   SP_DeletarFase.close;

   SP_Aprovar.ParamByName('NEMPRESA').AsInteger        :=  FSistema.Empresa;
   SP_Aprovar.ParamByName('NORDEMPRODUCAO').AsInteger  :=  nOrdemProducao;
   SP_Aprovar.ParamByName('ACAO').AsString             :=  'DESAPROVAR';
   SP_Aprovar.ExecProc;
   SP_Aprovar.close;

   FUsuario.prcLogUsuario('ordem de produ��o | desaprovar','Desaprovou (reabriu) Ordem de Produ��o ' + IntToStr(nOrdemProducao)  );

   prcRefresh;
   BaseDados_PCP.db_OrdemProducao.Locate('CODIGO', nOrdemProducao, []);

   // Enviar comando para atualizar movimenta��o de produtos
   SP_MovimentoAtualizar.ExecProc;
   SP_MovimentoAtualizar.close;

   MontarFaseGrade('DELETAR');
   prcStatusMessage('','',False);
   aviso('Ordem de Produ��o desaprovada (reaberta) com sucesso.');

end;

procedure TFrmOrdemProducao.btnEncerrarClick(Sender: TObject);
begin

   If (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'NAO') or
     (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'N')    then
   begin
      AvisoSistemaErro('Ordem de Produ��o ainda n�o foi Autorizada.... E n�o poder� ser encerrada.');
      exit;
   end;

   if (BaseDados_PCP.db_OrdemProducao.FieldByName('ENCERRADO').AsString = 'S') or
     (BaseDados_PCP.db_OrdemProducao.FieldByName('ENCERRADO').AsString = 'SIM') then
   Begin
      BeepCritica;
      AvisoSistemaErro('Ordem de Produ��o j� foi encerrada.');
      abort;
   End;

   If pergunta('Desejar fechar esta Ordem de Produ��o?') = false then
      exit;

   If not(BaseDados_PCP.db_OrdemProducao.state in [dsedit, dsinsert]) then
      BaseDados_PCP.db_OrdemProducao.edit;
   BaseDados_PCP.db_OrdemProducao.FieldByName('ENCERRADO').AsString   := 'S';
   If (BaseDados_PCP.db_OrdemProducao.state in [dsedit, dsinsert]) then
      BaseDados_PCP.db_OrdemProducao.Post;

   FUsuario.prcLogUsuario('ordem de produ��o | encerrar','Encerrou Ordem de Produ��o ' + IntToStr(nOrdemProducao)  );
   prcRefresh;

   Aviso('Ordem de Produ��o encerrada com sucesso.');


end;

procedure TFrmOrdemProducao.AprovarTudo1Click(Sender: TObject);
begin

   ProgressBar1.Position := 0;
   ProgressBar1.Max :=BaseDados_PCP.db_OrdemProducao.RecordCount;
   BaseDados_PCP.db_OrdemProducao.first;
   while not BaseDados_PCP.db_OrdemProducao.Eof do
   begin

      nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

     // Enviar comando para aprovar pedido
     SP_Aprovar.ParamByName('NEMPRESA').AsInteger        :=  FSistema.Empresa;
     SP_Aprovar.ParamByName('NORDEMPRODUCAO').AsInteger  :=  nOrdemProducao;
     SP_Aprovar.ParamByName('ACAO').AsString             :=  'APROVAR';
     SP_Aprovar.ExecProc;
     SP_Aprovar.Close;


     prcRefresh;
     BaseDados_PCP.db_OrdemProducao.Locate('CODIGO', nOrdemProducao, []);

     // Enviar comando para atualizar movimenta��o de produtos
     SP_MovimentoAtualizar.ExecProc;
     SP_MovimentoAtualizar.close;

      MontarFaseGrade('CRIAR');

      ProgressBar1.Position :=  ProgressBar1.Position + 1;
      Application.ProcessMessages;
      BaseDados_PCP.db_OrdemProducao.Next;

   end;

   BaseDados_PCP.db_OrdemProducao.Refresh;
   aviso('Ordem de Produ��o aprovada com sucesso.');
   ProgressBar1.Position := 0;

end;

procedure TFrmOrdemProducao.btnAutorizarClick(Sender: TObject);
begin

   if BaseDados_PCP.db_OrdemProducao.IsEmpty then
   begin
      AvisoSistemaErro('Selecione uma Ordem de Produ��o');
      exit;
   end;

   if (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'S') or
     (BaseDados_PCP.db_OrdemProducao.FieldByName('APROVADO').AsString = 'SIM') then
   Begin
      BeepCritica;
      AvisoSistemaErro('Ordem de Produ��o j� foi aprovada (liberada para produ��o).');
      abort;
   End;


   prcStatusMessage('Ordem de Produ��o','autorizando e criando processos de produ��o, aguarde...',True);
   nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

   // Enviar comando para aprovar pedido
   SP_Aprovar.ParamByName('NEMPRESA').AsInteger        :=  FSistema.Empresa;
   SP_Aprovar.ParamByName('NORDEMPRODUCAO').AsInteger  :=  nOrdemProducao;
   SP_Aprovar.ParamByName('ACAO').AsString             :=  'APROVAR';
   SP_Aprovar.ExecProc;
   SP_Aprovar.Close;


   FUsuario.prcLogUsuario('ordem de produ��o | aprovar','Aprovou Ordem de Produ��o ' + IntToStr(nOrdemProducao)  );

   prcRefresh;
   BaseDados_PCP.db_OrdemProducao.Locate('CODIGO', nOrdemProducao, []);


   // Enviar comando para atualizar movimenta��o de produtos
   SP_MovimentoAtualizar.ExecProc;
   SP_MovimentoAtualizar.close;

   MontarFaseGrade('CRIAR');
   prcStatusMessage('','',False);
   aviso('Ordem de Produ��o aprovada com sucesso.');

end;

procedure TFrmOrdemProducao.btnGerarOrdemProducaoClick(Sender: TObject);
begin

   FrmOrdemProducaoPedidos :=TFrmOrdemProducaoPedidos.create(self);
   FrmOrdemProducaoPedidos.ShowModal;

   if lblnCancelar=True then
   begin
      exit;
   end;

   // -----------------------------------------------------------------
   // se for manualmente
   // -----------------------------------------------------------------
   if strNatureza='MANUAL' then
   begin
      BaseDados_PCP.db_OrdemProducao.Append;
      BaseDados_PCP.db_OrdemProducao.FieldByName('LOTE').AsInteger          := nLoteProducao;
      BaseDados_PCP.db_OrdemProducao.FieldByName('NATUREZA').AsString       := 'MANUAL';
      BaseDados_PCP.db_OrdemProducao.FieldByName('DATAPREVISAO').AsDateTime := dtPrevisao;
      BaseDados_PCP.db_OrdemProducao.Post;
      nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

      FUsuario.prcLogUsuario('ordem de produ��o | gerar','Gerou Ordem de Produ��o ['+IntToStr(nOrdemProducao) +']. Digitou cada produto a ser produzido.'  );

      prcRefresh;
      BaseDados_PCP.db_OrdemProducao.Locate('CODIGO', nOrdemProducao, []);

      GradeAbrir;

      AvisoSistema('Ordem de Produ��o gerada com sucesso!');

   end;


   // -----------------------------------------------------------------
   // se for por pedido de venda
   // -----------------------------------------------------------------
   if strNatureza='PEDIDOS' then
   begin
      if fncChecarPedidosProduzir=False then
      Begin
         Informar('N�o h� Pedidos de Vendas aprovados/disponiveis para Produ��o');
         Abort;
      End;
      if fncChecarPeriodoPedidosProduzir( dtDataIni,
                                          dtDataFim,
                                          StrToIntDef(strCliente,0),
                                          StrToIntDef(strVendedor,0)
                                         )=False then
      Begin
         Informar('N�o h� Pedidos de Vendas disponivel para produ��o dentro do periodo (ou cliente/vendedor) informado.');
         Exit;
      End;

      BaseDados_PCP.db_OrdemProducao.Append;
      BaseDados_PCP.db_OrdemProducao.FieldByName('NATUREZA').AsString := 'PEDIDO';
      BaseDados_PCP.db_OrdemProducao.Post;
      nOrdemProducao :=BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

      // Executar Procedure no servidor SQL para gerar ordem de produ��o dentro
      // dos crit�rios selecionados pelo usu�rio
      SP_GerarOP.ParamByName('NEMPRESA').AsInteger         := FSistema.Empresa;
      SP_GerarOP.ParamByName('NORDEMPRODUCAO').AsInteger   := nOrdemProducao;
      SP_GerarOP.ParamByName('DTINICIAL').AsDateTime       := dtDataIni;
      SP_GerarOP.ParamByName('DTFINAL').AsDateTime         := dtDataFim;
      SP_GerarOP.ParamByName('NCLIENTE').AsInteger         := StrToIntDef(strCliente,0);
      SP_GerarOP.ParamByName('NREPRESENTANTE').AsInteger   := StrToIntDef(strVendedor,0);
      SP_GerarOP.ParamByName('NLOTE').AsInteger            := nLoteProducao;
      SP_GerarOP.ExecProc;
      SP_GerarOP.close;

      FUsuario.prcLogUsuario('ordem de produ��o | gerar','Gerou Ordem de Produ��o ['+IntToStr(nOrdemProducao) +'] por Pedidos de Vendas. '  );

      prcRefresh;
      BaseDados_PCP.db_OrdemProducao.Locate('CODIGO', nOrdemProducao, []);

      AvisoSistema('Ordem de Produ��o gerada com sucesso!');
   end;


end;

procedure TFrmOrdemProducao.rdgFiltrarOrdemProducaoClick(Sender: TObject);
begin
   prcFiltrarOrdemProducao;

end;

procedure TFrmOrdemProducao.prcFiltrarOrdemProducao;
begin

  BaseDados_PCP.db_OrdemProducao.Close;
  BaseDados_PCP.db_OrdemProducao.SQL.Clear;
  BaseDados_PCP.db_OrdemProducao.SQL.Add('SELECT * FROM PCP_ORDEMPRODUCAO  ');
  BaseDados_PCP.db_OrdemProducao.SQL.Add('WHERE                            ');
  BaseDados_PCP.db_OrdemProducao.SQL.Add('EMPRESA=:EMPRESA                  ');
  {
  BaseDados_PCP.db_OrdemProducao.SQL.Add('AND                              ');
  BaseDados_PCP.db_OrdemProducao.SQL.Add('REFERENCIA LIKE :SREFERENCIA          ');
   BaseDados_PCP.db_OrdemProducao.ParamByName('SREFERENCIA').AsString :='%%';
  }

  if rdgFiltrarOrdemProducao.ItemIndex=1 then
  begin
     BaseDados_PCP.db_OrdemProducao.SQL.Add('AND ');
     BaseDados_PCP.db_OrdemProducao.SQL.Add('APROVADO='+QuotedStr('N'));
  end;

  if rdgFiltrarOrdemProducao.ItemIndex=2 then
  begin
     BaseDados_PCP.db_OrdemProducao.SQL.Add('AND ');
     BaseDados_PCP.db_OrdemProducao.SQL.Add('APROVADO='+QuotedStr('S'));
  end;

  if rdgFiltrarOrdemProducao.ItemIndex=3 then
  begin
     BaseDados_PCP.db_OrdemProducao.SQL.Add('AND ');
     BaseDados_PCP.db_OrdemProducao.SQL.Add('ENCERRADO='+QuotedStr('N'));
  end;

  if rdgFiltrarOrdemProducao.ItemIndex=4 then
  begin
     BaseDados_PCP.db_OrdemProducao.SQL.Add('AND ');
     BaseDados_PCP.db_OrdemProducao.SQL.Add('ENCERRADO='+QuotedStr('S'));
  end;

   BaseDados_PCP.db_OrdemProducao.open;
   prcRefresh;
   DimensionarGrid(DBGrid1,self);
   DimensionarGrid(DBGrid2,self);

end;
procedure TFrmOrdemProducao.prcRefresh;
begin
   BaseDados_PCP.db_OrdemProducao.Refresh;
   BaseDados_PCP.db_OrdemProducaoItens.Refresh;

   db_OPReferencias.close;
   db_OPReferencias.Open;
end;


procedure TFrmOrdemProducao.GradeAbrir;
begin

   nOrdemProducao := BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;

   FrmOrdemProducaoReferencias :=TFrmOrdemProducaoReferencias.create(self);
   FrmOrdemProducaoReferencias.ShowModal;

   FUsuario.prcLogUsuario('ordem de produ��o | alterar grade','alterou grade de quantidade da OP ' + IntToStr(nOrdemProducao) );

   BaseDados_PCP.db_OrdemProducao.Edit;
   BaseDados_PCP.db_OrdemProducao.FieldByName('QTDE_TOTAL').AsFloat :=fncOrdemProducaoSomar(nOrdemProducao);
   if BaseDados_PCP.db_OrdemProducao.FieldByName('QTDE_RESTANTE').AsFloat<=0 then
      BaseDados_PCP.db_OrdemProducao.FieldByName('QTDE_RESTANTE').AsFloat :=fncOrdemProducaoSomar(nOrdemProducao);
   BaseDados_PCP.db_OrdemProducao.Post;

end;

procedure TFrmOrdemProducao.MontarFaseGrade(lAcao:String);
begin

   lAcao:=uppercase(trim(lAcao));

   nOrdemProducao := BaseDados_PCP.db_OrdemProducao.FieldByName('CODIGO').AsInteger;
   BaseDados_PCP.db_OrdemProducaoItens.close;
   BaseDados_PCP.db_OrdemProducaoItens.Open;
   ProgressBar1.Max       :=BaseDados_PCP.db_OrdemProducaoItens.RecordCount;
   ProgressBar1.Position  :=0;


   while not BaseDados_PCP.db_OrdemProducaoItens.eof do
   begin
      strReferencia := UpperCase( Trim(BaseDados_PCP.db_OrdemProducaoItens.FieldByName('REFERENCIA').AsString) );

      // criar lista da ordem de grade
      SP_MontarGrade.ParamByName('NEMPRESA').AsInteger        :=  FSistema.Empresa;
      SP_MontarGrade.ParamByName('NORDEMPRODUCAO').AsInteger  :=  nOrdemProducao;
      SP_MontarGrade.ParamByName('NFASEGRADE').AsInteger      :=  StrToIntDef( fncProduto_retCampo(strReferencia,'FASE'),0);
      SP_MontarGrade.ParamByName('ACAO').AsString             :=  lAcao;
      SP_MontarGrade.ExecProc;
      SP_MontarGrade.Close;
      ProgressBar1.Position  := ProgressBar1.Position  + 1 ;
      Application.ProcessMessages;
      BaseDados_PCP.db_OrdemProducaoItens.Next;
      Application.ProcessMessages;
   end;
   ProgressBar1.Position  :=0;

end;

end.
