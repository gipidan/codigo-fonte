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

unit FPedidoAprovarVenda;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Menus, DB,
   MemDS, Uni, AdvEdit,
   Grids, BaseGrid, DBAdvGrid, AdvGroupBox, AdvQueryDialog, clisted,
   DBAdvEd,  DBGrids, AdvEdBtn, DBAdvEdBtn,  ISFEdit,
   ISFEditbtn, ISFdbEditbtn, AdvMemo, DBAdvMemo, AdvmINIs,
   uEstSearchDialogZeos, IDBEdit, FFrameBotoes, AdvGrid, AdvObj, DBAccess,
   FFrameBarra, ComCtrls, Classe.Global;

type
   TFrmPedidoAprovarVenda = class(TForm)
      AdvGroupBox1: TAdvGroupBox;
      AdvGroupBox3: TAdvGroupBox;
      AdvGroupBox2: TAdvGroupBox;
      dbGrid_Produtos: TDBGrid;
      db_Pedido: TUniQuery;
      db_PedidoItens: TUniQuery;
      ds_Pedido: TDataSource;
      ds_PedidoItens: TDataSource;
      POP_Produto: TPopupMenu;
      ProcurarProduto1: TMenuItem;
      DBAdvGrid1: TDBGrid;
    db_PedidoCODIGO: TIntegerField;
    db_PedidoTITULO: TStringField;
    db_PedidoDATA: TDateTimeField;
    db_PedidoDATA_FATURAMENTO: TDateTimeField;
    db_PedidoDATA_ENTREGA: TDateTimeField;
    db_PedidoTIPO: TStringField;
    db_PedidoCLIENTE: TIntegerField;
    db_PedidoCLIENTE_NOME: TStringField;
    db_PedidoVENDEDOR: TIntegerField;
    db_PedidoVENDEDOR_NOME: TStringField;
    db_PedidoTRANSPORTADORA: TIntegerField;
    db_PedidoTRANSPORTADORA_NOME: TStringField;
    db_PedidoFORMA_PAGTO: TIntegerField;
    db_PedidoQTDE_TOTAL: TIntegerField;
    db_PedidoVLR_TOTAL: TFloatField;
    db_PedidoAPROVADO: TStringField;
    db_PedidoSTATUS: TStringField;
    db_PedidoITENS_IMPORTADO: TStringField;
    db_PedidoIMPRESSO: TStringField;
    db_PedidoRESPONSAVEL: TStringField;
    db_PedidoItensCODIGO: TIntegerField;
    db_PedidoItensDATA: TDateTimeField;
    db_PedidoItensCLIENTE: TIntegerField;
    db_PedidoItensVENDEDOR: TIntegerField;
    db_PedidoItensTABELA: TIntegerField;
    db_PedidoItensFORMAPAGTO: TIntegerField;
    db_PedidoItensTRANSPORTADORA: TIntegerField;
    db_PedidoItensTIPO: TStringField;
    db_PedidoItensGRADE_TAMANHOS: TIntegerField;
    db_PedidoItensDESCRICAO: TStringField;
    db_PedidoItensUND: TStringField;
    db_PedidoItensQTDE: TFloatField;
    db_PedidoItensVLR_UNIT: TFloatField;
    db_PedidoItensDESCONTO: TFloatField;
    db_PedidoItensVLR_DESCONTO: TFloatField;
    db_PedidoItensVLR_IMPOSTOS: TFloatField;
    db_PedidoItensVLR_TOTAL: TFloatField;
    db_PedidoItensQTDE_LIBERADA: TIntegerField;
    db_PedidoItensQTDE_FATURADA: TIntegerField;
    db_PedidoItensQTDE_CANCELADA: TIntegerField;
    db_PedidoPRODUZINDO: TStringField;
    db_PedidoORDEMPRODUCAO: TIntegerField;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    db_PedidoVLR_DESCONTO: TFloatField;
    db_PedidoVLR_PRODUTOS: TFloatField;
    db_PedidoFORMA_PAGTO_NOME: TStringField;
    Panel1: TPanel;
    Btnaprovar: TBitBtn;
    Btndesaprovar: TBitBtn;
    Btnsair: TBitBtn;
    BtnProcurar: TBitBtn;
    dbeditPedidoProcurar: TIDBEditDialog;
    SP_Aprovar: TUniStoredProc;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox1: TGroupBox;
    EditPedido: TLabeledEdit;
    rdgFiltroPedidos: TRadioGroup;
    db_PedidoItensEMPRESA: TIntegerField;
    db_PedidoItensAPROVADO: TStringField;
    db_PedidoItensORDEMPRODUCAO: TIntegerField;
    db_PedidoItensREFERENCIA: TStringField;
    SP_MovimentoAtualizar: TUniStoredProc;
    ProgressBar1: TProgressBar;
    PopupMenu1: TPopupMenu;
    Desaprovartudo1: TMenuItem;
    AprovarTudo1: TMenuItem;
    db_ChecarAtrasos: TUniQuery;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure db_PedidoAfterScroll(DataSet: TDataSet);
    procedure dbGrid_ProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure db_PedidoAfterOpen(DataSet: TDataSet);
    procedure BtnsairClick(Sender: TObject);
    procedure BtnaprovarClick(Sender: TObject);
    procedure BtnProcurarClick(Sender: TObject);
    procedure BtndesaprovarClick(Sender: TObject);
    procedure EditPedidoChange(Sender: TObject);
    procedure rdgFiltroPedidosClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Desaprovartudo1Click(Sender: TObject);
    procedure AprovarTudo1Click(Sender: TObject);
    procedure db_ChecarAtrasosBeforeOpen(DataSet: TDataSet);
    private

       blChecarZerados : Boolean;
       procedure prcFiltrarPedidos;
      { Private declarations }


   public
      { Public declarations }

   end;

