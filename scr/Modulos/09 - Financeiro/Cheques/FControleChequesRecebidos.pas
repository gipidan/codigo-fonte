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


unit FControleChequesRecebidos;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, ImgList, DB,
   DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Mask,
   Buttons, ComCtrls, Shellapi, BTOdeum, FMTBcd, SqlExpr,
   MemDS, Uni, ISFEdit, ISFEditbtn,
   ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos,  DBAccess;

type
   TFrmChequesRecebidos = class(TForm)
      Panel2: TPanel;
      PaginaPadrao: TPageControl;
      Tab_Principal: TTabSheet;
      Panel4: TPanel;
      BtnSair: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnSalvar: TBitBtn;
      BtnExcluir: TBitBtn;
      Imprimir: TBitBtn;
      BtnNovaNF: TBitBtn;
      BtnProcurar: TBitBtn;
      Panel1: TPanel;
      Label16: TLabel;
      Navegador: TDBNavigator;
      db_CtaReceber: TUniQuery;
      ds_CtaReceber: TDataSource;
      Tab_Editar: TTabSheet;
      Label3: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      Label8: TLabel;
      Label9: TLabel;
      Label13: TLabel;
      Label10: TLabel;
      Label11: TLabel;
      Label2: TLabel;
      DBEdit2: TDBEdit;
      DBEdit3: TDBEdit;
      EditData: TDBEdit;
      DBEdit7: TDBEdit;
      DBEdit8: TDBEdit;
      DBEdit5: TDBEdit;
      DBEdit12: TDBEdit;
      DBEdit9: TDBEdit;
      DBEdit1: TDBEdit;
      DBEdit4: TDBEdit;
      EditCliente: TIDBEditDialog;
      EditNomeCliente: TEdit;
      DBGrid1: TDBGrid;
    db_CtaReceberCODIGO: TIntegerField;
    db_CtaReceberCLIENTE: TIntegerField;
    db_CtaReceberNOTAFISCAL: TIntegerField;
    db_CtaReceberSERIENF: TStringField;
    db_CtaReceberDATA: TDateTimeField;
    db_CtaReceberVENCIMENTO: TDateTimeField;
    db_CtaReceberDATA_PAGTO: TDateTimeField;
    db_CtaReceberDOCUMENTO: TStringField;
    db_CtaReceberPARCELA: TIntegerField;
    db_CtaReceberCFOP: TIntegerField;
    db_CtaReceberVENDEDOR: TIntegerField;
    db_CtaReceberESPECIE: TStringField;
    db_CtaReceberTIPO: TStringField;
    db_CtaReceberVALOR: TFloatField;
    db_CtaReceberVALOR_PAGO: TFloatField;
    db_CtaReceberVALOR_SALDO: TFloatField;
    db_CtaReceberCONTA_CREDITO: TIntegerField;
    db_CtaReceberCHQ_BANCO: TStringField;
    db_CtaReceberCHQ_AGENCIA: TStringField;
    db_CtaReceberCHQ_CONTA_CORRENTE: TStringField;
    db_CtaReceberCHQ_NUMEROCHEQUE: TStringField;
    db_CtaReceberCHQ_CODCIDADE: TStringField;
    db_CtaReceberCHQ_EMITENTE: TStringField;
    db_CtaReceberCHQ_NOMECIDADE_UF: TStringField;
    db_CtaReceberCHQ_DESTINO: TStringField;
    db_CtaReceberFORMA_PAGTO: TIntegerField;
    db_CtaReceberDEPARTAMENTO: TIntegerField;
    db_CtaReceberDESCONTO: TFloatField;
    db_CtaReceberDESCONTO_DATA: TDateTimeField;
    db_CtaReceberDESCONTO_USER: TIntegerField;
    db_CtaReceberENTRADA: TFloatField;
    db_CtaReceberPLANO_CONTAS: TStringField;
    db_CtaReceberHISTORICO: TStringField;
    db_CtaReceberOBSERVACAO: TStringField;
    db_CtaReceberGERARRECIBO: TStringField;
    db_CtaReceberGERARDUPLICATA: TStringField;
    db_CtaReceberGERARBOLETO: TStringField;
    db_CtaReceberNOSSONUMERO: TStringField;
    db_CtaReceberDESPESAS_BOLETO: TFloatField;
    db_CtaReceberDESPESAS_JUROS: TFloatField;
    db_CtaReceberDESPESAS_MULTA: TFloatField;
    db_CtaReceberDESPESAS_CARTORIO: TFloatField;
    db_CtaReceberDESPESAS_TOTAL: TFloatField;
    db_CtaReceberATRASADA: TStringField;
    db_CtaReceberQUITADO: TStringField;
    db_CtaReceberMOTIVO_BAIXA: TIntegerField;
    db_CtaReceberUSER_NOME: TStringField;
    db_CtaReceberUSER_DATA: TDateTimeField;
    db_CtaReceberUSER_HORA: TTimeField;
    db_CtaReceberCOMPLEMENTAR: TStringField;
    dbDlgProcurar: TIDBEditDialog;
      procedure BtnSairClick(Sender: TObject);
      procedure BtnNovaNFClick(Sender: TObject);
      procedure BtnSalvarClick(Sender: TObject);
      procedure BtnCancelarClick(Sender: TObject);
      procedure BtnExcluirClick(Sender: TObject);
      procedure DBGrid1DblClick(Sender: TObject);
      procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
      procedure BtnProcurarClick(Sender: TObject);
      procedure db_CtaReceberBeforePost(DataSet: TDataSet);
      procedure db_CtaReceberNewRecord(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmChequesRecebidos: TFrmChequesRecebidos;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.dfm}

