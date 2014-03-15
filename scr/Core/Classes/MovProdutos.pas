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


UNIT MovProdutos;

interface

Uses Classes, Windows, StdCtrls, WinTypes, Sysutils, WinProcs, Forms,
   Tabs, ExtCtrls, DB, DBCtrls,
   DBTables, Grids, Menus, Dialogs, Controls, Messages,
   Graphics, MMSystem, shellapi, Printers, variants;

// Monstar codigo do produto
Function MontarCodigoProduto(Grupo, Subgrupo, Codigo: String): String;

implementation

uses Global, {FBaseDados, FParametros,}  Biblioteca ;

// preencher NN zeros na frente do c�digo
Function MontarCodigoProduto(Grupo, Subgrupo, Codigo: String): String;
var
   xSeparador: String;
begin

//   BaseDados.db_Parametros.close;
//   BaseDados.db_Parametros.Open;
//
//   xSeparador := '';
//   Wtexto[0] := '';
//   Wtexto[1] := '';
//   Wtexto[2] := '';
//   Wtexto[3] := '';
//
//   xSeparador := BaseDados.db_Parametros.FieldByName('PRODUTO_SEPARADOR').AsString;
//   Wtexto[0] := ZeroEsquerda(Grupo, BaseDados.db_Parametros.FieldByName('PRODUTO_GRUPO').AsInteger);
//   Wtexto[1] := ZeroEsquerda(Subgrupo, BaseDados.db_Parametros.FieldByName('PRODUTO_SUBGRUPO').AsInteger);
//   Wtexto[2] := ZeroEsquerda(Codigo, BaseDados.db_Parametros.FieldByName('PRODUTO_PRODUTO').AsInteger);
//   Wtexto[3] := Wtexto[0] + xSeparador + Wtexto[1] + xSeparador + Wtexto[2];
//
//   Result := Wtexto[3];

end;

End.
