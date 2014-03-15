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

unit FRelatorioUsuario;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, DBCtrls, DB, Grids, DBGrids, StdCtrls, Buttons,
   MemDS, Uni, FFrameBarra, DBAccess;

type
   TFrmUsuarioLog = class(TForm)
      GroupBox2: TGroupBox;
      GridUsuario: TDBGrid;
      db_Usuario: TUniQuery;
      DS_Usuario: TDataSource;
      db_UsuarioLog: TUniQuery;
      DS_Log: TDataSource;
      GroupBox1: TGroupBox;
      GroupBox3: TGroupBox;
      DBGrid1: TDBGrid;
      DBMemo1: TDBMemo;
      Panel1: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      FrmFrameBarra1: TFrmFrameBarra;
    db_UsuarioLogCODIGO: TIntegerField;
    db_UsuarioLogUSERNAME: TStringField;
    db_UsuarioLogDATA: TDateTimeField;
    db_UsuarioLogHORAS: TTimeField;
    db_UsuarioLogMODULO: TStringField;
    db_UsuarioLogACAO: TStringField;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure BtnSairClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmUsuarioLog: TFrmUsuarioLog;

implementation

uses Biblioteca;

{$R *.dfm}

procedure TFrmUsuarioLog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   db_Usuario.close;
   db_UsuarioLog.close;

   Action := cafree;
end;

procedure TFrmUsuarioLog.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmUsuarioLog.FormCreate(Sender: TObject);
begin
   db_Usuario.open;
   db_UsuarioLog.open;

end;

procedure TFrmUsuarioLog.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If Key = VK_F12 then
   begin
      If pergunta('Deseja realmente limpar todos os LOGs do usu�rio ' +
        db_Usuario.fieldbyname('UserName').asstring + '?') = true then
      begin
         db_UsuarioLog.first;
         While not db_UsuarioLog.eof do
         begin
            db_UsuarioLog.Delete;
         end;
         Aviso('Todos os LOGs foram excluidos');
      end;
   end;

end;

end.
