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

unit FRelEntregas;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Mask, BTOdeum, FrmRelatorios, ISFEdit,
  ISFEditbtn, ISFdbEditbtn, IDBEdit, uEstSearchDialogZeos;

type
   TFrmRelEntregas = class(TForm)
      Panel1: TPanel;
      RadioG: TRadioGroup;
      GroupBox2: TGroupBox;
      Label3: TLabel;
      Label4: TLabel;
      MskDataIni: TMaskEdit;
      MskDataFim: TMaskEdit;
      chkCliente: TCheckBox;
      BoxRepresentante: TGroupBox;
      Label5: TLabel;
      DCodRepres: TEdit;
      chkRepres: TCheckBox;
      Panel2: TPanel;
      BtnSair: TBitBtn;
      Btn_Imprimir: TBitBtn;
      RdPedidos: TRadioGroup;
    FrameRelatorios1: TFrameRelatorios;
    EditCliente: TIDBEditDialog;
    EditClienteNome: TEdit;
      procedure Btn_SairClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure MskDataIniExit(Sender: TObject);
      procedure MskDataFimExit(Sender: TObject);
      procedure Btn_ImprimirClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure BtnSairClick(Sender: TObject);
      procedure chkRepresClick(Sender: TObject);
      procedure chkClienteClick(Sender: TObject);
      procedure EditMarcaKeyPress(Sender: TObject; var Key: Char);
      procedure DCodClienteKeyPress(Sender: TObject; var Key: Char);
      procedure DCodRepresKeyPress(Sender: TObject; var Key: Char);
      procedure RadioGClick(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmRelEntregas: TFrmRelEntregas;

implementation

uses Biblioteca, Global, FPrincipal, FRelEntregas_Geral;

{$R *.DFM}

procedure TFrmRelEntregas.Btn_SairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRelEntregas.FormCreate(Sender: TObject);
begin
   CodIni := '';
   CodFim := '';
   Achar[0] := '';
   MskDataIni.Text := dateToStr(Date - 60);
   MskDataFim.Text := dateToStr(Date + 365);

end;

Procedure TFrmRelEntregas.MskDataIniExit(Sender: TObject);
Begin

   MskDataIni.Text := fncDataValidar(MskDataIni.Text);

End;

procedure TFrmRelEntregas.MskDataFimExit(Sender: TObject);
begin
   MskDataFim.Text := fncDataValidar(MskDataFim.Text);
end;

procedure TFrmRelEntregas.Btn_ImprimirClick(Sender: TObject);
begin

   // relat�rio de Pedidos - Abertos
   If RadioG.ItemIndex = 0 then
   Begin
      FrmRelEntregas_Geral := TFrmRelEntregas_Geral.create(self);
   End;

End;

procedure TFrmRelEntregas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if Key = VK_ESCAPE then
      Close;

end;

procedure TFrmRelEntregas.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRelEntregas.chkRepresClick(Sender: TObject);
begin

   if chkRepres.Checked = true then
   Begin
      DCodRepres.Enabled := False;
   End
   Else
   Begin
      DCodRepres.Enabled := true;
      DCodRepres.SelectAll;
      DCodRepres.SetFocus;
   End;

end;

procedure TFrmRelEntregas.chkClienteClick(Sender: TObject);
begin
   if chkCliente.Checked = true then
   Begin
      EditCliente.Enabled := False;
   End
   Else
   Begin
      EditCliente.Enabled := true;
      EditCliente.SetFocus;
   End;

end;

procedure TFrmRelEntregas.EditMarcaKeyPress(Sender: TObject; var Key: Char);
begin

   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
   Begin
      Key := #0;
      BeepCritica;
      Erro('Esse campo � somente numerico' + #13 + #10 +
        'Tecle F8 para pesquisar as marcas cadastradas');
   End;

end;

procedure TFrmRelEntregas.DCodClienteKeyPress(Sender: TObject; var Key: Char);
begin
   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
   Begin
      Key := #0;
      BeepCritica;
      Erro('Esse campo � somente numerico' + #13 + #10 +
        'Tecle F8 para pesquisar os clientes');
   End;

end;

procedure TFrmRelEntregas.DCodRepresKeyPress(Sender: TObject; var Key: Char);
begin
   If Not(Key in ['0' .. '9', #8, #13, #46, #37, #38, #39, #40]) Then
   Begin
      Key := #0;
      BeepCritica;
      Erro('Esse campo � somente numerico' + #13 + #10 +
        'Tecle F8 para pesquisar os representantes');
   End;

end;

procedure TFrmRelEntregas.RadioGClick(Sender: TObject);
begin

   If RadioG.ItemIndex = 0 then
   begin
      TRadioGroup(RdPedidos.Controls[3]).Enabled := true;
   end;

   If (RadioG.ItemIndex = 1) then
   Begin
      TRadioGroup(RdPedidos.Controls[3]).Enabled := False;
   End;

   If (RadioG.ItemIndex = 2) then
   Begin
      TRadioGroup(RdPedidos.Controls[3]).Enabled := False;
   End;

end;

end.
