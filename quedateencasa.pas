program quedateencasa(Input, Output);
{
       Version 1.0
       391 linea de codigo.
       Desarrollado por BOZAPE Pedro Boza
       En tiempos de cuarentena por el covid-19
       Golfito, Costa Rica 2020-03-21
       Para el desarrollo de este proyecto no se utilizo internet.
       Se uso el libro Pascal Programacion Estructura de
       J Winston Crawley y William G McArthur
       Hora de inicio 2020-03-21 11:30
       Hora de fin 2020-03-21 16:30

       Letras necesarias:  Q U E D A T N C S

       Ya habia olvidado lo que era tener que buscar ayuda en un libro y no
       usar internet del todo.  Pero fue interesando recordar viejos tiempos.

       Estoy seguro que se le puede mejorar mucho al proyecto asi que abierto
       a sugerencias / cambios / etc.

       Tiene una "pulga"  que se desborda de la pantalla original en tiempos
       de Pascal que en modo texto era de 80 x 25 pero en ambientes actuales
       corre sin problemas.

       Para su desarrollo  / compilicacion utilice "Dev-Pascal 1.9.2" que no
       se como aun tenia el instalador a la mano xD.

       Para finalizar decir que tenia como 25 años de no tocar Pascal.

       En una segunda version intentare programa que puedas entrar una palabra
       Y este la dibuja en pantalla.
}

uses crt;

{*********************************************************}

const
     px = 2;
     py = 2;
     ancho = 5;
     alto = 5;
     q = 'Q';
     u = 'U';
     e = 'E';
     d = 'D';
     a = 'A';
     t = 'T';
     n = 'N';
     c = 'C';
     s = 'S';

{*********************************************************}

type
     letra = array[1..5, 1..5] of integer; {matriz para llenara con una letra}

{*********************************************************}

var
   i, y, inicio, fin : integer;
   pausa : char;
   mq, mu, me, md, ma, mt, mn, mc, ms : letra; {matrices con las letras a usar}

{*********************************************************}

{Procedimiento para imprimir una letra dada}
procedure imprime_letra(xi, yi: integer; li: letra; cc: char);
var
   xj, yj: integer;

begin
     xj := xi;
     yj := yi;
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               if (li[i, y] = 1) then
               begin
                    gotoxy(xj, yj);
                    write(cc);
                    write(cc);
                    gotoxy (xj, yj + 1);
                    write(cc);
                    write(cc);
               end;
               yj := yj + py;
          end;
          xj := xj + px;
          yj := yi;
     end;
end;

{*********************************************************}

{Procedimiento para hacer un borde en la pantalla}
procedure borde;
begin
     gotoxy (1, 1); write(chr(201));
     gotoxy (86, 1); write(chr(187));
     gotoxy (1, 26); write(chr(200));
     gotoxy (86, 26); write(chr(188));
     for i := 2 to 85 do
     begin
          gotoxy(i, 1);
          writeln(char(205));
          gotoxy(i, 26);
          writeln(char(205));
     end;
     for i := 2 to 25 do
     begin
          gotoxy(1, i);
          writeln(char(186));
          gotoxy(86, i);
          writeln(char(186));
     end;
end;

{*********************************************************}

{Inicio del programa principal}
begin

{Aqui se llena cada matriz con lo puntos que se deben llenar para dibujar
una letra}
{Letra Q}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mq[i , y] := 0;
          end;
     end;
     mq[2,1] := 1;
     mq[3,1] := 1;
     mq[4,1] := 1;
     mq[1,2] := 1;
     mq[5,2] := 1;
     mq[1,3] := 1;
     mq[3,3] := 1;
     mq[5,3] := 1;
     mq[1,4] := 1;
     mq[4,4] := 1;
     mq[5,4] := 1;
     mq[2,5] := 1;
     mq[3,5] := 1;
     mq[4,5] := 1;

{*********************************************************}

{Letra U}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mu[i , y] := 0;
          end;
     end;
     mu[1,1] := 1;
     mu[5,1] := 1;
     mu[1,2] := 1;
     mu[5,2] := 1;
     mu[1,3] := 1;
     mu[5,3] := 1;
     mu[1,4] := 1;
     mu[5,4] := 1;
     mu[2,5] := 1;
     mu[3,5] := 1;
     mu[4,5] := 1;

{*********************************************************}

{Letra E}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               me[i , y] := 0;
          end;
     end;
     me[1,1] := 1;
     me[2,1] := 1;
     me[3,1] := 1;
     me[4,1] := 1;
     me[5,1] := 1;
     me[1,2] := 1;
     me[1,3] := 1;
     me[2,3] := 1;
     me[3,3] := 1;
     me[1,4] := 1;
     me[1,5] := 1;
     me[2,5] := 1;
     me[3,5] := 1;
     me[4,5] := 1;
     me[5,5] := 1;