procedure TFrmChequesRecebidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_CtaReceber.close;

   FreeAndNil( FrmChequesRecebidos );

end;

procedure TFrmChequesRecebidos.FormCreate(Sender: TObject);
begin

   PaginaPadrao.Activepage := Tab_Principal;

   db_CtaReceber.Open;

end;

procedure TFrmChequesRecebidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#27 then
      close;

end;

procedure TFrmChequesRecebidos.FormResize(Sender: TObject);
begin
  DimensionarGrid(DBGrid1,self);

end;

procedure TFrmChequesRecebidos.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmChequesRecebidos.BtnNovaNFClick(Sender: TObject);
begin
   // Gerar novo codigo para o OR�AMENTO
   PaginaPadrao.Activepage := Tab_Editar;

   db_CtaReceber.Append;

   EditCliente.SetFocus;

end;

procedure TFrmChequesRecebidos.BtnSalvarClick(Sender: TObject);
begin

   If (db_CtaReceber.state in [dsEdit, dsInsert]) then
   Begin
      db_CtaReceber.Post;
   End;

end;

procedure TFrmChequesRecebidos.BtnCancelarClick(Sender: TObject);
begin
   // Cancelar edi��o
   db_CtaReceber.Cancel;
   PaginaPadrao.Activepage := Tab_Principal;

end;

procedure TFrmChequesRecebidos.BtnExcluirClick(Sender: TObject);
begin

   if db_CtaReceber.IsEmpty then
   Begin
      Aviso('N�o h� dados para excluir.');
      abort;
   End;

   IF Pergunta('Deseja excluir este registro?') = false THEN
      exit;

   db_CtaReceber.delete;

end;

procedure TFrmChequesRecebidos.DBGrid1DblClick(Sender: TObject);
begin
   PaginaPadrao.Activepage := Tab_Editar;
end;

procedure TFrmChequesRecebidos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmChequesRecebidos.BtnProcurarClick(Sender: TObject);
begin
   if dbDlgProcurar.Execute then
   begin
      db_CtaReceber.Locate('CODIGO', dbDlgProcurar.ResultFieldAsInteger('CODIGO'), []);
   end;
end;

procedure TFrmChequesRecebidos.db_CtaReceberBeforePost(DataSet: TDataSet);
begin

   if db_CtaReceber.FieldByName('VENCIMENTO').IsNull then
   Begin
      db_CtaReceber.FieldByName('VENCIMENTO').AsDateTime :=
        db_CtaReceber.FieldByName('DATA').AsDateTime;
   End;

end;

procedure TFrmChequesRecebidos.db_CtaReceberNewRecord(DataSet: TDataSet);
begin
   db_CtaReceber.FieldByName('NOTAFISCAL').AsInteger := 0;
   db_CtaReceber.FieldByName('ESPECIE').AsString := 'CHEQUE'; //
   db_CtaReceber.FieldByName('TIPO').AsString := 'RECEBER'; //
   db_CtaReceber.FieldByName('QUITADO').AsString := 'N'; // Recebido
end;

end.