var
   FrmPedidoAprovarVenda: TFrmPedidoAprovarVenda;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global,
  FProdutosQuantidadeGrade, FOrdemServicoGeraParcelas, Classe.Usuarios;

{$R *.dfm}

procedure TFrmPedidoAprovarVenda.FormCreate(Sender: TObject);
begin
   //

   FUsuario.prcLogUsuario('pedido de venda | aprovar','Acessou modulo Aprova��o de Pedido de Venda' );

   db_Pedido.Open;
   db_PedidoItens.Open;

   Btnaprovar.Visible    :=(fncUsuario_retCampo(nUsuario,'PERMISSAO_PEDIDOVENDAAPROVAR')='S');
   Btndesaprovar.Visible :=(fncUsuario_retCampo(nUsuario,'PERMISSAO_PEDIDOVENDAAPROVAR')='S');

end;

procedure TFrmPedidoAprovarVenda.AprovarTudo1Click(Sender: TObject);
begin
   ProgressBar1.Max :=db_Pedido.RecordCount;
   ProgressBar1.Position := 0;
   db_Pedido.first;

   db_Pedido.close;
   db_Pedido.open;
   while not db_Pedido.Eof do
   begin
      nPedidoVenda := 0;
      nPedidoVenda := db_Pedido.FieldByName('CODIGO').AsInteger;

      // Enviar comando para aprovar pedido
      SP_Aprovar.ParamByName('NEMPRESA').AsInteger :=  FSistema.Empresa;
      SP_Aprovar.ParamByName('NPEDIDO').AsInteger  :=  nPedidoVenda;
      SP_Aprovar.ParamByName('ACAO').AsString      :=  'APROVAR';
      SP_Aprovar.ExecProc;
      SP_Aprovar.close;

      // Enviar comando para atualizar movimenta��o de produtos
      SP_MovimentoAtualizar.ExecProc;
      SP_MovimentoAtualizar.close;

      ProgressBar1.Position := ProgressBar1.Position + 1;
      Application.ProcessMessages;
      db_Pedido.Next;
   end;

   db_Pedido.Refresh;
   Aviso('concluido');
   ProgressBar1.Position := 0;

end;


