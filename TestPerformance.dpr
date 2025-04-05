program TestPerformance;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uPerfTest in 'uPerfTest.pas',
  BoldPerformanceCounter in 'BoldPerformanceCounter.pas';

begin
  try
    WriteLn(MainPerformanceTest);
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
