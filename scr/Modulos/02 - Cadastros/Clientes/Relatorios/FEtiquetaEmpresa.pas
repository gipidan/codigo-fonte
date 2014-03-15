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

unit FEtiquetaEmpresa;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, DBTables, ExtCtrls, quickrpt, Qrctrls, MemDS, Uni,
   QRPDFFilt, DBAccess;

type
   TFrmEtiquetaEmpresa = class(TForm)
      DB_Clientes: TUniQuery;
      Prever: TQuickRep;
      DetailBand1: TQRBand;
      QRDBText1: TQRDBText;
      QRDBText4: TQRDBText;
      QRDBText9: TQRDBText;
      QRDBText10: TQRDBText;
      QRDBText11: TQRDBText;
      QRDBText12: TQRDBText;
      DB_Parametros: TUniQuery;
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmEtiquetaEmpresa: TFrmEtiquetaEmpresa;

implementation

uses FPrincipal, FBaseDados, Global,
   FRelClientes, FRelClientesMalaDireta, FRelEtiquetaCliente;

{$R *.DFM}

procedure TFrmEtiquetaEmpresa.FormCreate(Sender: TObject);
begin

   vSelect := 'SELECT * FROM CAD_CLIENTES ';

   If FrmRelClientesMalaDireta.RadioGTipoMala.ItemIndex = 1 then
   begin
      vSelect := vSelect + ' WHERE ';
      vSelect := vSelect + ' ETIQUETA=''S'' ';

      // -----------------------------------------------------------------
      Prever.ReportTitle := 'Mala Direta - sele��o manual';
      FrmEtiquetaCliente.Caption := 'Mala Direta - sele��o manual';

   end;

   If FrmRelClientesMalaDireta.RadioGTipoMala.ItemIndex = 2 then
   begin
      vSelect := vSelect + ' WHERE ';
      vSelect := vSelect + ' (DATA>=:data1 AND DATA<=:data2) ';

      // -----------------------------------------------------------------
      Prever.ReportTitle := 'Mala Direta - por aniversariantes';
      FrmEtiquetaCliente.Caption := 'Mala Direta - por aniversariantes';

   end;

   If FrmRelClientesMalaDireta.chkCliente.Checked = False then
   Begin
      vSelect := vSelect + ' AND CODIGO=:XCLIENTE ';
   End;

   vSelect := vSelect + ' ORDER BY ' + strOrdemDados;

   DB_Clientes.Close;
   DB_Clientes.SQL.clear;
   DB_Clientes.SQL.Add(vSelect);

   IF FrmRelClientesMalaDireta.chkCliente.Checked = False then
      DB_Clientes.ParamByName('XCLIENTE').value := strCliente;

   DB_Clientes.Open;
   DB_Parametros.Open;

   Prever.Preview;
   Close;

end;

procedure TFrmEtiquetaEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DB_Clientes.Close;
   DB_Parametros.Close;
   Action := cafree;
end;

end.
