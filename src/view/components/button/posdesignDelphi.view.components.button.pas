unit posdesignDelphi.view.components.button;

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
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Objects;

type
  TComponentButton = class(TForm)
    LayoutContainer: TLayout;
    Image1: TImage;
    btnCmpButton: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCmpButtonClick(Sender: TObject);
  private
    { Private declarations }
    FClick: TProc<TObject>;
  public
    { Public declarations }
    function Build: TFMXObject;
    function Image(Value: string): TComponentButton;
    function Click(Value: TProc<TObject>): TComponentButton;
    function Align(Value : TAlignLayout): TComponentButton;
  end;

var
  ComponentButton: TComponentButton;

implementation

uses
  posdesignDelphi.view.source.utils;

{$R *.fmx}

function TComponentButton.Build: TFMXObject;
begin
  Result := LayoutContainer;
end;

function TComponentButton.Click(Value: TProc<TObject>): TComponentButton;
begin
  Result := Self;
  FClick := Value;
end;

procedure TComponentButton.FormCreate(Sender: TObject);
begin
  //
end;

function TComponentButton.Image(Value: string): TComponentButton;
begin
  Result := Self;
  TUtils.ResourceImage(Value, Image1);
end;

function TComponentButton.Align(Value: TAlignLayout): TComponentButton;
begin
  Result := Self;
  LayoutContainer.Align := TAlignLayout.None;
  LayoutContainer.Align := Value;
end;

procedure TComponentButton.btnCmpButtonClick(Sender: TObject);
begin
  if Assigned(FClick) then
    FClick(Sender);
end;

end.
