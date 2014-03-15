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


unit FAboutBox;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, StdCtrls, ComCtrls, jpeg, ShellAPI, ExeInfo, pngimage,
  AdvSmoothPanel, AeroButtons, W7Classes, W7Panels, FFrameBarra, W7Labels,
  AdvSmoothLabel, AdvGroupBox;

type
   TFrmAboutBox = class(TForm)
    FrmFrameBarra1: TFrmFrameBarra;
    W7Panel1: TW7Panel;
    BtnAcessar: TAeroButton;
    AdvSmoothPanel1: TAdvSmoothPanel;
    AdvGroupBox1: TAdvGroupBox;
    AdvSmoothLabel1: TAdvSmoothLabel;
    ExeInfo1: TExeInfo;
    ProductInformation: TMemo;
    Image1: TImage;
    AdvSmoothLabel2: TAdvSmoothLabel;
      procedure FormCreate(Sender: TObject);
      procedure Label6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnAcessarClick(Sender: TObject);
    procedure AdvSmoothLabel2Click(Sender: TObject); // ?
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmAboutBox: TFrmAboutBox;

implementation

uses FPrincipal, SQLServer, Biblioteca, Global;


{$R *.dfm}

procedure TFrmAboutBox.AdvSmoothLabel2Click(Sender: TObject);
begin
   strURL := 'http://www.<site>.com.br';
   shellexecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);
end;

procedure TFrmAboutBox.BtnAcessarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmAboutBox.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TFrmAboutBox.FormCreate(Sender: TObject);
var
   MS: TMemoryStatus;
   Ano, Mes, Dia: Word;
begin

   Caption := 'Sistema ' + Application.Title +' v'+ ExeInfo1.FileVersion;

   DecodeDate(Date, Ano, Mes, Dia);

   MS.dwLength := sizeof(MemoryStatus);
   GlobalMemoryStatus(MS);


   // --------------------------------------------------------------------------
   // --------------------------------------------------------------------------
   ProductInformation.Clear;
   // --------------------------------------------------------------------------
   // --------------------------------------------------------------------------
   ProductInformation.Lines.Add('');
   ProductInformation.Lines.Add('Vers�o do Kernel: ' + ExeInfo1.FileVersion);
   ProductInformation.Lines.Add('Data de compila��o:  ' +  DateTimeToStr(ExeInfo1.FileCreation) );

   // --------------------------------------------------------------------------
   // --------------------------------------------------------------------------

end;

procedure TFrmAboutBox.Label6Click(Sender: TObject);
begin

   strURL := 'mailto:comercial@<site>.com.br';
   shellexecute(0, nil, pchar(strURL), nil, nil, SW_SHOW);

end;

end.