procedure TFrmPedidoAprovarVenda.BtnaprovarClick(Sender: TObject);
begin

   nPedidoVenda   := 0;
   nPedidoVenda   := db_Pedido.FieldByName('CODIGO').AsInteger;
   inCliente      := db_Pedido.FieldByName('CLIENTE').AsInteger;
   inVendedor     := db_Pedido.FieldByName('VENDEDOR').AsInteger;
   nValorDigitado := db_Pedido.FieldByName('VLR_TOTAL').AsFloat;

   nvComissao      := StrToFloatDef(fncCliente_retCampo(inVendedor,'COMISSAO'),0);
   nVlrComissao    := fncGeraPercentual(nValorDigitado, nvComissao);

   if db_Pedido.IsEmpty then
   begin
      AvisoSistemaErro('Selecione um Pedido');
      exit;
   end;

   if (db_Pedido.FieldByName('APROVADO').AsString = 'S') or
     (db_Pedido.FieldByName('APROVADO').AsString = 'SIM') then
   Begin
      AvisoSistemaErro('Pedido j� foi aprovado (liberado para produ��o).');
      abort;
   End;

   if ChecarCreditoCliente(db_Pedido.FieldByName('CLIENTE').AsInteger) Then
   begin
      AvisoSistemaErro('Aprova��o n�o autorizada!'+#13+#10+
                   'O cliente referente ao pedido que esta tentando aprovar '+
                   'est� com cr�dito bloqueado.');
      Abort;
   end;

   blChecarZerados :=False;
   While not db_PedidoItens.Eof do
   Begin
      if db_PedidoItens.FieldByName('QTDE').AsFloat <= 0 Then
         blChecarZerados := True;

      db_PedidoItens.Next;
   End;
   db_PedidoItens.First;

   if blChecarZerados=True then
   begin
      AvisoSistemaErro('Existe produto com quantidade zerada.');
      Abort;
   end;
   // blChecarZerados

   blChecarZerados :=False;
   While not db_PedidoItens.Eof do
   Begin
      if db_PedidoItens.FieldByName('VLR_UNIT').AsFloat <= 0 Then
         blChecarZerados := True;

      db_PedidoItens.Next;
   End;
   db_PedidoItens.First;

   if blChecarZerados=True then
   begin
      AvisoSistemaErro('Existe produto com valor zerado.');
      Abort;
   end;

   db_ChecarAtrasos.open;
   try
      if db_ChecarAtrasos.RecordCount>0 then
      begin
         BeepAlerta;
         if   AvisoQuestao('Cliente est� com pagamento em atraso',
                          'H� pendencias de pagamento deste cliente...'+
                           sLineBreak+
                           sLineBreak+
                          'Deseja continuar aprova��o?')=false then
         Abort;
      end;
   finally
      db_ChecarAtrasos.close;
   end;


   // se for VESTIS
   if FSistema.ExeName='VESTIS' then
   begin


      // Enviar comando para aprovar pedido
      SP_Aprovar.ParamByName('NEMPRESA').AsInteger :=  FSistema.Empresa;
      SP_Aprovar.ParamByName('NPEDIDO').AsInteger  :=  nPedidoVenda;
      SP_Aprovar.ParamByName('ACAO').AsString      :=  'APROVAR';
      SP_Aprovar.ExecProc;
      SP_Aprovar.close;

      // Enviar comando para atualizar movimenta��o de produtos
      SP_MovimentoAtualizar.ExecProc;
      SP_MovimentoAtualizar.close;

      FUsuario.prcLogUsuario('pedido de venda | aprovar','Aprovou Pedido de Venda' + #13 + #10 +
                 AcaoUserName[0]
                 );


      db_Pedido.Refresh;
      AvisoSistema('Pedido aprovado com sucesso.');

   end; //if FSistema.ExeName='VESTIS' then

   // ---------------------------------------------------------------------
   // se nao for VESTIS
   // ---------------------------------------------------------------------
   if FSistema.ExeName<>'VESTIS' then
   begin
     //
      // Enviar comando para aprovar pedido
      SP_Aprovar.ParamByName('NEMPRESA').AsInteger :=  FSistema.Empresa;
      SP_Aprovar.ParamByName('NPEDIDO').AsInteger  :=  nPedidoVenda;
      SP_Aprovar.ParamByName('ACAO').AsString      :=  'APROVAR';
      SP_Aprovar.ExecProc;
      SP_Aprovar.close;

      FUsuario.prcLogUsuario('ordem de servi�o | aprovar','Aprovou ordem de servi�o' + #13 + #10 +
                 AcaoUserName[0]
                 );


     db_Pedido.Refresh;
     AvisoSistema('Ordem de Servi�o aprovada com sucesso.');


     if inVendedor>0 then
     begin
        prcComissaoPagarPedidos( inCliente,
                                 inVendedor,
                                 nPedidoVenda,
                                 nValorDigitado,
                                'INCLUIR');


         pContasPagarBaixaParcial(
           inVendedor,
           Date,
           Date+30,
           '0',
           'PEDIDO-'+IntToStr(nPedidoVenda),
           nVlrComissao,
           '',
           0,
           'COMISS�O PROVENIENTE DO PEDIDO: ' + IntToStr(nPedidoVenda),
           '');

     end; //if FSistema.ExeName<>'VESTIS' then



     FrmOrdemServicoGeraParcelas :=TFrmOrdemServicoGeraParcelas.Create(self);
     FrmOrdemServicoGeraParcelas.ShowModal;


   end;

   nvComissao      := 0;
   nVlrComissao    := 0;

