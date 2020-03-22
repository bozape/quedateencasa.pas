program quedateencasa(Input, Output);
{
       Version 2.0
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

       Que falta:
       Que valide que la palabra no sea mayor a 7 letras
       Lectura de las 2 palabras a imprimir en pantalla
       Llenas matrices de las letras del abecedarios faltantes.
       Maquetar y declarar numeros
}

uses crt;

{*****************************************************************************}

const
     px = 2;
     py = 2;
     ancho = 5;
     alto = 5;

{*****************************************************************************}

type
     letra = array[1..5, 1..5] of integer; {matriz para llenara con una letra}

{*****************************************************************************}

var
   i, y, inicio, fin, ip : integer;
   pausa : char;

   {matrices con las letras a usar}
   ma, mb, mc, md, me, mf, mg, mh, mi, mj, mk, ml, mm : letra;
   mn, mo, mp, mq, mr, ms, mt, mu, mv, mw, mx, my, mz : letra;
   palabra : string;

{*****************************************************************************}
{Procedimiento para insertar un caracter en blanco}
procedure espacio;
begin
     inicio := inicio + ancho * px + px;
end;

{*****************************************************************************}
{Procedimient para hacer un saldo de linea y escribir una segunda palabra}
procedure salto_linea;
begin
     inicio := 3;
     fin := fin + alto * py + py;
end;

{*****************************************************************************}
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
     espacio;
end;

{*****************************************************************************}
{Imprime una palabra completa}
procedure imprime_palabra (palabra: string);
begin
     for ip := 1 to length(palabra) do
     begin
          case palabra[ip] of
          ' ' : espacio;
          'a' : imprime_letra(inicio, fin, ma, 'A');
          'b' : imprime_letra(inicio, fin, mb, 'B');
          'c' : imprime_letra(inicio, fin, mc, 'C');
          'd' : imprime_letra(inicio, fin, md, 'D');
          'e' : imprime_letra(inicio, fin, me, 'E');
          'f' : imprime_letra(inicio, fin, mf, 'F');
          'g' : imprime_letra(inicio, fin, mg, 'G');
          'h' : imprime_letra(inicio, fin, mh, 'H');
          'i' : imprime_letra(inicio, fin, mi, 'I');
          'j' : imprime_letra(inicio, fin, mj, 'J');
          'k' : imprime_letra(inicio, fin, mk, 'K');
          'l' : imprime_letra(inicio, fin, ml, 'L');
          'm' : imprime_letra(inicio, fin, mm, 'M');
          'n' : imprime_letra(inicio, fin, mn, 'N');
          'o' : imprime_letra(inicio, fin, mo, 'O');
          'p' : imprime_letra(inicio, fin, mp, 'P');
          'q' : imprime_letra(inicio, fin, mq, 'Q');
          'r' : imprime_letra(inicio, fin, mr, 'R');
          's' : imprime_letra(inicio, fin, ms, 'S');
          't' : imprime_letra(inicio, fin, mt, 'T');
          'u' : imprime_letra(inicio, fin, mu, 'U');
          'v' : imprime_letra(inicio, fin, mv, 'V');
          'w' : imprime_letra(inicio, fin, mw, 'W');
          'x' : imprime_letra(inicio, fin, mx, 'X');
          'y' : imprime_letra(inicio, fin, my, 'Y');
          'z' : imprime_letra(inicio, fin, mz, 'Z');
          end;
     end;
end;
{*****************************************************************************}

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

{*****************************************************************************}
{Inicio del programa principal}
begin

{Aqui se llena cada matriz con lo puntos que se deben llenar para dibujar
una letra}

{*****************************************************************************}
{Letra A}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               ma[i , y] := 0;
          end;
     end;
     ma[2,1] := 1; ma[3,1] := 1; ma[4,1] := 1; ma[1,2] := 1; ma[5,2] := 1; 
     ma[1,3] := 1; ma[2,3] := 1; ma[3,3] := 1; ma[4,3] := 1; ma[5,3] := 1; 
     ma[1,4] := 1; ma[5,4] := 1; ma[1,5] := 1; ma[5,5] := 1;

{*****************************************************************************}
{Letra B}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mb[i , y] := 0;
          end;
     end;
     mb[1,1] := 1; mb[2,1] := 1; mb[3,1] := 1; mb[4,1] := 1; mb[1,2] := 1;
     mb[5,2] := 1; mb[1,3] := 1; mb[2,3] := 1; mb[3,3] := 1; mb[4,3] := 1;
     mb[1,4] := 1; mb[5,4] := 1; mb[1,5] := 1; mb[2,5] := 1;
     mb[3,5] := 1; mb[4,5] := 1;

{*****************************************************************************}
{Letra C}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mc[i , y] := 0;
          end;
     end;
     mc[2,1] := 1; mc[3,1] := 1; mc[4,1] := 1; mc[5,1] := 1; mc[1,2] := 1; 
     mc[1,3] := 1; mc[1,4] := 1; mc[2,5] := 1; mc[3,5] := 1; mc[4,5] := 1; 
     mc[5,5] := 1;

