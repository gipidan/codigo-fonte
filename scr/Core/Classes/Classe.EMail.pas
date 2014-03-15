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


Unit Classe.EMail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type

   { TMailConfig }
   TMailConfig = Class
   Private
     { Private declarations }
     FPOPServer          : String;
     FPOPAuthType        : Integer;
     FPOPPort            : Integer;
     FPOPUser            : String;
     FPOPPassword        : String;

     FSMTPServer         : String;
     FSMTPAuthType       : Integer;
     FSMTPPort           : Integer;
     FSMTPUser           : String;
     FSMTPPassword       : String;
     FUserNameEmail      : String;

     function GetPOPAuthType: Integer;
     function GetPOPPassword: String;
     function GetPOPPort: Integer;
     function GetPOPServer: String;
     function GetPOPUser: String;
     function GetSMTPAuthType: Integer;
     function GetSMTPPassword: String;
     function GetSMTPPort: Integer;
     function GetSMTPServer: String;
     function GetSMTPUser: String;
     function GetUserNameEmail: String;
     procedure SetPOPAuthType(const Value: Integer);
     procedure SetPOPPassword(const Value: String);
     procedure SetPOPPort(const Value: Integer);
     procedure SetPOPServer(const Value: String);
     procedure SetPOPUser(const Value: String);
     procedure SetSMTPAuthType(const Value: Integer);
     procedure SetSMTPPassword(const Value: String);
     procedure SetSMTPPort(const Value: Integer);
     procedure SetSMTPServer(const Value: String);
     procedure SetSMTPUser(const Value: String);
     procedure SetUserNameEmail(const Value: String);

   Public
     { Public declarations }
     constructor Create;
     Procedure   Clear;

     property POPServer          : String    Read  GetPOPServer            Write  SetPOPServer    ;
     property POPAuthType        : Integer   Read  GetPOPAuthType          Write  SetPOPAuthType  ;
     property POPPort            : Integer   Read  GetPOPPort              Write  SetPOPPort      ;
     property POPUser            : String    Read  GetPOPUser              Write  SetPOPUser      ;
     property POPPassword        : String    Read  GetPOPPassword          Write  SetPOPPassword  ;
     property SMTPServer         : String    Read  GetSMTPServer           Write  SetSMTPServer   ;
     property SMTPAuthType       : Integer   Read  GetSMTPAuthType         Write  SetSMTPAuthType ;
     property SMTPPort           : Integer   Read  GetSMTPPort             Write  SetSMTPPort     ;
     property SMTPUser           : String    Read  GetSMTPUser             Write  SetSMTPUser     ;
     property SMTPPassword       : String    Read  GetSMTPPassword         Write  SetSMTPPassword ;
     property UserNameEmail      : String    Read  GetUserNameEmail        Write  SetUserNameEmail;

   End;


implementation

{ TMailConfig }
constructor TMailConfig.Create;
begin
  FPOPServer          :='';
  FPOPAuthType        :=0;
  FPOPPort            :=110;
  FPOPUser            :='';
  FPOPPassword        :='';

  FSMTPServer         :='';
  FSMTPAuthType       :=0;
  FSMTPPort           :=25;
  FSMTPUser           :='';
  FSMTPPassword       :='';
  FUserNameEmail      :='';

end;

procedure TMailConfig.Clear;
begin
  FPOPServer          :='';
  FPOPAuthType        :=0;
  FPOPPort            :=110;
  FPOPUser            :='';
  FPOPPassword        :='';

  FSMTPServer         :='';
  FSMTPAuthType       :=0;
  FSMTPPort           :=25;
  FSMTPUser           :='';
  FSMTPPassword       :='';
  FUserNameEmail      :='';
end;

function TMailConfig.GetPOPAuthType: Integer;
begin
  Result  := FPOPAuthType;
end;

function TMailConfig.GetPOPPassword: String;
begin
  Result  := FPOPPassword;
end;

function TMailConfig.GetPOPPort: Integer;
begin
  Result  := FPOPPort;
end;

function TMailConfig.GetPOPServer: String;
begin
  Result  := FPOPServer;
end;

function TMailConfig.GetPOPUser: String;
begin
  Result  := FPOPUser;
end;

function TMailConfig.GetSMTPAuthType: Integer;
begin
  Result  := FSMTPAuthType;
end;

function TMailConfig.GetSMTPPassword: String;
begin
  Result  := FSMTPPassword;
end;

function TMailConfig.GetSMTPPort: Integer;
begin
  Result  := FSMTPPort;
end;

function TMailConfig.GetSMTPServer: String;
begin
  Result  := FSMTPServer;
end;

function TMailConfig.GetSMTPUser: String;
begin
  Result  := FSMTPUser;
end;

function TMailConfig.GetUserNameEmail: String;
begin
  Result  := FUserNameEmail;
end;

procedure TMailConfig.SetPOPAuthType(const Value: Integer);
begin
  FPOPAuthType := Value;
end;

procedure TMailConfig.SetPOPPassword(const Value: String);
begin
  FPOPPassword := Value;
end;

procedure TMailConfig.SetPOPPort(const Value: Integer);
begin
  FPOPPort := Value;
end;

procedure TMailConfig.SetPOPServer(const Value: String);
begin
  FPOPServer := Value;
end;

procedure TMailConfig.SetPOPUser(const Value: String);
begin
  FPOPUser := Value;
end;

procedure TMailConfig.SetSMTPAuthType(const Value: Integer);
begin
  FSMTPAuthType := Value;
end;

procedure TMailConfig.SetSMTPPassword(const Value: String);
begin
  FSMTPPassword := Value;
end;

procedure TMailConfig.SetSMTPPort(const Value: Integer);
begin
  FSMTPPort := Value;
end;

procedure TMailConfig.SetSMTPServer(const Value: String);
begin
  FSMTPServer := Value;
end;

procedure TMailConfig.SetSMTPUser(const Value: String);
begin
  FSMTPUser := Value;
end;

procedure TMailConfig.SetUserNameEmail(const Value: String);
begin
  FUserNameEmail := Value;
end;


end.



