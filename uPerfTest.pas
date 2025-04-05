unit uPerfTest;

{*************************************************************************************************
 *                                                                                               *
 * Unit to demanstrate how to use BoldPerformanceCounter                                         *
 * By have a rootcounter with childrens a tree of counters is built                              *
 * Each leaf has its own counter.                                                                *
 *                                                                                               *
 * The owner of a leaf has a list of childrens.                                                  *
 * The onwner of children has a counter that is the sum of childrens                             *
 * and the own time when not children is active                                                  *
 *                                                                                               *
 * See BoldPerformanceUnit for all functionality                                                 *
 *                                                                                               *
 *************************************************************************************************}

interface

uses
  BoldPerformanceCounter;

type
  TTestClass = class(TObject)
  private
    fRows, fCols, fDepth: Integer;
    fLowRand, fHighRand: Integer;
    fMainCounter: TBoldPerformanceCounter;
    procedure InitializeCounter;
    procedure StartMeasure;
    procedure StopMeasure;
    procedure DoWork;
    procedure DoRowWork(ARowIndex: Integer);
    procedure DoColWork(ARowIndex, AColIndex: Integer);
    procedure DoDepthWork(ARowIndex, AColIndex, ADepthIndex: Integer);
    function CalcResult: String;
    function GetSleepTime: Integer;
  public
    constructor Create;
    destructor Destroy; override;
    function Measure: String;
  end;

function MainPerformanceTest: String;

implementation

uses
  System.SysUtils;

function MainPerformanceTest: String;
var
  oTest: TTestClass;
begin
  oTest := TTestClass.Create;
  try
    Result := otest.Measure;
  finally
    otest.Free;
  end;
end;

{ TTestClass }

constructor TTestClass.Create;
begin
  inherited;
  fRows := 4;
  fCols := 3;
  fDepth := 2;
  fLowRand := 20;
  fHighRand := 980; // Range 0.02 - 1 second delay
  Randomize;
  InitializeCounter;
end;

destructor TTestClass.Destroy;
begin
  fMainCounter.Free;
  inherited;
end;

function TTestClass.GetSleepTime: Integer;
begin
  Result := fLowRand + Random(fHighRand);
end;

procedure TTestClass.DoWork;
var
  RowIndex: Integer;
  st: Integer;
begin
  st := GetSleepTime;
  WriteLn('Start DoWork ', '(', st, ')');
  StartMeasure;
  sleep(st);
  for RowIndex := 0 to fRows do
  begin
    DoRowWork(RowIndex);
  end;
  StopMeasure;
end;

procedure TTestClass.DoRowWork(ARowIndex: Integer);
var
  ColIndex: Integer;
  st: Integer;
begin
  st := GetSleepTime;
  WriteLn('Start DoRowWork [', ARowIndex, '] (', st, ')');
  fMainCounter.Children[ARowIndex].Start;
  sleep(st);

  for ColIndex := 0 to fRows - 1 do
  begin
    DoColWork(ARowIndex, ColIndex);
  end;
  fMainCounter.Children[ARowIndex].Start;
end;

procedure TTestClass.DoColWork(ARowIndex, AColIndex: Integer);
var
  DepthIndex: Integer;
  st: Integer;
begin
  st := GetSleepTime;
  WriteLn('Start DoColWork [', ARowIndex, ',', AColIndex, '] (', st, ')');
  fMainCounter.Children[ARowIndex].Children[AColIndex].Start;
  sleep(st);

  for DepthIndex := 0 to fCols - 1 do
  begin
    DoDepthWork(ARowIndex, AColIndex, DepthIndex);
  end;
  fMainCounter.Children[ARowIndex].Children[AColIndex].Stop;
end;

procedure TTestClass.DoDepthWork(ARowIndex, AColIndex, ADepthIndex: Integer);
var
  st: Integer;
begin
  st := GetSleepTime;
  WriteLn('Start DoDepthWork [', ARowIndex, ',', AColIndex, ',', ADepthIndex, '] (', st, ')');
  fMainCounter.Children[ARowIndex].Children[AColIndex].Children[ADepthIndex].Start;
  sleep(st);
  fMainCounter.Children[ARowIndex].Children[AColIndex].Children[ADepthIndex].Stop;
end;

procedure TTestClass.InitializeCounter;
var
  i, j, k: Integer;
  oCounter, oSubCounter: TBoldPerformanceCounter;
begin
  fMainCounter := TBoldPerformanceCounter.Create(nil, 'Root counter');
  for i := 0 to fRows do
  begin
    oCounter := TBoldPerformanceCounter.Create(fMainCounter, Format('Child [%d]', [i]));
    for j := 0 to fCols do
    begin
      oSubCounter := TBoldPerformanceCounter.Create(oCounter, Format('Child [%d, %d]', [i, j]));
      for k := 0 to fDepth do
      begin
        TBoldPerformanceCounter.Create(oSubCounter, Format('Child [%d, %d, %d]', [i, j, k]));
      end;
    end;
  end;
end;

function TTestClass.Measure: String;
begin
  DoWork;
  Result := CalcResult;
end;

function TTestClass.CalcResult: String;
begin
  Result := fMainCounter.AsDetailedString;
end;

procedure TTestClass.StartMeasure;
begin
  fMainCounter.Start;
end;

procedure TTestClass.StopMeasure;
begin
  fMainCounter.Stop;
end;

end.