{*********************************************************}

{Letra D}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               md[i , y] := 0;
          end;
     end;
     md[1,1] := 1;
     md[2,1] := 1;
     md[3,1] := 1;
     md[4,1] := 1;
     md[1,2] := 1;
     md[5,2] := 1;
     md[1,3] := 1;
     md[5,3] := 1;
     md[1,4] := 1;
     md[5,4] := 1;
     md[1,5] := 1;
     md[2,5] := 1;
     md[3,5] := 1;
     md[4,5] := 1;

{*********************************************************}

{Letra A}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               ma[i , y] := 0;
          end;
     end;
     ma[2,1] := 1;
     ma[3,1] := 1;
     ma[4,1] := 1;
     ma[1,2] := 1;
     ma[5,2] := 1;
     ma[1,3] := 1;
     ma[2,3] := 1;
     ma[3,3] := 1;
     ma[4,3] := 1;
     ma[5,3] := 1;
     ma[1,4] := 1;
     ma[5,4] := 1;
     ma[1,5] := 1;
     ma[5,5] := 1;

{*********************************************************}

{Letra T}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mt[i , y] := 0;
          end;
     end;
     mt[1,1] := 1;
     mt[2,1] := 1;
     mt[3,1] := 1;
     mt[4,1] := 1;
     mt[5,1] := 1;
     mt[3,2] := 1;
     mt[3,3] := 1;
     mt[3,4] := 1;
     mt[3,5] := 1;

{*********************************************************}

{Letra N}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mn[i , y] := 0;
          end;
     end;
     mn[1,1] := 1;
     mn[5,1] := 1;
     mn[1,2] := 1;
     mn[5,2] := 1;
     mn[1,3] := 1;
     mn[5,3] := 1;
     mn[1,4] := 1;
     mn[5,4] := 1;
     mn[1,5] := 1;
     mn[5,5] := 1;
     mn[2,2] := 1;
     mn[3,3] := 1;
     mn[4,4] := 1;

{*********************************************************}

{Letra C}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mc[i , y] := 0;
          end;
     end;
     mc[2,1] := 1;
     mc[3,1] := 1;
     mc[4,1] := 1;
     mc[5,1] := 1;
     mc[1,2] := 1;
     mc[1,3] := 1;
     mc[1,4] := 1;
     mc[2,5] := 1;
     mc[3,5] := 1;
     mc[4,5] := 1;
     mc[5,5] := 1;

{*********************************************************}

{Letra S}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               ms[i , y] := 0;
          end;
     end;
     ms[2,1] := 1;
     ms[3,1] := 1;
     ms[4,1] := 1;
     ms[5,1] := 1;
     ms[1,2] := 1;
     ms[2,3] := 1;
     ms[3,3] := 1;
     ms[4,3] := 1;
     ms[5,4] := 1;
     ms[1,5] := 1;
     ms[2,5] := 1;
     ms[3,5] := 1;
     ms[4,5] := 1;

{*********************************************************}
{Comienza la impresion en pantalla de las letras}
     clrscr;
     borde;
     inicio := 3;
     fin := 3;
     imprime_letra(inicio, fin, mq, q);
     inicio := inicio + ancho * px + px;

     imprime_letra(inicio, fin, mu, u);
     inicio := inicio + ancho * px + px;

     imprime_letra(inicio, fin, me, e);
     inicio := inicio + ancho * px + px;

     imprime_letra(inicio, fin, md, d);
     inicio := inicio + ancho * px + px;

     imprime_letra(inicio, fin, ma, a);
     inicio := inicio + ancho * px + px;

     imprime_letra(inicio, fin, mt, t);
     inicio := inicio + ancho * px + px;

     imprime_letra(inicio, fin, me, e);
     inicio := 3;

     fin := fin + alto * py + py;

     imprime_letra(inicio, fin, me, e);
     inicio := inicio + ancho * px + px;

     imprime_letra(inicio, fin, mn, n);
     inicio := inicio + ancho * px + px;

     inicio := inicio + ancho * px + px;

     imprime_letra(inicio, fin, mc, c);
     inicio := inicio + ancho * px + px;

     imprime_letra(inicio, fin, ma, a);
     inicio := inicio + ancho * px + px;

     imprime_letra(inicio, fin, ms, s);
     inicio := inicio + ancho * px + px;

     imprime_letra(inicio, fin, ma, a);
     inicio := inicio + ancho * px + px;

    readln(pausa);
end.

{*********************************************************}


