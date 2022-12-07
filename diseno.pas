unit diseno;
interface

uses
  crt, tipos_datos;

procedure nombre();
procedure logo();
procedure cuadro_texto();
procedure movimiento();

implementation

procedure nombre();
begin
     gotoxy(55, 2);writeln('################################################################');gotoxy(55, 3);writeln('#  ______                   _             ______         _     #');
     gotoxy(55, 4);writeln('#  | ___ \                 | |            | ___ \       | |    #');gotoxy(55, 5);writeln('#  | |_/ /  ___  _ __    __| |  ___  _ __ | |_/ /  ___  | |_   #');
     gotoxy(55, 6);writeln('#  | ___ \ / _ \|  _ \  / _` | / _ \|  __|| ___ \ / _ \ | __|  #');gotoxy(55, 7);writeln('#  | |_/ /|  __/| | | || (_| ||  __/| |   | |_/ /| (_) || |_   #');
     gotoxy(55, 8);writeln('#  \____/  \___||_| |_| \__,_| \___||_|   \____/  \___/  \__|  #');gotoxy(55, 9);writeln('#                                                              #');
     gotoxy(55, 10);writeln('################################################################');gotoxy(55, 11);writeln('|                                                              |');
     gotoxy(55, 12);writeln('|                                                              |');gotoxy(55, 13);writeln('|______________________________________________________________|');
end;

procedure logo();
 begin
 writeln('');
 writeln('                    .-.                                    ');
 writeln('                   (   )                                   ');
 writeln('                    |H|                                    ');
 writeln('                    |H|                                    ');
 writeln('                    |H|                                    ');
 writeln('                    |H|                                    ');
 writeln('                    |H|                                    ');
 writeln('                   | H |                                   ');
 writeln('                 .|  H  |.                                 ');
 writeln('            .---/_________\---.                            ');
 writeln('         .-´                   `-.                         ');
 writeln('       .´                         `.                       ');
 writeln('     .´                             `.                     ');
 writeln('   .´                                 `.                   ');
 writeln('  /                                     \                  ');
 writeln(' |                                       |                 ');
 writeln(' |                                       |                 ');
 writeln(' |             __________________________|                 ');
 writeln(' |           .´                          `-.               ');
 writeln(' |          ´                               `-.            ');
 writeln(' |         J            ______________________ `-.         ');
 writeln(' |        P         .-´    `-88888-´      8888b.  `        ');
 writeln(' |        |        ´          `P.´          8888b  \       ');
 writeln(' |        |       ´       @     L       @    q888b  L      ');
 writeln(' |        |       J             |            )888D  )      ');
 writeln(' |        J       `             J            d888P  P      ');
 writeln(' |         L      `.          .b.          ,8888P  /       ');
 writeln(' |          `.      `-.____,o88888o.____,o8888P´ .´        ');
 writeln(' |            `._______________________________.´          ');
 writeln(' |                                       |                 ');
 writeln(' |          _____________________________J                 ');
 writeln(' |        .´   |       |       |      |                    ');
 writeln(' |       ´_____|_______|_______|______|                    ');
 writeln(' |      |      |       |       |      |                    ');
 writeln(' |      |______|_______|_______|______|                    ');
 writeln(' |      `.     |       |       |      |                    ');
 writeln(' |        `.___|_______|_______|______J                    ');
 writeln(' |                                     |                   ');
 writeln('  `.__                                 |                   ');
 writeln('      `.__                           _.´                   ');
 writeln('          `.______________________.-´                      ');
 nombre();
 end;

procedure cuadro_texto();
begin
     window(49,32,95,39);
     writeln('   _______________________________________');
     writeln('  |                                       |');
     writeln('  |                                       |');
     writeln('_/                                        |');
     writeln(' \                                        |');
     writeln('  |                                       |');
     writeln('  |_______________________________________|');

end;

procedure movimiento();
var i: byte;
begin
     window(25,25,30,27); clrscr; writeln(''); writeln(' @');
     window(39,25,45,27); clrscr; writeln(''); writeln(' @');
     window(8,32,45,50);
     for i:= 1 to 5 do
     begin
     if (i = 1) or (i = 3) then
         begin
         clrscr;
         writeln('     _____________________________J');
         write('   .´');textbackground(4);write('   |       |       |      ');textbackground(8);writeln('|');
         write('  ´');textbackground(4);write('_    |       | ______|______');textbackground(8);writeln('|');
         write(' |');textbackground(4);write('  `---|.__.---|´ ___  |      ');textbackground(8);writeln('|');
         write(' |');textbackground(4);write('______|____,--|-´   `-|-.____');textbackground(8);writeln('|');
         write(' `.');textbackground(4);write('     |       |       |      ');textbackground(8);writeln('|');
         write('   `.');textbackground(4);write('___|_______|_______|______');textbackground(8);writeln('J');
         writeln('                                |'); writeln('                                |');
         writeln('.__                           _.´'); writeln('   `.______________________.-´');
         delay(400);
         end
     else
         if (i = 2) or (i = 4) then
             begin
             clrscr;
             writeln('     _____________________________J');
             write('   .´');textbackground(4);write('   |       |       |      ');textbackground(8);writeln('|');
             write('  ´');textbackground(4);write('_____|_______|_      |      ');textbackground(8);writeln('|');
             write(' |');textbackground(4);write('      |       | `---._|_.---´');textbackground(8);writeln('|');
             write(' |');textbackground(4);write('_.---´|´---.__|_______|______');textbackground(8);writeln('|');
             write(' `.');textbackground(4);write('     |       |       |      ');textbackground(8);writeln('|');
             write('   `.');textbackground(4);write('___|_______|_______|______');textbackground(8);writeln('J');
             writeln('                                |'); writeln('                                |');
             writeln('.__                           _.´'); writeln('   `.______________________.-´');
             delay(200);
             end
         else
             begin
             clrscr;
             writeln('     _____________________________J');
             write('   .´');textbackground(8);write('   |       |       |      ');textbackground(8);writeln('|');
             write('  ´');textbackground(8);write('_____|_______|_______|______');textbackground(8);writeln('|');
             write(' |');textbackground(8);write('      |       |       |      ');textbackground(8);writeln('|');
             write(' |');textbackground(8);write('______|_______|_______|______');textbackground(8);writeln('|');
             write(' `.');textbackground(8);write('     |       |       |      ');textbackground(8);writeln('|');
             write('   `.');textbackground(8);write('___|_______|_______|______');textbackground(8);writeln('J');
             writeln('                                |'); writeln('                                |');
             writeln('.__                           _.´'); writeln('   `.______________________.-´');
             end;
     end;
     window(25,25,30,27); clrscr; writeln('  @');
     window(39,25,45,27); clrscr; writeln('  @');
     window(0,0,255,255);
end;
end.

