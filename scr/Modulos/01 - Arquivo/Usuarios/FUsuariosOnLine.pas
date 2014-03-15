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


unit FUsuariosOnLine;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, FFrameBarra;

type
   TFrmUsuariosOnLine = class(TForm)
      Panel1: TPanel;
      BtnSair: TBitBtn;
      ListBoxUserName: TListBox;
    FrmFrameBarra1: TFrmFrameBarra;
      procedure BtnSairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormShow(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmUsuariosOnLine: TFrmUsuariosOnLine;

implementation


{$R *.dfm}

uses FUsuarioControle;

procedure TFrmUsuariosOnLine.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmUsuariosOnLine.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure TFrmUsuariosOnLine.FormShow(Sender: TObject);
begin
   ListBoxUserName.Items.Clear;
   FrmUsuarioControle.db_Usuario.First;
   While not FrmUsuarioControle.db_Usuario.eof do
   begin
      // se o usu�rio estiver ativo, ent�o adicion�-lo na lista
      If FrmUsuarioControle.db_Usuario.FieldByName('ONLINE').AsString = 'S' then
      begin
         ListBoxUserName.Items.Add(FrmUsuarioControle.db_Usuario.FieldByName('UserName')
           .AsString);
      end;
      FrmUsuarioControle.db_Usuario.next;
   end;
   FrmUsuarioControle.db_Usuario.First;

end;

procedure TFrmUsuariosOnLine.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If (Key = VK_ESCAPE) or (Key = VK_RETURN) then
      close;

end;

end.
