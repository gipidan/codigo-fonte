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


unit FControleChequesEmitidos;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, ImgList, DB,
   DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Mask,
   Buttons, ComCtrls, Shellapi, BTOdeum, FMTBcd, SqlExpr,
   MemDS, Uni,  ISFEdit,
   ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos, DBAccess;

type
   TFrmChequesEmitidos = class(TForm)
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
      DBGrid1: TDBGrid;
      db_pagar: TUniQuery;
      ds_pagar: TDataSource;
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
      DBEdit2: TDBEdit;
      DBEdit3: TDBEdit;
      EditData: TDBEdit;
      DBEdit7: TDBEdit;
      DBEdit8: TDBEdit;
      DBEdit5: TDBEdit;
      DBEdit12: TDBEdit;
      DBEdit9: TDBEdit;
      DBEdit1: TDBEdit;
      EditCliente: TIDBEditDialog;
      EditNomeCliente: TEdit;
    db_pagarCODIGO: TIntegerField;
    db_pagarFORNECEDOR: TIntegerField;
    db_pagarFORNECEDOR_NOME: TStringField;
    db_pagarNOTAFISCAL: TIntegerField;
    db_pagarSERIENF: TStringField;
    db_pagarDATA: TDateTimeField;
    db_pagarVENCIMENTO: TDateTimeField;
    db_pagarDATA_PAGTO: TDateTimeField;
    db_pagarDOCUMENTO: TStringField;
    db_pagarPARCELA: TIntegerField;
    db_pagarCFOP: TIntegerField;
    db_pagarESPECIE: TStringField;
    db_pagarTIPO: TStringField;
    db_pagarVALOR: TFloatField;
    db_pagarVALOR_PAGO: TFloatField;
    db_pagarVALOR_SALDO: TFloatField;
    db_pagarCONTA_CREDITO: TIntegerField;
    db_pagarCHQ_BANCO: TStringField;
    db_pagarCHQ_AGENCIA: TStringField;
    db_pagarCHQ_CONTA_CORRENTE: TStringField;
    db_pagarCHQ_CODCIDADE: TStringField;
    db_pagarCHQ_NOMECIDADE_UF: TStringField;
    db_pagarCHQ_EMITENTE: TStringField;
    db_pagarCHQ_DESTINO: TStringField;
    db_pagarFORMA_PAGTO: TIntegerField;
    db_pagarDEPARTAMENTO: TIntegerField;
    db_pagarDESCONTO: TFloatField;
    db_pagarPLANO_CONTAS: TStringField;
    db_pagarHISTORICO: TStringField;
    db_pagarOBSERVACAO: TStringField;
    db_pagarGERARRECIBO: TStringField;
    db_pagarNOSSONUMERO: TStringField;
    db_pagarDESPESAS_BOLETO: TFloatField;
    db_pagarDESPESAS_JUROS: TFloatField;
    db_pagarDESPESAS_MULTA: TFloatField;
    db_pagarDESPESAS_CARTORIO: TFloatField;
    db_pagarDESPESAS_TOTAL: TFloatField;
    db_pagarATRASADA: TStringField;
    db_pagarQUITADO: TStringField;
    db_pagarMOTIVO_BAIXA: TIntegerField;
    db_pagarUSER_NOME: TStringField;
    db_pagarUSER_DATA: TDateTimeField;
    db_pagarUSER_HORA: TTimeField;
    db_pagarCOMPLEMENTAR: TStringField;
    db_pagarCHECADO: TStringField;
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
      procedure db_pagarNewRecord(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmChequesEmitidos: TFrmChequesEmitidos;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;

{$R *.dfm}

procedure TFrmChequesEmitidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_pagar.close;

   FreeAndNil( FrmChequesEmitidos );

end;

procedure TFrmChequesEmitidos.FormCreate(Sender: TObject);
begin

   db_pagar.Open;

end;

procedure TFrmChequesEmitidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#27 then
      close;

end;

procedure TFrmChequesEmitidos.FormResize(Sender: TObject);
begin
  DimensionarGrid(DBGrid1,self);

end;

procedure TFrmChequesEmitidos.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmChequesEmitidos.BtnNovaNFClick(Sender: TObject);
begin
   // Gerar novo codigo para o OR�AMENTO
   PaginaPadrao.Activepage := Tab_Editar;

   db_pagar.Append;

   EditCliente.SetFocus;

end;

procedure TFrmChequesEmitidos.BtnSalvarClick(Sender: TObject);
begin

   If (db_pagar.state in [dsEdit, dsInsert]) then
   Begin
      db_pagar.Post;
   End;

end;

procedure TFrmChequesEmitidos.BtnCancelarClick(Sender: TObject);
begin
   // Cancelar edi��o
   db_pagar.Cancel;
   PaginaPadrao.Activepage := Tab_Principal;

end;

procedure TFrmChequesEmitidos.BtnExcluirClick(Sender: TObject);
begin

   if db_pagar.IsEmpty then
   Begin
      Aviso('N�o h� dados para excluir.');
      abort;
   End;

   IF Pergunta('Deseja excluir este registro?') = false THEN
      exit;

   db_pagar.delete;

end;

procedure TFrmChequesEmitidos.DBGrid1DblClick(Sender: TObject);
begin
   PaginaPadrao.Activepage := Tab_Editar;
end;

procedure TFrmChequesEmitidos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := AnsiUpperCase(Key)[1];

end;

procedure TFrmChequesEmitidos.BtnProcurarClick(Sender: TObject);
begin
   if dbDlgProcurar.Execute then
   begin
      db_pagar.Locate('CODIGO', dbDlgProcurar.ResultFieldAsInteger('CODIGO'), []);
   end;

end;

procedure TFrmChequesEmitidos.db_pagarNewRecord(DataSet: TDataSet);
begin
   db_pagar.FieldByName('NOTAFISCAL').AsInteger := 0;
   db_pagar.FieldByName('DOCUMENTO').AsString := '0'; //
   db_pagar.FieldByName('ESPECIE').AsString := 'CHEQUE'; //
   db_pagar.FieldByName('TIPO').AsString := 'PAGAR'; //
   db_pagar.FieldByName('QUITADO').AsString := 'N'; // Recebido
end;

end.
