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


Unit Classe.Global;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.IniFiles,
  Classe.Sistema,
  Classe.EMail,
  Classe.Parametros,
  Classe.Usuarios,
  Classe.Criptografia,
  Classe.SQLConexao,
  Classe.BancoDados,
  App.IniFiles;

  Procedure CriarObjetos;
  Procedure DestruirObjetos;
  Procedure InitVariables;
  Procedure FParametrosAtualizaDados;

Var
   FMailConfig     : TMailConfig;
   FSistema        : TSistema;
   FParametros     : TParametros;
   FUsuario        : TUsuario;
   FCriptografia   : TCriptografia;
   FSQLConexao     : TSQLConexao;
   FBancoDados     : TBancoDados;
   FInfFile        : TInfFile;

implementation

uses SQLServer;

procedure FParametrosAtualizaDados;
begin
   FParametros :=  GetParametros;
end;


Procedure CriarObjetos;
begin
   FMailConfig     := TMailConfig.Create;
   FSistema        := TSistema.Create;
   FParametros     := TParametros.Create;
   FUsuario        := TUsuario.Create;
   FCriptografia   := TCriptografia.Create;
   FSQLConexao     := TSQLConexao.Create;
   FBancoDados     := TBancoDados.Create;
   FInfFile        := TInfFile.Create;
end;

procedure DestruirObjetos;
begin
   if Assigned(FMailConfig) then
      FMailConfig.Free;

   if Assigned(FSistema) then
      FSistema.Destroy;

   if Assigned(FParametros) then
      FParametros.Destroy;

   if Assigned(FUsuario) then
      FUsuario.Destroy;

   if Assigned(FCriptografia) then
      FCriptografia.Destroy;

   if Assigned(FBancoDados) then
      FBancoDados.Destroy;

   if Assigned(FSQLConexao) then
      FSQLConexao.Destroy;

   if Assigned(FInfFile) then
      FInfFile.Free;

end;

Procedure InitVariables;
begin
//
end;

end.
