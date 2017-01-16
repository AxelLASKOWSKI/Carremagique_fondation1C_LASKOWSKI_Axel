program carremagique;
uses crt;

 (*BUT: cree un carre magique
 ENTREE: debut du carre magique
 SORTIE: le carre magique fini

const
  n=5 //valeur maximum du tableau
var
  carre=tableau[1..n,1..n] de entier
  i,j,nombre:entier

procedure crea  //creation du carre

  var
  i,j: entier

  debut
    debut
      pour i<-1 a n faire
      debut
        pour j<-1 a n faire
        carre[i,j]<-0
      fin
      ecrire
    fin
  fin
  
procedure placement //placement des nombre

  var
    i,j,T:entier

  debut
    j<- (n div 2) +1
    i<-2
    T<-0
  fin
procedure deplacement //deplacement des nombre
  var
    i,j,T,ancj,anci:integer
  debut
    repeter
      inc (T)
      carre[i,j]<-T
      ancj<-j
      dec (j)
      SI (j<1) alors 
      j<-n
      anci<-i
      dec (i)
      SI (i<1) alors
      i<-n
      SI carre[i,j]<>0 alors
        debut
          i<-anci-1
          SI i>n alors
          i<-1
          j<-ancj
          finsi
        fin
      jusqu'a T=n*n
      fin
    fin
  debut
    car
    pour i<-1 a n faire
    debut
      pour j<-1 a n faire
        ecrire (carre[i,j]:5)
        ecrire
    fin
    lire
  fin
*)
const
  n=5;
var 
  cell:array[1..n,1..n] of integer;
  i,j,sum:integer;
procedure car;
var 
  i,j,count,ancj,anci:integer;
begin 
  clrscr;
 begin   
  begin
   for i:=1 to n do
    begin
      for j:=1 to n do
      cell[i,j]:=0;
    end;
  end;
 j:=(n div 2) +1;
 i:=2;
 count:=0;
 repeat
 inc(count);
 cell[i,j]:=count;
 ancj:=j;
 dec (j);
if (j<1) then 
  j:=n;
 anci:=i;
 dec (i);
if (i<1) then 
  i:=n;
if cell[i,j]<>0 then
  begin
   i:=anci-1;
   if i>n then 
   i:=1;
   j:=ancj;
  end;
 until count=n*n;
 end;
end;
begin
 car;
 for i:=1 to n do
  begin
    for j:=1 to n do
    write(cell[i,j]:5);
    writeln;
  end;
  readln;
end.