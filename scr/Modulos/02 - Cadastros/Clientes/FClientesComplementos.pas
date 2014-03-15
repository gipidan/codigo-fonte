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

unit FClientesComplementos;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls;

type
   TFrmClientesComplementos = class(TForm)
      Panel1: TPanel;
      Button1: TButton;
      GroupBox1: TGroupBox;
      DBEdit22: TDBEdit;
      Label36: TLabel;
      DBEdit23: TDBEdit;
      Label37: TLabel;
      DBEdit21: TDBEdit;
      Label35: TLabel;
      GroupBox2: TGroupBox;
      GroupBox3: TGroupBox;
      CbEstCivil: TDBComboBox;
      DBEdit37: TDBEdit;
      Label97: TLabel;
      Label9: TLabel;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      DBEdit1: TDBEdit;
      DBEdit2: TDBEdit;
      DBEdit3: TDBEdit;
      DBEdit4: TDBEdit;
      DBEdit5: TDBEdit;
      DBEdit6: TDBEdit;
      DBEdit7: TDBEdit;
      Label8: TLabel;
      DBEdit8: TDBEdit;
      Label10: TLabel;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      Label14: TLabel;
      Label15: TLabel;
      Label16: TLabel;
      DBEdit9: TDBEdit;
      DBEdit10: TDBEdit;
      DBEdit11: TDBEdit;
      DBEdit12: TDBEdit;
      DBEdit13: TDBEdit;
      DBEdit14: TDBEdit;
      DBEdit15: TDBEdit;
      Label17: TLabel;
      DBEdit16: TDBEdit;
      procedure Button1Click(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmClientesComplementos: TFrmClientesComplementos;

implementation

uses FBaseDados, FPrincipal, Global, Biblioteca;

{$R *.dfm}

procedure TFrmClientesComplementos.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TFrmClientesComplementos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFrmClientesComplementos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = vk_escape then
   begin
      close;
   end;

end;

end.
