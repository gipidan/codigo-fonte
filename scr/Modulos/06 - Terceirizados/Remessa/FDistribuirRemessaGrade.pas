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

unit FDistribuirRemessaGrade;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, StdCtrls, BaseGrid, AdvGrid, AdvObj;

type
   TFrmDistribuirRemessaGrade = class(TForm)
      Panel1: TPanel;
    StringGridOpcoesRetornar: TAdvStringGrid;
    StringGridOpcoes: TAdvStringGrid;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
      procedure FormShow(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmDistribuirRemessaGrade: TFrmDistribuirRemessaGrade;

implementation

uses Biblioteca_pcp, Biblioteca, FDistribuirRemessa;

{$R *.dfm}

procedure TFrmDistribuirRemessaGrade.FormCreate(Sender: TObject);
begin

   DistribuirReferencia_Montar_Produzir(FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('REFERENCIA').AsString, StringGridOpcoes);

   DistribuirReferencia_Carregar_Produzir(FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('CODIGO').AsInteger,
                                          FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('ORDEMPRODUCAO').AsInteger,
                                          FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('REFERENCIA').AsString,
                                           StringGridOpcoes);

   DistribuirRetorno_Montar_Produzir(FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('REFERENCIA').AsString, StringGridOpcoesRetornar);

   DistribuirRetorno_Carregar_Produzido(FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('CODIGO').AsInteger,
                                          FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('ORDEMPRODUCAO').AsInteger,
                                          FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('REFERENCIA').AsString,
                                           StringGridOpcoesRetornar);



end;

procedure TFrmDistribuirRemessaGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   if (FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('QTDE_PRODUZIDA').AsInteger < 1) then
   begin

      DistribuirReferencia_Salvar_Produzir(FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('CODIGO').AsInteger,
                                           FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('ORDEMPRODUCAO').AsInteger,
                                           FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('REFERENCIA').AsString,
                                           StringGridOpcoes);

      DistribuirRetorno_Salvar_Produzido(FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('CODIGO').AsInteger,
                                           FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('ORDEMPRODUCAO').AsInteger,
                                           FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('REFERENCIA').AsString,
                                           StringGridOpcoesRetornar);

        FrmDistribuirRemessa.db_DistribuirReferencias.Edit;
        FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('QUANTIDADE').AsFloat :=DistribuirReferencia_Totalizar_Produzir(StringGridOpcoes);
        FrmDistribuirRemessa.db_DistribuirReferencias.Post;

   end;

   Action := Cafree;

end;

procedure TFrmDistribuirRemessaGrade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F3 then
   begin
      if (FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('QTDE_PRODUZIDA').AsInteger > 0) then
      begin
         FormMensagem('N�o � permitido editar. H� produ��o em andamento para este produto.' + #13
        + #10 + 'J� foram produzidos ' + FormatFloat('###,##0',
        FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('QTDE_PRODUZIDA').AsInteger));
        exit;


      end;

      StringGridOpcoes.Clear;
      DistribuirReferencia_Montar_Produzir(FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName('REFERENCIA').AsString, StringGridOpcoes);
   end;

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmDistribuirRemessaGrade.FormShow(Sender: TObject);
begin

   //FrmDistribuirRemessaGrade.Width := StringGridOpcoes.Width + 15;

   FrmDistribuirRemessaGrade.Caption := 'Grade de quantidades /  ' +
     'Remessa : ' + FrmDistribuirRemessa.db_DistribuirReferencias.FieldByName
     ('CODIGO').AsString;

   Update;

end;

end.
