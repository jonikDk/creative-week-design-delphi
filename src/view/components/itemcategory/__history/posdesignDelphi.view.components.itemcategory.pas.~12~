unit posdesignDelphi.view.components.itemcategory;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Layouts,
  FMX.Objects,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  posdesignDelphi.view.source.utils, FMX.Effects;

type
  TComponentCategory = class(TForm)
    LayoutContainer: TLayout;
    Rectangle1: TRectangle;
    Layout1: TLayout;
    Layout2: TLayout;
    lblDescription: TLabel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    ShadowEffect1: TShadowEffect;
    procedure SpeedButton1Click(Sender: TObject);
  private
    FClick: TProc<TObject>;
  public
    { Public declarations }
    function Build: TFMXObject;
    function Resources(Image, Description: string): TComponentCategory;
    function Click(Value: TProc<TObject>): TComponentCategory;
  end;

var
  ComponentCategory: TComponentCategory;

implementation

{$R *.fmx}
{ TComponentCategory }

function TComponentCategory.Build: TFMXObject;
begin
  Result := LayoutContainer;
end;

function TComponentCategory.Click(Value: TProc<TObject>): TComponentCategory;
begin
  Result := Self;
  FClick := Value;
end;

function TComponentCategory.Resources(Image, Description: string): TComponentCategory;
begin
  Result := Self;

  lblDescription.Text := Description;

  TUtils.ResourceImage(Image, Image1);

  Image1.Bitmap.ReplaceOpaqueColor(TAlphaColor($FFB5b5b5));
end;

procedure TComponentCategory.SpeedButton1Click(Sender: TObject);
begin
  if Assigned(FClick) then
    FClick(Sender);
end;

end.
