# SD-CARD-for-Tang-Nano-9k
SD CARD para TN9k .Basado en el SW de  WangXuan95 X.Wang  (Thank !!) Es un .v de prueba para Tang Nano 9k


Solo hay que cargarlo con el IDE de GOWIND e introducir una SD-Tf card FAT32, con un fichero llamado "example.txt"  para comprobar su funcionamiento.

S1 actua de RST para iniciar el proceso, S2 sirva para paralizar la descarga de lectura mediante la paralizacion
del relog que alimenta el modulo de lectura. De esta forma se prueba que es posible parar el proceso (momentaneamente) si es necesario.

Led[1]= off si fichero no encontrado.

Led[5:2] informan de los comando enviados a la tf card.

El proceso se realiza mediante SD BUS, con frec de relog de 47.25 Mhz. Si se necesita una frec menor, aumentar el parametro CLK_DIV, o recargar el PLL a 
otra frecuencia (x2).

Para mas informacion, consultar el trabajo de WangXuan95. Con esta frecuencia de relog, la velocidad de lectura es de 80 us/octeto, 
una vez abierto el fichero.

En esta prueba no se descargan los datos, pero se puede acceder a ellos colocando un wire [7:0] ... en .outbyte (                ).

Es interesante recalcar la velocidad, ya que usa el protocolo SD BUS en lugar de SPI.



OBSERVACIONES.

La fuente de reloj que se utiliza el un PLL (IP gowind) con una frecuencia de 94.5 Mhz dividido entre dos por Gowin_CLKDIV. Por motivos desconocidos, 
el sistema falla si se utiliza directamente el PLL ( a menor frecuencia ). Tampoco se puede usar Gowin_CLKDIV2. Tambien por motivos desconocidos se
produce un error a la hora de sistesis. De esta forma se consigue alimentar el sistema con una frecencia de 47.25 Mhz; lijeramente inferior a la máxima
teorica permitida.

Graficamente es este el funcionamiento del circuito de relog.

[Local 27 Mhz ]-> [PLL, out = 94.5 Mhz]->[DIV 2]-> 47.25 Mhz->[DIVISION =1 verilog code]-> 47.25 Mhz CLK SD Interfase.

El codigo es muy sensible al formato de la sd card. Debe estar formateada en FAT ó FAT32.