end;

procedure TFrmPedidoAprovarVenda.BtndesaprovarClick(Sender: TObject);
begin

   nPedidoVenda   := 0;
   nPedidoVenda   := db_Pedido.FieldByName('CODIGO').AsInteger;
   inCliente      := db_Pedido.FieldByName('CLIENTE').AsInteger;
   inVendedor     := db_Pedido.FieldByName('VENDEDOR').AsInteger;
   nValorDigitado := db_Pedido.FieldByName('VLR_TOTAL').AsFloat;

   nvComissao      := StrToFloatDef(fncCliente_retCampo(inVendedor,'COMISSAO'),0);
   nVlrComissao    := fncGeraPercentual(nValorDigitado, nvComissao);

   blChecarZerados :=False;

   if db_Pedido.IsEmpty then
   begin
      AvisoSistemaErro('Selecione um Pedido');
      exit;
   end;

   // desaprovar
   if (db_Pedido.FieldByName('APROVADO').AsString = 'N') or
     (db_Pedido.FieldByName('APROVADO').AsString = 'NAO') then
   Begin
      AvisoSistemaErro('Pedido j� foi desaprovado (reaberto).' +
        db_Pedido.FieldByName('RESPONSAVEL').AsString);
      abort;
   End;

   if (db_Pedido.FieldByName('PRODUZINDO').AsString = 'S') or
     (db_Pedido.FieldByName('PRODUZINDO').AsString = 'SIM') then
   Begin
      AvisoSistemaErro('Pedido j� foi enviado para Produ��o e n�o pode ser desaprovado (reaberto). ');
      abort;
   End;

   if (db_Pedido.FieldByName('STATUS').AsString = 'S') or
     (db_Pedido.FieldByName('STATUS').AsString = 'SIM') then
   Begin
      AvisoSistemaErro('Pedido j� foi faturado e n�o pode ser desaprovado (reaberto). ');
      abort;
   End;

   if (db_Pedido.FieldByName('STATUS').AsString = 'C') or
     (db_Pedido.FieldByName('STATUS').AsString = 'CANCELADO') then
   Begin
      AvisoSistemaErro('Pedido foi cancelado e pode ser desaprovado (reaberto). ');
      abort;
   End;


   if FSistema.ExeName='VESTIS' then
   begin
      // Enviar comando para aprovar pedido
      SP_Aprovar.ParamByName('NEMPRESA').AsInteger :=  FSistema.Empresa;
      SP_Aprovar.ParamByName('NPEDIDO').AsInteger  :=  nPedidoVenda;
      SP_Aprovar.ParamByName('ACAO').AsString      :=  'DESAPROVAR';
      SP_Aprovar.ExecProc;
      SP_Aprovar.close;

      // Enviar comando para atualizar movimenta��o de produtos
      SP_MovimentoAtualizar.ExecProc;
      SP_MovimentoAtualizar.close;

      FUsuario.prcLogUsuario('pedido de venda | desaprovar','Desaprovou (reabriu) Pedido de Venda' + #13 + #10 +
                 AcaoUserName[0]
                 );


      db_Pedido.Refresh;
      aviso('Pedido desaprovado (reaberto) com sucesso.');
   end;


   if FSistema.ExeName<>'VESTIS' then
   begin
      // Enviar comando para aprovar pedido
      SP_Aprovar.ParamByName('NEMPRESA').AsInteger :=  FSistema.Empresa;
      SP_Aprovar.ParamByName('NPEDIDO').AsInteger  :=  nPedidoVenda;
      SP_Aprovar.ParamByName('ACAO').AsString      :=  'DESAPROVAR';
      SP_Aprovar.ExecProc;
      SP_Aprovar.close;

      // Enviar comando para atualizar movimenta��o de produtos
      //SP_MovimentoAtualizar.ExecProc;
      //SP_MovimentoAtualizar.close;

      FUsuario.prcLogUsuario('ordem de servi�o | desaprovar','Desaprovou (reabriu) ordem de servi�o' + #13 + #10 +
                 AcaoUserName[0]
                 );


     if inVendedor>0 then
     begin
        prcComissaoPagarPedidos( inCliente,
                                 inVendedor,
                                 nPedidoVenda,
                                 nValorDigitado,
                                'DELETAR');


         pContasPagarBaixaParcial(
           inVendedor,
           Date,
           Date+30,
           '0',
           'PEDIDO-'+IntToStr(nPedidoVenda),
           0,
           '',
           0,
           '',
           'D');

     end;

      db_Pedido.Refresh;
      AvisoSistema('Ordem de Servi�o desaprovada (reaberta) com sucesso.');
   end;


