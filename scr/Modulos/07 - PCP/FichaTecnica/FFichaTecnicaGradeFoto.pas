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


unit FFichaTecnicaGradeFoto;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, BaseGrid, AdvGrid,
   AsgHTML,
   AdvGridRTF, asgprint, asgprev, AdvSplitter, AdvObj;

type
   TFrmFichaTecnicaGradeFoto = class(TForm)
      Panel1: TPanel;
      FotoReferencia: TImage;
      Panel2: TPanel;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      DBEdit20: TDBEdit;
      DBEdit21: TDBEdit;
      DBEdit22: TDBEdit;
      DBEdit1: TDBEdit;
      Label1: TLabel;
      GroupBox1: TGroupBox;
      StringGrade: TAdvStringGrid;
      AdvSplitter1: TAdvSplitter;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmFichaTecnicaGradeFoto: TFrmFichaTecnicaGradeFoto;

implementation

uses Biblioteca_pcp, FBaseDados_PCP;

{$R *.dfm}

procedure TFrmFichaTecnicaGradeFoto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure TFrmFichaTecnicaGradeFoto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = vk_escape then
      close;

end;

procedure TFrmFichaTecnicaGradeFoto.FormCreate(Sender: TObject);
begin

   // foto principal
   if fileexists(BaseDados_PCP.db_referencia_Fotos.FieldByname('FOTO_PATH')
     .AsString) then
   Begin
      FotoReferencia.Picture.LoadFromFile
        (BaseDados_PCP.db_referencia_Fotos.FieldByname('FOTO_PATH').AsString);
   End
   Else
   Begin
      FotoReferencia.Picture := Nil;
   End;

   GradeProduto_Montar(BaseDados_PCP.db_referencias.FieldByname('REFERENCIA').AsString, StringGrade);

end;

end.
