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


unit Financeiro;

interface

uses DBTables, Forms, Classes, Windows, Controls, Variants, ComCtrls,
   WinTypes, WinProcs, Tabs, ExtCtrls, DB, DBCtrls, Grids, Menus, Dialogs,
   StdCtrls, Messages, Graphics, shellapi, BDE, Sysutils, Printers,
   MemDS, Uni;

// Proximo Numero
function CalcularProximoNumero(Tbl_CtaReceber: TUniQuery;
  wProximoNumero: string): string;

function Formatar(Texto: string; TamanhoDesejado: integer;
  AcrescentarADireita: boolean = true; CaracterAcrescentar: char = ' '): string;

Var

   TblVenda, TblCtaReceber, TblCtaPagar, TblCaixa, TblProdutos, TblPedido,
     TblCompra: TUniQuery;

implementation

uses Biblioteca, Global, Firebird, FPrincipal;

// Proximo Numero
function CalcularProximoNumero(Tbl_CtaReceber: TUniQuery;
  wProximoNumero: string): string;
begin

   wInteger[0] := StrToInt(wProximoNumero) + 1;

   if not(Tbl_CtaReceber.State in [dsedit]) then
      Tbl_CtaReceber.edit;

   Tbl_CtaReceber.FieldByName('NossoNumero').AsString :=
     Formatar(IntToStr(wInteger[0]), 13, // tamanho padr�o
     false, '0');
   Result := Tbl_CtaReceber.FieldByName('NossoNumero').AsString;

end;

function Formatar(Texto: string; TamanhoDesejado: integer;
  AcrescentarADireita: boolean = true; CaracterAcrescentar: char = ' '): string;
{
  OBJETIVO: Acrescentar caracteres � esquerda ou � direita do texto original para que a string resultante
  fique com o tamanho desejado

  Texto : Texto original
  TamanhoDesejado: Tamanho que a string resultante dever� ter
  AcrescentarADireita: Indica se o car�cter ser� acrescentado � direita ou � esquerda
  TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar car�cter � direita
  Se o tamanho do texto form MAIOR que o desejado, eliminar primeiros caracteres do texto
  FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar car�cter � esquerda
  Se o tamanho do texto form MAIOR que o desejado, eliminar �ltimos caracteres do texto
}
var
   QuantidadeAcrescentar, TamanhoTexto, PosicaoInicial: integer;

begin
   case CaracterAcrescentar of
      '0' .. '9', 'a' .. 'z', 'A' .. 'Z':
         ; { N�o faz nada }
   else
      CaracterAcrescentar := ' ';
   end;

   Texto := Trim(Texto);
   TamanhoTexto := Length(Texto);

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto, 1, TamanhoDesejado) +
        StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar) +
        Copy(Texto, PosicaoInicial, TamanhoDesejado);

   Result := AnsiUpperCase(Texto);
end;

///
/// Criar recebimento parcial
///


end.
