unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ShellApi, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, Vcl.ExtCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxCore, cxClasses, dxSkinsForm;

type
  TfmMain = class(TForm)
    opfile: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    btnfechar: TcxButton;
    dxSkinController1: TdxSkinController;
    Panel3: TPanel;
    edtComando: TcxTextEdit;
    btnBOTAOPRINCIPAL: TcxButton;
    btnFind: TcxButton;
    procedure btnBOTAOPRINCIPALClick(Sender: TObject);
    procedure btnFindClick(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

procedure TfmMain.btnBOTAOPRINCIPALClick(Sender: TObject);
begin

  if edtComando.text = '' then
  begin
    showmessage('error, please select an file');
    exit

  end;

  ShellExecute(handle,'open',Pchar( edtComando.Text), '','',SW_SHOWNORMAL);
end;

procedure TfmMain.btnFindClick(Sender: TObject);
begin
  if opfile.Execute = True then
    edtComando.Text := opfile.FileName
  else
    showmessage('You need to select a file');
end;

procedure TfmMain.btnfecharClick(Sender: TObject);
var v1,v2,v3 : Integer;
begin
  v1 := 1;
  v2 := 10;
  v3 := 7;

  v1 := v1 + v2 + v3;

  Close;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
 edtComando.clear;
  self.WindowState :=wsMaximized

end;

end.