{*****************************************************************************}
{Letra D}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               md[i , y] := 0;
          end;
     end;
     md[1,1] := 1; md[2,1] := 1; md[3,1] := 1; md[4,1] := 1; md[1,2] := 1; 
     md[5,2] := 1; md[1,3] := 1; md[5,3] := 1; md[1,4] := 1; md[5,4] := 1; 
     md[1,5] := 1; md[2,5] := 1; md[3,5] := 1; md[4,5] := 1;

{*****************************************************************************}
{Letra E}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               me[i , y] := 0;
          end;
     end;
     me[1,1] := 1; me[2,1] := 1; me[3,1] := 1; me[4,1] := 1; me[5,1] := 1; 
     me[1,2] := 1; me[1,3] := 1; me[2,3] := 1; me[3,3] := 1; me[1,4] := 1; 
     me[1,5] := 1; me[2,5] := 1; me[3,5] := 1; me[4,5] := 1; me[5,5] := 1;

{*****************************************************************************}
{Letra F}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mf[i , y] := 0;
          end;
     end;
     mf[1,1] := 1; mf[2,1] := 1; mf[3,1] := 1; mf[4,1] := 1; mf[5,1] := 1;
     mf[1,2] := 1; mf[1,3] := 1; mf[2,3] := 1; mf[1,3] := 1; mf[1,4] := 1;
     mf[1,5] := 1; mf[3,3] := 1;

{*****************************************************************************}
{Letra G}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mg[i , y] := 0;
          end;
     end;
     mg[1,1] := 1; mg[2,1] := 1; mg[3,1] := 1; mg[4,1] := 1; mg[5,1] := 1;
     mg[1,2] := 1;
     mg[1,3] := 1; mg[3,3] := 1; mg[4,3] := 1; mg[5,3] := 1;
     mg[1,4] := 1; mg[5,4] := 1;
     mg[1,5] := 1; mg[2,5] := 1; mg[3,5] := 1; mg[4,5] := 1; mg[5,5] := 1;

{*****************************************************************************}
{Letra H}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mh[i , y] := 0;
          end;
     end;
     mh[1,1] := 1; mh[5,1] := 1; mh[1,2] := 1; mh[5,2] := 1; mh[1,3] := 1;
     mh[2,3] := 1; mh[3,3] := 1; mh[4,3] := 1; mh[5,3] := 1; mh[1,4] := 1;
     mh[5,4] := 1; mh[1,5] := 1; mh[5,5] := 1;

{*****************************************************************************}
{Letra I}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mi[i , y] := 0;
          end;
     end;
     mi[3,1] := 1; mi[3,2] := 1; mi[3,3] := 1; mi[3,4] := 1; mi[3,5] := 1;

{*****************************************************************************}
{Letra J}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mj[i , y] := 0;
          end;
     end;
     mj[5,1] := 1; mj[5,2] := 1; mj[5,3] := 1; mj[5,4] := 1; mj[1,4] := 1;
     mj[2,5] := 1; mj[3,5] := 1; mj[4,5] := 1;

{*****************************************************************************}
{Letra K}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mk[i , y] := 0;
          end;
     end;
     mk[1,1] := 1; mk[5,1] := 1; mk[1,2] := 1; mk[4,2] := 1; mk[1,3] := 1;
     mk[2,3] := 1; mk[3,3] := 1; mk[1,4] := 1; mk[4,4] := 1; mk[1,5] := 1;
     mk[5,5] := 1;

{*****************************************************************************}
{Letra L}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               ml[i , y] := 0;
          end;
     end;
     ml[1,1] := 1; ml[1,2] := 1; ml[1,3] := 1; ml[1,4] := 1; ml[1,5] := 1;
     ml[2,5] := 1; ml[3,5] := 1; ml[4,5] := 1; ml[5,5] := 1;

{*****************************************************************************}
{Letra M}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mm[i , y] := 0;
          end;
     end;
     mm[1,1] := 1; mm[1,2] := 1; mm[1,3] := 1; mm[1,4] := 1; mm[1,5] := 1;
     mm[5,1] := 1; mm[5,2] := 1; mm[5,3] := 1; mm[5,4] := 1; mm[5,5] := 1;
     mm[2,2] := 1; mm[4,2] := 1; mm[3,3] := 1;

{*****************************************************************************}
{Letra N}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mn[i , y] := 0;
          end;
     end;
     mn[1,1] := 1; mn[5,1] := 1; mn[1,2] := 1; mn[5,2] := 1; mn[1,3] := 1; 
     mn[5,3] := 1; mn[1,4] := 1; mn[5,4] := 1; mn[1,5] := 1; mn[5,5] := 1; 
     mn[2,2] := 1; mn[3,3] := 1; mn[4,4] := 1;

{*****************************************************************************}
{Letra Q}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mq[i , y] := 0;
          end;
     end;
     mq[2,1] := 1; mq[3,1] := 1; mq[4,1] := 1; mq[1,2] := 1; mq[5,2] := 1; 
     mq[1,3] := 1; mq[3,3] := 1; mq[5,3] := 1; mq[1,4] := 1; mq[4,4] := 1; 
     mq[5,4] := 1; mq[2,5] := 1; mq[3,5] := 1; mq[4,5] := 1;