end;

procedure TFrmPedidoAprovarVenda.BtnProcurarClick(Sender: TObject);
begin

   // procurar
   if dbeditPedidoProcurar.Execute then
   begin
      if not db_Pedido.active then
         db_Pedido.Open;
      db_Pedido.Locate('CODIGO', dbeditPedidoProcurar.ResultFieldAsInteger('CODIGO'), []);
   end;



end;

procedure TFrmPedidoAprovarVenda.BtnsairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmPedidoAprovarVenda.dbGrid_ProdutosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   if KEY=VK_F2 then
   begin
      strProduto :=db_PedidoItens.FieldByName('PRODUTO').AsString;
      FrmProdutosQuantidadeGrade := TFrmProdutosQuantidadeGrade.Create(self);
      FrmProdutosQuantidadeGrade.ShowModal;
      strProduto :='';
   end;

end;

procedure TFrmPedidoAprovarVenda.db_PedidoAfterScroll(DataSet: TDataSet);
begin

   AcaoUserName[0] :='';

   AcaoUserName[0] :=
   'C�DIGO.....: ' + db_Pedido.FieldByName('CODIGO').AsString  +    #13 + #10 +
   'CLIENTE....: ' + db_Pedido.FieldByName('CLIENTE').AsString+'-'+db_Pedido.FieldByName('CLIENTE_NOME').AsString +    #13 + #10 +
   'QUANTIDADE.: ' + FormatFloat('###,##0',  db_Pedido.FieldByName('QTDE_TOTAL').AsFloat) + #13 + #10 +
   'VALOR......: ' + FormatFloat('###,##0.00',  db_Pedido.FieldByName('VLR_TOTAL').AsFloat);


end;

