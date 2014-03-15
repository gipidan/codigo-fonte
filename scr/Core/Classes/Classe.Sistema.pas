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


Unit Classe.Sistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, App.Constantes,
  Data.DB, MemDS, DBAccess, Uni;

type

   { TVarSystem }
   TSistema = Class
   private
     { Private declarations }
     FEmpresa                     : Integer;
     FPastaDrive                  : WideString;
     FPastaPadrao                 : WideString;
     FPastaBinarios               : WideString;
     FArquivoCFG                  : String;
     FExeName                     : String;
     FPathPrograma                : WideString;

     function  GetArquivoCFG      : String;
     function  GetExeName         : String;
     function  GetPastaBinarios   : WideString;
     function  GetPastaDrive      : WideString;
     function  GetPastaPadrao     : WideString;
     procedure SetArquivoCFG(const Value: String);
     procedure SetExeName(const Value: String);
     procedure SetPastaBinarios(const Value: WideString);
     procedure SetPastaDrive(const Value: WideString);
     procedure SetPastaPadrao(const Value: WideString);
    function GetEmpresa: Integer;
    procedure SetEmpresa(const Value: Integer);
    function  GetPathPrograma: WideString;
   public
      { Public declarations }
      constructor Create;
      Procedure   Clear;
      property Empresa            : Integer             Read GetEmpresa        Write SetEmpresa;
      property PastaDrive         : WideString          read GetPastaDrive     write SetPastaDrive;
      property PastaPadrao        : WideString          read GetPastaPadrao    write SetPastaPadrao;
      property PastaBinarios      : WideString          read GetPastaBinarios  write SetPastaBinarios;
      property ArquivoCFG         : String              read GetArquivoCFG     write SetArquivoCFG;
      property ExeName            : String              read GetExeName        write SetExeName;
      property PathPrograma       : WideString          read GetPathPrograma   write FPathPrograma;

   end;


implementation

{ TVarSystem }


constructor TSistema.Create;
begin
  FPastaDrive      :='';
  FPastaPadrao     :='';
  FPastaBinarios   :='';
  FArquivoCFG      :='';
  FExeName         :='';

  FPastaPadrao    := Concat(DRIVE_SISTEMA,PASTA_SEPARADOR,PASTA_SISTEMA,PASTA_SEPARADOR);
  FPastaBinarios  := Concat(PASTA_BINARIO,PASTA_SEPARADOR);
  FArquivoCFG     := Concat(DRIVE_SISTEMA,PASTA_SEPARADOR,PASTA_SISTEMA,PASTA_SEPARADOR,PASTA_BINARIO,PASTA_SEPARADOR,CONFIG_INI );

end;

procedure TSistema.Clear;
begin
  FPastaDrive      :='';
  FPastaPadrao     :='';
  FPastaBinarios   :='';
  FArquivoCFG      :='';
  FExeName         :='';
end;


function TSistema.GetArquivoCFG: String;
begin
 Result  := FArquivoCFG;
end;

function TSistema.GetEmpresa: Integer;
begin
   if (FEmpresa>0) then
      Result := FEmpresa
   else
      Result := 1;
end;

function TSistema.GetExeName: String;
begin
 Result  := FExeName;
end;

function TSistema.GetPastaBinarios: WideString;
begin
 Result  := FPastaBinarios;
end;

function TSistema.GetPastaDrive: WideString;
begin
 Result  := FPastaDrive;
end;

function TSistema.GetPastaPadrao: WideString;
begin
 Result  := FPastaPadrao;
end;

function TSistema.GetPathPrograma: WideString;
begin
  Result        := pchar(GetCurrentDir);
end;

procedure TSistema.SetArquivoCFG(const Value: String);
begin
  FArquivoCFG :=Value;
end;

procedure TSistema.SetEmpresa(const Value: Integer);
begin
   if (Value>0) then
      FEmpresa := Value
   else
      FEmpresa := 1;
end;

procedure TSistema.SetExeName(const Value: String);
begin
  FExeName :=Value;
end;

procedure TSistema.SetPastaBinarios(const Value: WideString);
begin
  FPastaBinarios :=Value;
end;

procedure TSistema.SetPastaDrive(const Value: WideString);
begin
  FPastaDrive :=Value;
end;

procedure TSistema.SetPastaPadrao(const Value: WideString);
begin
  FPastaPadrao :=Value;
end;

end.



