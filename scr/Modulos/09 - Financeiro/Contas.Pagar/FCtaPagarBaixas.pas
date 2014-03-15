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

unit FCtaPagarBaixas;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, DB, MemDS, Uni, StdCtrls,
   Buttons, ExtCtrls, Mask, DBCtrls, BTOdeum, Menus,  ISFEdit,
   ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DBAccess,
   FFrameBarra,
   Classe.Global;

type
   TFrmCtaPagarBaixas = class(TForm)
      db_CtaPagar: TUniQuery;
      DS_CtaPagar: TDataSource;
      Panel1: TPanel;
      BtnSair: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnEstornar: TBitBtn;
      BtnLocalizar: TBitBtn;
      PainelMsg: TPanel;
      Label12: TLabel;
      SP_BaixaCtaPagar: TUniStoredProc;
    db_CtaPagarCODIGO: TIntegerField;
    db_CtaPagarFORNECEDOR: TIntegerField;
    db_CtaPagarNOTAFISCAL: TIntegerField;
    db_CtaPagarSERIENF: TStringField;
    db_CtaPagarDATA: TDateTimeField;
    db_CtaPagarVENCIMENTO: TDateTimeField;
    db_CtaPagarDATA_PAGTO: TDateTimeField;
    db_CtaPagarDOCUMENTO: TStringField;
    db_CtaPagarPARCELA: TIntegerField;
    db_CtaPagarCFOP: TIntegerField;
    db_CtaPagarESPECIE: TStringField;
    db_CtaPagarTIPO: TStringField;
    db_CtaPagarVALOR: TFloatField;
    db_CtaPagarVALOR_PAGO: TFloatField;
    db_CtaPagarVALOR_SALDO: TFloatField;
    db_CtaPagarCONTA_CREDITO: TIntegerField;
    db_CtaPagarCHQ_BANCO: TStringField;
    db_CtaPagarCHQ_AGENCIA: TStringField;
    db_CtaPagarCHQ_CONTA_CORRENTE: TStringField;
    db_CtaPagarCHQ_CODCIDADE: TStringField;
    db_CtaPagarCHQ_NOMECIDADE_UF: TStringField;
    db_CtaPagarCHQ_EMITENTE: TStringField;
    db_CtaPagarCHQ_DESTINO: TStringField;
    db_CtaPagarFORMA_PAGTO: TIntegerField;
    db_CtaPagarDEPARTAMENTO: TIntegerField;
    db_CtaPagarDESCONTO: TFloatField;
    db_CtaPagarPLANO_CONTAS: TStringField;
    db_CtaPagarHISTORICO: TStringField;
    db_CtaPagarOBSERVACAO: TStringField;
    db_CtaPagarGERARRECIBO: TStringField;
    db_CtaPagarNOSSONUMERO: TStringField;
    db_CtaPagarDESPESAS_BOLETO: TFloatField;
    db_CtaPagarDESPESAS_JUROS: TFloatField;
    db_CtaPagarDESPESAS_MULTA: TFloatField;
    db_CtaPagarDESPESAS_CARTORIO: TFloatField;
    db_CtaPagarDESPESAS_TOTAL: TFloatField;
    db_CtaPagarATRASADA: TStringField;
    db_CtaPagarQUITADO: TStringField;
    db_CtaPagarMOTIVO_BAIXA: TIntegerField;
    db_CtaPagarUSER_NOME: TStringField;
    db_CtaPagarUSER_DATA: TDateTimeField;
    db_CtaPagarUSER_HORA: TTimeField;
    db_CtaPagarCOMPLEMENTAR: TStringField;
    FrmFrameBarra1: TFrmFrameBarra;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    EditDocumento: TDBEdit;
    DBEdit8: TDBEdit;
    EditCliente: TIDBEditDialog;
    EditNomeFornecedor: TEdit;
    DBEdit10: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit4: TDBEdit;
    EditDespesas: TDBEdit;
    EditValorPago: TDBEdit;
    EditAcrescimos: TDBEdit;
    EditDescontos: TDBEdit;
    EditDataPagto: TDBEdit;
    GroupBox1: TGroupBox;
    EditHistorico: TDBEdit;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    DBEdit7: TDBEdit;
    GBoxCreditar: TGroupBox;
    EditConta_Credito: TIDBEditDialog;
    EditContaCorrente: TEdit;
    EditNomeContaCaixa: TEdit;
    EditConta_Caixa: TIDBEditDialog;
    EditPlano: TIDBEditDialog;
    EditNomePlanoContas: TEdit;
    db_CtaPagarCONTACAIXA: TIntegerField;
    db_CtaPagarDESPESAS_JUROSVALOR: TFloatField;
    db_CtaPagarDESCONTOVALOR: TFloatField;
    dbDlgProcurar: TIDBEditDialog;
      procedure BtnSairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure db_CtaPagarAfterScroll(DataSet: TDataSet);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnSalvarClick(Sender: TObject);
      procedure db_CtaPagarAfterPost(DataSet: TDataSet);
      procedure BtnEstornarClick(Sender: TObject);
      procedure EditDataPagtoEnter(Sender: TObject);
      procedure EditDescontosEnter(Sender: TObject);
      procedure EditAcrescimosEnter(Sender: TObject);
      procedure EditDespesasEnter(Sender: TObject);
      procedure EditValorPagoEnter(Sender: TObject);
      procedure EditContaCorrenteEnter(Sender: TObject);
      procedure BtnLocalizarClick(Sender: TObject);
      procedure EditHistoricoEnter(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

      Procedure Proteger;
      procedure db_CtaPagarAfterOpen(DataSet: TDataSet);
    procedure db_CtaPagarDESPESAS_BOLETOChange(Sender: TField);
    procedure db_CtaPagarDESPESAS_MULTAChange(Sender: TField);
    procedure db_CtaPagarDESPESAS_CARTORIOChange(Sender: TField);
    procedure db_CtaPagarDESCONTOChange(Sender: TField);
    procedure db_CtaPagarDESPESAS_JUROSChange(Sender: TField);

   private
       nValorDesconto, nValorjuros : Real;

    procedure CalcularValoresTotais;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmCtaPagarBaixas: TFrmCtaPagarBaixas;

implementation

uses FBaseDados, Global, Biblioteca,
  SQLServer, Classe.Usuarios;

{$R *.dfm}

procedure TFrmCtaPagarBaixas.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCtaPagarBaixas.FormCreate(Sender: TObject);
begin

   wTexto[1] := '';

end;

procedure TFrmCtaPagarBaixas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_CtaPagar.Cancel;
   db_CtaPagar.close;

   FreeAndNil( FrmCtaPagarBaixas );

End;

procedure TFrmCtaPagarBaixas.db_CtaPagarAfterScroll(DataSet: TDataSet);
begin

   If db_CtaPagar.FieldByName('QUITADO').AsString = 'N' then
   Begin
      Caption := 'Contas a Pagar - [Titulo Aberto]';
   End;

   If db_CtaPagar.FieldByName('QUITADO').AsString = 'S' then
   Begin
      Caption := 'Contas a Pagar - [Titulo j� foi baixado]';
   End;

   Proteger;

end;

procedure TFrmCtaPagarBaixas.db_CtaPagarDESCONTOChange(Sender: TField);
begin
CalcularValoresTotais;
end;

procedure TFrmCtaPagarBaixas.db_CtaPagarDESPESAS_BOLETOChange(Sender: TField);
begin
   CalcularValoresTotais;
end;

procedure TFrmCtaPagarBaixas.db_CtaPagarDESPESAS_CARTORIOChange(Sender: TField);
begin
   CalcularValoresTotais;

end;

procedure TFrmCtaPagarBaixas.db_CtaPagarDESPESAS_JUROSChange(Sender: TField);
begin
CalcularValoresTotais;
end;

procedure TFrmCtaPagarBaixas.db_CtaPagarDESPESAS_MULTAChange(Sender: TField);
begin
   CalcularValoresTotais;

end;

procedure TFrmCtaPagarBaixas.BtnCancelarClick(Sender: TObject);
begin
   EditDocumento.Clear;
   db_CtaPagar.Cancel;
   db_CtaPagar.close;

end;

procedure TFrmCtaPagarBaixas.BtnSalvarClick(Sender: TObject);
var
   nValorReal, nValorPago, nNovoValor: Real;
   nNovoCodigo: Integer;
   nGerarRestante: Boolean;
begin
   AcaoUserName[0] := 'Baixou(quitou) Documento. ' + #13 + #10 +
     'Documento.......: ' + db_CtaPagar.FieldByName('DOCUMENTO').AsString + #13
     + #10 + 'Valor...........: ' + FormatFloat('###,##0.00',
     db_CtaPagar.FieldByName('VALOR_PAGO').AsFloat) + #13 + #10 +
     'Nome Fornecedor.: ' + EditNomeFornecedor.Text;

   If empty(EditDocumento.Text) then
   begin
      BeepCritica;
      informar('n�o h� documento para baixar');
      Exit;
   end;

   If db_CtaPagar.FieldByName('QUITADO').AsString = 'S' then
   begin
      BeepCritica;
      informar('Documento j� foi baixado');
      Exit;
   end;

   If empty(db_CtaPagar.FieldByName('DATA_PAGTO').AsString) then
   begin
      BeepCritica;
      informar('Informe a data de pagamento do Documento');
      EditDataPagto.SetFocus;
      Exit;
   end;

   If (db_CtaPagar.FieldByName('VALOR_PAGO').AsFloat <= 0) then
   begin
      BeepCritica;
      if pergunta
        ('Campo Valor Pago est� sem valor, deseja cancelar baixa e corrigir? ')
      then
      begin
         EditValorPago.SetFocus;
         Exit;
      end;
   end;

   if empty(db_CtaPagar.FieldByName('CONTA_CREDITO').AsString) then
   begin
      BeepCritica;
      If pergunta
        ('Voc� n�o definou uma conta banc�ria para este cr�dito. Deseja corrigir?')
        = True then
      begin
         EditConta_Credito.SetFocus;
         Exit;
      end;
   end;

   // ------------------------------------------------------------------
   // ----------------- EXECUTAR PROCEDURE QUE BAIXA TITULO ------------
   // ------------------------------------------------------------------
   If (db_CtaPagar.state in [dsEdit, dsInsert]) then
      db_CtaPagar.Post;

   SP_BaixaCtaPagar.ParamByName('NCODIGO').AsInteger :=       db_CtaPagar.FieldByName('CODIGO').AsInteger;
   SP_BaixaCtaPagar.ParamByName('NFORNECEDOR').AsInteger :=   db_CtaPagar.FieldByName('FORNECEDOR').AsInteger;
   SP_BaixaCtaPagar.ParamByName('ACAO').AsString := 'BAIXAR';
   SP_BaixaCtaPagar.ExecProc;
   db_CtaPagar.Refresh;

   FUsuario.prcLogUsuario('contas pagar | baixa de documentos', AcaoUserName[0]);

 //--------------------------------------


   // ------------------------------------------------------------------
   // ---------                                                      --
   // ------------------------------------------------------------------

   nValorReal := db_CtaPagar.FieldByName('VALOR').AsFloat;
   nValorPago := db_CtaPagar.FieldByName('VALOR_PAGO').AsFloat;
   nNovoValor := (nValorReal - nValorPago);
   nNovoCodigo := 0;
   nGerarRestante := false;

   ///
   /// se valor pago for menor que o valor real, sugerir criar uma parcela
   /// complementar
   ///

   // If (nNovoValor  < db_CtaPagar.FieldByName('VALOR').AsFloat) then
   If (nValorPago < nValorReal) then
   begin
      BeepCritica;

      if AvisoQuestao('Contas a Pagar ',
        'o Valor pago � menor que o valor real. Deseja gerar uma parcela complementar?' + #13 + #10 +
        'Valor Real.........: ' + FormatFloat('###,##0.00', nValorReal) + #13 + #10 +
        'Valor Pago.........: ' + FormatFloat('###,##0.00', nValorPago) + #13 + #10 +
        'Saldo Complementar.: ' + FormatFloat('###,##0.00', nNovoValor) + #13 + #10) = True then
      Begin

         pContasPagarBaixaParcial(
           db_CtaPagar.FieldByName('FORNECEDOR').AsInteger,
           db_CtaPagar.FieldByName('DATA').AsDateTime,
           db_CtaPagar.FieldByName('DATA_PAGTO').AsDateTime + 30,
           db_CtaPagar.FieldByName('NOTAFISCAL').AsString,
           db_CtaPagar.FieldByName('DOCUMENTO').AsString+'-[P]',
           nNovoValor,
           db_CtaPagar.FieldByName('PLANO_CONTAS').AsString,
           db_CtaPagar.FieldByName('FORMA_PAGTO').AsInteger,
           'Proveniente de um pagamento parcial: ' + db_CtaPagar.FieldByName('DOCUMENTO').AsString,
           '');

         // ------------------------------------------------------------------
         // ---------                                                      --
         // ------------------------------------------------------------------
         AcaoUserName[0] := 'Gerou saldo complementear: ' + #13 + #10 +
           'Documento..........: ' + db_CtaPagar.FieldByName('DOCUMENTO').AsString + #13 + #10 +
           'Nome Fornecedor....: ' + EditNomeFornecedor.text +  #13 + #10 +
           'Valor Real.........: ' +FormatFloat('###,##0.00', nValorReal) + #13 + #10 +
           'Valor Pago.........: ' + FormatFloat('###,##0.00', nValorPago) + #13+ #10 +
           'Saldo Complementar.: ' + FormatFloat('###,##0.00', nNovoValor);

         FUsuario.prcLogUsuario('contas a pagar',AcaoUserName[0]);

      End;

   end;

 //------------------------------------


   // avisar o usu�rio sobre a baixa do documento

   if db_CtaPagar.FieldByName('QUITADO').AsString = 'S' then
   Begin
      Caption := 'Contas a Pagar - [Titulo j� foi baixado]';
   end;

   informar('Baixa concl�ida');
   wTexto[1] := db_CtaPagar.FieldByName('HISTORICO').AsString;
   db_CtaPagar.close;
   BtnLocalizar.SetFocus;

End;

procedure TFrmCtaPagarBaixas.db_CtaPagarAfterPost(DataSet: TDataSet);
begin

   If db_CtaPagar.FieldByName('QUITADO').AsString = 'N' then
   Begin
      Caption := 'Contas a Pagar - [Titulo Aberto]';
   End;

   If db_CtaPagar.FieldByName('QUITADO').AsString = 'S' then
   Begin
      Caption := 'Contas a Pagar - [Titulo j� foi baixado]';
   End;

   Proteger;
end;

procedure TFrmCtaPagarBaixas.BtnEstornarClick(Sender: TObject);
begin

   If pergunta('Confirma estorno do documento?') = False then
      Exit;

   AcaoUserName[0] := 'Estornou documento. ' + #13 + #10 + 'Documento.......: '
     + db_CtaPagar.FieldByName('DOCUMENTO').AsString + #13 + #10 +
     'Valor...........: ' + FormatFloat('###,##0.00',
     db_CtaPagar.FieldByName('VALOR').AsFloat) + #13 + #10 +
     'Nome Fornecedor.: ' + EditNomeFornecedor.Text;

   // ------------------------------------------------------------------
   // --------------- EXECUTAR PROCEDURE QUE ESTORNA TITULO ------------
   // ------------------------------------------------------------------
   If (db_CtaPagar.state in [dsEdit, dsInsert]) then
      db_CtaPagar.Post;

   SP_BaixaCtaPagar.ParamByName('NCODIGO').AsInteger :=
     db_CtaPagar.FieldByName('CODIGO').AsInteger;
   SP_BaixaCtaPagar.ParamByName('NFORNECEDOR').AsInteger :=
     db_CtaPagar.FieldByName('FORNECEDOR').AsInteger;
   SP_BaixaCtaPagar.ParamByName('ACAO').AsString := 'ESTORNAR';
   SP_BaixaCtaPagar.ExecProc;

   db_CtaPagar.Refresh;

   FUsuario.prcLogUsuario('contas pagar | baixa de documentos',AcaoUserName[0]);

   if db_CtaPagar.FieldByName('QUITADO').AsString = 'N' then
   Begin
      Caption := 'Contas a Pagar - [Titulo Aberto]';

   end;

   Aviso('Documento ' + db_CtaPagar.FieldByName('DOCUMENTO').AsString +
     ' foi reaberto.');
   db_CtaPagar.close;

   BtnLocalizar.SetFocus;

end;

procedure TFrmCtaPagarBaixas.EditDataPagtoEnter(Sender: TObject);
begin
   PainelMsg.Caption := 'Informe a data de pagamento do documento';
end;

procedure TFrmCtaPagarBaixas.EditDescontosEnter(Sender: TObject);
begin
   PainelMsg.Caption := 'Informe o desconto (se houver)';
end;

procedure TFrmCtaPagarBaixas.EditAcrescimosEnter(Sender: TObject);
begin
   PainelMsg.Caption := 'Informe o acr�scimo (se houver)';
end;

procedure TFrmCtaPagarBaixas.EditDespesasEnter(Sender: TObject);
begin
   PainelMsg.Caption := 'Informe as despesas (se houver)';
end;

procedure TFrmCtaPagarBaixas.EditValorPagoEnter(Sender: TObject);
begin
   PainelMsg.Caption := 'Informe o valor pago';
end;

procedure TFrmCtaPagarBaixas.EditContaCorrenteEnter(Sender: TObject);
begin
   PainelMsg.Caption :=
     'Informe qual conta corrente dever� ser creditado esse pagamento';
end;

procedure TFrmCtaPagarBaixas.BtnLocalizarClick(Sender: TObject);
begin

   wTexto[1] := '';
   db_CtaPagar.Cancel;

   if dbDlgProcurar.Execute then
   begin
      db_CtaPagar.close;
      db_CtaPagar.ParamByName('CODIGO').AsInteger := dbDlgProcurar.ResultFieldAsInteger('CODIGO');
      db_CtaPagar.Open;

      db_CtaPagar.edit;
      db_CtaPagar.FieldByName('DATA_PAGTO').AsDateTime :=Date;
      db_CtaPagar.FieldByName('VALOR_PAGO').AsFloat    :=dbDlgProcurar.ResultFieldAsFloat('VALOR');

      If (db_CtaPagar.state in [dsEdit, dsInsert]) then
         db_CtaPagar.Post;

      EditDataPagto.SetFocus;
   end;


end;

procedure TFrmCtaPagarBaixas.EditHistoricoEnter(Sender: TObject);
begin
   PainelMsg.Caption := 'Informe o hist�rico do documento';
end;

procedure TFrmCtaPagarBaixas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if key=VK_ESCAPE then
      close;

   If Key = VK_F4 Then
      BtnSalvar.Click;

   If Key = VK_F5 Then
      BtnCancelar.Click;

   If Key = VK_F6 Then
      BtnEstornar.Click;

   If Key = VK_F7 Then
      BtnLocalizar.Click;


end;

Procedure TFrmCtaPagarBaixas.Proteger;
begin
   {
     If db_CtaPagar.FieldByName('QUITADO').AsString='S' then
     Begin
     DS_CtaReceber.AutoEdit    :=False;
     BtnEstornar.Enabled       :=True;
     GBoxCreditar.Enabled      :=False;
     end
     else
     begin
     DS_CtaReceber.AutoEdit    :=True;
     BtnEstornar.Enabled       :=False;
     GBoxCreditar.Enabled      :=True;
     end;
   }
end;

procedure TFrmCtaPagarBaixas.db_CtaPagarAfterOpen(DataSet: TDataSet);
begin
   Proteger;
end;

Procedure TFrmCtaPagarBaixas.CalcularValoresTotais;
begin

   nValorDesconto  :=0;
   nValorjuros     :=0;

   nValorDesconto := fncGeraPercentual(db_CtaPagar.FieldByName('VALOR').AsFloat, db_CtaPagar.FieldByName('DESCONTO').AsFloat);
   nValorjuros    := fncGeraPercentual(db_CtaPagar.FieldByName('VALOR').AsFloat, db_CtaPagar.FieldByName('DESPESAS_JUROS').AsFloat);

   db_CtaPagar.FieldByName('DESPESAS_JUROSVALOR').AsFloat    := nValorjuros;
   db_CtaPagar.FieldByName('DESCONTOVALOR').AsFloat          := nValorDesconto;

   db_CtaPagar.FieldByName('DESPESAS_TOTAL').AsFloat    := 0;
   db_CtaPagar.FieldByName('DESPESAS_TOTAL').AsFloat    :=
   nValorjuros +
      db_CtaPagar.FieldByName('DESPESAS_BOLETO').AsFloat +
      db_CtaPagar.FieldByName('DESPESAS_CARTORIO').AsFloat +
      db_CtaPagar.FieldByName('DESPESAS_MULTA').AsFloat;

   db_CtaPagar.FieldByName('VALOR_PAGO').AsFloat    := 0;
   db_CtaPagar.FieldByName('VALOR_PAGO').AsFloat    :=
      db_CtaPagar.FieldByName('VALOR').AsFloat   -
      nValorDesconto +
      db_CtaPagar.FieldByName('DESPESAS_TOTAL').AsFloat;;



end;

end.
