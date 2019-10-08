program Siaod2_2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type pt=^elem;
 elem = record
    Data:integer;
    Next:pt;
    end;
var k,N,i,j,h,c,f:integer;
Head,Curr:pt;
begin
  Write('Please, enter k: ');
Readln(k);
N:=64;
if k=0 then writeln('Incorrect imput')
else begin

  Writeln('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  Writeln('|N |                                                                           DELETED                                                                                                              |LAST|');
  Writeln('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
for i:=1 to N do
  begin
    c:=196;
    Write('|',i:2,'|');
    c:=c-4;
    New(Head);
         Head^.Data:=1;
         Curr:=Head;
     for j:=2 to i do
       begin
         New(Curr^.Next);
         Curr:=Curr^.Next;
         Curr^.Data:=j;
       end;
       Curr^.Next:=Head;

       Curr:=Head;
       for j:=1 to i-1 do
       begin
         for h:=1 to k-2 do
         begin
           curr:=curr^.Next;
         end;
         write(Curr^.Next^.Data:2,' ');
         c:=c-3;
         Curr^.Next:= Curr^.Next^.Next;
         Curr:=Curr^.Next;
       end;
       for f:=1 to c do
         write(' ');
       Writeln('|',Curr^.Next^.Data:4,'|');
       //Writeln('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');

  end;
  Writeln('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
  end;

  Readln;
end.
