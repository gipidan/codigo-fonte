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

unit FTabelaPrecoGradePrecos;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Grids, StdCtrls, BaseGrid, AdvGrid,
   AdvGridRTF, rtflabel, AdvObj, DB, MemDS, DBAccess, Uni;

type
   TFrmTabelaPrecoGradePrecos = class(TForm)
      Panel1: TPanel;
    StringGridOpcoes: TAdvStringGrid;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
      procedure FormShow(Sender: TObject);
    procedure StringGridOpcoesCellValidate(Sender: TObject; ACol, ARow: Integer;
      var Value: string; var Valid: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmTabelaPrecoGradePrecos: TFrmTabelaPrecoGradePrecos;

implementation

uses Biblioteca_pcp, Global, FPrincipal, SQLServer;

{$R *.dfm}

procedure TFrmTabelaPrecoGradePrecos.FormCreate(Sender: TObject);
begin
   sGradeEditada :=false;

   GradeProduto_Montar(strReferencia, StringGridOpcoes);

   GradeTabelaPrecosCarregar(nTabelaPreco, strReferencia, StringGridOpcoes);


end;

procedure TFrmTabelaPrecoGradePrecos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   GradeTabelaPrecosSalvar(nTabelaPreco,  strReferencia, StringGridOpcoes);

   Action := Cafree;

end;

procedure TFrmTabelaPrecoGradePrecos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_F3 then
   begin
      //StringGridOpcoes.Clear;
      GradeZerar(StringGridOpcoes);

      GradeProduto_Montar_OrdemProducaoProduzidos(strReferencia, StringGridOpcoes);
   end;

   if Key = VK_ESCAPE then
      close;

end;

procedure TFrmTabelaPrecoGradePrecos.FormShow(Sender: TObject);
begin

   Width := StringGridOpcoes.Width + 15;
   Caption := 'Tabela de Pre�os | Grade de Valores: ' + IntToStr(nTabelaPreco);

   Update;

end;

procedure TFrmTabelaPrecoGradePrecos.StringGridOpcoesCellValidate(
  Sender: TObject; ACol, ARow: Integer; var Value: string; var Valid: Boolean);
begin
   sGradeEditada :=True;

  strCor                :=StringGridOpcoes.Cells[0, ARow];
  strTamanho            :=StringGridOpcoes.Cells[ACol, 0];
  nValorDigitado      :=StrToFloatDef(StringGridOpcoes.Cells[ACol, ARow], 0) ;


end;



end.