procedure TFrmPedidoAprovarVenda.Desaprovartudo1Click(Sender: TObject);
begin
   ProgressBar1.Max :=db_Pedido.RecordCount;
   ProgressBar1.Position := 0;
   db_Pedido.first;

   db_Pedido.close;
   db_Pedido.open;
   while not db_Pedido.Eof do
   begin
      nPedidoVenda := 0;
      nPedidoVenda := db_Pedido.FieldByName('CODIGO').AsInteger;

      // Enviar comando para aprovar pedido
      SP_Aprovar.ParamByName('NEMPRESA').AsInteger :=  FSistema.Empresa;
      SP_Aprovar.ParamByName('NPEDIDO').AsInteger  :=  nPedidoVenda;
      SP_Aprovar.ParamByName('ACAO').AsString      :=  'DESAPROVAR';
      SP_Aprovar.ExecProc;
      SP_Aprovar.close;

      // Enviar comando para atualizar movimenta��o de produtos
      SP_MovimentoAtualizar.ExecProc;
      SP_MovimentoAtualizar.close;


      ProgressBar1.Position := ProgressBar1.Position + 1;
      Application.ProcessMessages;
      db_Pedido.Next;
   end;

   db_Pedido.Refresh;
   Aviso('concluido');
   ProgressBar1.Position := 0;


end;

procedure TFrmPedidoAprovarVenda.EditPedidoChange(Sender: TObject);
begin
   db_Pedido.Locate('CODIGO', StrToIntDef(EditPedido.Text,0), []);
end;

procedure TFrmPedidoAprovarVenda.FormActivate(Sender: TObject);
begin
   db_Pedido.Refresh;
   db_PedidoItens.Refresh;
   rdgFiltroPedidosClick(Sender);

end;

procedure TFrmPedidoAprovarVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   FUsuario.prcLogUsuario('pedido de venda | aprovar','saiu do modulo Aprova��o de Pedido de Venda' );
   //
   FreeAndNil(FrmPedidoAprovarVenda);

end;

procedure TFrmPedidoAprovarVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_escape then
      close;

end;

procedure TFrmPedidoAprovarVenda.FormResize(Sender: TObject);
begin
  DimensionarGrid(DBAdvGrid1,self);
  DimensionarGrid(dbGrid_Produtos,self);

end;

procedure TFrmPedidoAprovarVenda.FormShow(Sender: TObject);
begin
     if FSistema.ExeName<>'VESTIS' then
     begin
        FrmFrameBarra1.LblBarraTitulo.Caption :='Aprova��o de Ordem de Servi�os';
     end;

   rdgFiltroPedidosClick(Sender);

end;

procedure TFrmPedidoAprovarVenda.rdgFiltroPedidosClick(Sender: TObject);
begin
   prcFiltrarPedidos;
   EditPedido.SetFocus;
end;

procedure TFrmPedidoAprovarVenda.db_ChecarAtrasosBeforeOpen(DataSet: TDataSet);
begin
   db_ChecarAtrasos.ParamByName('EMPRESA').AsInteger := FSistema.Empresa;
   db_ChecarAtrasos.ParamByName('CLIENTE').AsInteger := db_Pedido.FieldByName('CLIENTE').AsInteger;
end;

procedure TFrmPedidoAprovarVenda.db_PedidoAfterOpen(DataSet: TDataSet);
begin
  DimensionarGrid(DBAdvGrid1,self);
  DimensionarGrid(dbGrid_Produtos,self);

end;

procedure TFrmPedidoAprovarVenda.prcFiltrarPedidos;
begin

  db_PedidoItens.Close;
  db_Pedido.Close;

  db_Pedido.SQL.Clear;
  db_Pedido.SQL.Add('SELECT * FROM VIEW_PEDIDOSVENDAS  ');


  if rdgFiltroPedidos.ItemIndex=0 then
  begin
     db_Pedido.SQL.Add('WHERE');
     db_Pedido.SQL.Add('APROVADO IN (''N'',''NAO'')         ');
  end;

  if rdgFiltroPedidos.ItemIndex=1 then
  begin
     db_Pedido.SQL.Add('WHERE');
     db_Pedido.SQL.Add('APROVADO IN (''S'',''SIM'')         ');
  end;

  if rdgFiltroPedidos.ItemIndex=2 then
  begin
     db_Pedido.SQL.Add('WHERE');
     db_Pedido.SQL.Add('STATUS IN (''S'',''SIM'')         ');
  end;

  db_Pedido.open;
  db_PedidoItens.open;

end;




end.