{*****************************************************************************}
{Letra S}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               ms[i , y] := 0;
          end;
     end;
     ms[2,1] := 1; ms[3,1] := 1; ms[4,1] := 1; ms[5,1] := 1; ms[1,2] := 1; 
     ms[2,3] := 1; ms[3,3] := 1; ms[4,3] := 1; ms[5,4] := 1; ms[1,5] := 1; 
     ms[2,5] := 1; ms[3,5] := 1; ms[4,5] := 1;

{*****************************************************************************}
{Letra T}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mt[i , y] := 0;
          end;
     end;
     mt[1,1] := 1; mt[2,1] := 1; mt[3,1] := 1; mt[4,1] := 1; mt[5,1] := 1; 
     mt[3,2] := 1; mt[3,3] := 1; mt[3,4] := 1; mt[3,5] := 1;

{*****************************************************************************}
{Letra U}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mu[i , y] := 0;
          end;
     end;
     mu[1,1] := 1; mu[5,1] := 1; mu[1,2] := 1; mu[5,2] := 1; mu[1,3] := 1; 
     mu[5,3] := 1; mu[1,4] := 1; mu[5,4] := 1; mu[2,5] := 1; mu[3,5] := 1; 
     mu[4,5] := 1;

{*****************************************************************************}
{Letra O}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mo[i , y] := 0;
          end;
     end;
     mo[2,1] := 1; mo[3,1] := 1; mo[4,1] := 1; mo[1,2] := 1; mo[5,2] := 1;
     mo[1,3] := 1; mo[5,3] := 1; mo[1,4] := 1; mo[5,4] := 1; mo[2,5] := 1;
     mo[3,5] := 1; mo[4,5] := 1;

{*****************************************************************************}
{Letra P}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mp[i , y] := 0;
          end;
     end;
     mp[1,1] := 1; mp[2,1] := 1; mp[3,1] := 1; mp[4,1] := 1; mp[1,2] := 1;
     mp[5,2] := 1; mp[1,3] := 1; mp[4,3] := 1; mp[1,4] := 1; mp[1,5] := 1;
     mp[2,3] := 1; mp[3,3] := 1;

{*****************************************************************************}
{Letra R}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mr[i , y] := 0;
          end;
     end;
     mr[1,1] := 1; mr[2,1] := 1; mr[3,1] := 1; mr[4,1] := 1; mr[1,2] := 1;
     mr[5,2] := 1; mr[1,3] := 1; mr[4,3] := 1; mr[1,4] := 1; mr[1,5] := 1;
     mr[5,5] := 1; mr[2,3] := 1; mr[3,3] := 1; mr[4,4] := 1;

{*****************************************************************************}
{Letra V}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mv[i , y] := 0;
          end;
     end;
     mv[1,1] := 1; mv[5,1] := 1; mv[1,2] := 1; mv[5,2] := 1; mv[1,3] := 1;
     mv[5,3] := 1; mv[2,4] := 1; mv[4,4] := 1; mv[3,5] := 1;

{*****************************************************************************}
{Letra W}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mw[i , y] := 0;
          end;
     end;
     mw[1,1] := 1; mw[5,1] := 1; mw[1,2] := 1; mw[5,2] := 1; mw[1,3] := 1;
     mw[5,3] := 1; mw[1,4] := 1; mw[5,4] := 1; mw[2,5] := 1; mw[3,5] := 1;
     mw[4,5] := 1; mw[3,4] := 1; mw[3,3] := 1;

{*****************************************************************************}
{Letra X}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mx[i , y] := 0;
          end;
     end;
     mx[1,1] := 1; mx[5,1] := 1; mx[2,2] := 1; mx[4,2] := 1; mx[3,3] := 1;
     mx[2,4] := 1; mx[4,4] := 1; mx[1,5] := 1; mx[5,5] := 1;

{*****************************************************************************}
{Letra Y}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               my[i , y] := 0;
          end;
     end;
     my[1,1] := 1; my[5,1] := 1; my[2,2] := 1; my[4,2] := 1; my[3,3] := 1;
     my[3,4] := 1; my[3,5] := 1;

{*****************************************************************************}
{Letra Z}
     for i := 1 to 5 do
     begin
          for y := 1 to 5 do
          begin
               mz[i , y] := 0;
          end;
     end;
     mz[1,1] := 1; mz[2,1] := 1; mz[3,1] := 1; mz[4,1] := 1; mz[5,1] := 1;
     mz[4,2] := 1; mz[3,3] := 1; mz[2,4] := 1; mz[1,5] := 1; mz[2,5] := 1;
     mz[3,5] := 1; mz[4,5] := 1; mz[5,5] := 1;

{*****************************************************************************}
{Comienza la impresion en pantalla de las letras}
     clrscr;
     borde;
     inicio := 3;
     fin := 3;
     imprime_palabra('quedate');
     salto_linea;
     imprime_palabra('en casa');


    readln(pausa);
end.

{*****************************************************************************}


