# SD-CARD-for-Tang-Nano-9k
Basado en el SW de  WangXuan95 X.Wang  (Thank !!) Es un .v de prueba para Tang Nano 9k


Solo hay que cargarlo con el IDE de GOWIND e introducir una SD-Tf card FAT32, con un fichero llamado "example.txt"  para comprobar su funcionamiento.
S1 actua de RST para iniciar el proceso, S2 sirva para paralizar la descarga de lectura mediante la paralizacion
del relog que alimenta el modulo de lectura. De esta forma se prueba que es posible parar el proceso (momentaneamente) si es necesario
Led[1]= off si fichero no encontrado.
Led[5:2] informan de los comando enviados a la tf card.
El proceso se realiza mediante SD BUS, con frec de relog de 47.25 Mhz. Si se necesita una frec menor, aumentar el parametro CLK_DIV.
Para mas informacion, consultar el trabajo de WangXuan95. Con esta frecuencia de relog, la velocidad de lectura es de 80 us/octeto, 
una vez abierto el fichero.
En esta prueba no se descargan los datos, pero se puede acceder a ellos colocando un wire [7:0] ... en .outbyte          (                )


OBSERVACIONES.

