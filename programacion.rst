Programación en Octave
======================

Scripts
-------

Podemos escribir una serie de instrucciones de Octave en un fichero con extensión *.m* y luego ejecutarlo desde la consola. Al fichero con las instrucciones de Octave se le llama un *script* o programa. Para ejecutarlo tendremos que situarnos en el directorio donde esté el fichero y teclear su nombre sin extensión en la consola de Octave.

El lenguaje *m* es un lenguaje interpretado, esto es, Octave lee los ficheros *m* y los va ejecutando línea a línea, sin una compilación previa. 

Para escribir los programas utilizaremos un editor de texto. La versión actual de Octave trae un editor incorporado y también copia en el directorio de instalación una versión del editor *Notepad++*.

.. note:: Se puede ejecutar un fichero *.m* situado en otro directorio distinto del directorio de trabajo. Para ello tendremos que teclear la ruta completa del fichero. También puede suceder que el fichero esté grabado en algún directorio del *path* de Octave. Entonces no será necesario teclear la ruta completa, sino simplemente el nombre del fichero.

El programa *Hola mundo*
------------------------

Es tradicional comenzar el aprendizaje de cualquier lenguaje de programación con el típico programa *Hola Mundo*. Se trata de escribir un programa que muestre por pantalla la frase *Hola mundo*. El ejercicio permite comprobar que uno sabe crear el fichero de instrucciones, escribir alguna instrucción en él y hacer que el ordenador ejecute el programa.

En nuestro caso vamos a crear un fichero en el mismo directorio de trabajo en el que nos encontremos, llamado **'hello.m'**, y vamos a escribir en él una única instrucción:

.. code-block:: octave

	disp('Hola, mundo');

La función *disp()* nos permite mostrar una variable por pantalla, en este caso una cadena de texto. Tendremos que grabar el archivo en el disco con el nombre 'hello.m' y después, desde la consola, teclear *hello*. Si todo va bien, el programa se ejecutará, nos mostrará el mensaje 'Hola mundo' y finalizará, con lo que volveremos a tener el *prompt* de la consola a disposición para seguir tecleando instrucciones.

Desde el editor integrado en la versión gráfica de Octave podemos crear un nuevo fichero, escribir en él la instrucción y grabarlo con el nombre elegido.

.. note:: A mi me gusta utilizar alguna frase que incluya algún acento o alguna ñ para comprobar que funciona la codificación de caracteres. Podemos probar con una frase del tipo *Hola, ¿qué tal?*, que incluye el signo de apertura de interrogación y una e acentuada. A mí, con la versión 3.8 de Octave funcionando bajo linux me funciona perfectamente la codificación de caracteres.

Líneas de Comentarios
---------------------

Las líneas de comentarios son líneas que no serán ejecutadas por Octave al correr el programa. Sirven para documentar las rutinas.

Los comentarios pueden ser de una línea. Para ello se deben preceder del símbolo **'#'** o del símbolo **'%'**. El comentario será desde el símbolo *comentario* hasta el final de la línea. Puede ocupar toda la línea, si el símbolo *comentario* se pone al principio de la misma, o comentar una línea concreta, desde el símbolo *comentario* hasta el final de la línea. Veamos un ejemplo:

.. code-block:: octave

	  # Cuenta atrás para cohetes 
	  disp (3);
	  disp (2);
	  disp (1);
	  disp ("Blast Off!");  # El cohete abandona la plataforma

.. warning:: *MATLAB* solo admite el símbolo porcentaje '**%**' como indicador de comentarios, no admite el símbolo '**#**' 

Se pueden comentar bloques de código. Para ello hay que encerrar el bloque a comentar entre los símbolos *'#{'* y *'#}'*. Estos símbolos tienen que aparecer cómo únicos caracteres en su línea. *'#{'* aparecerá como línea previa al código a comentar, y *'#}'* como linea posterior. Una utilidad de lo anterior es 'desactivar' bloques de código durante el proceso de depuración de los programas, por ejemplo.

.. code-block:: octave

	  # Cuenta atrás para cohetes 
	  disp (3);
	  #{
	  disp (2);
	  disp (1);
	  #}
	  disp ("Blast Off!");  # El cohete abandona la plataforma

En esta versión del programa las líneas de *disp(2)* y *disp(1)* no se ejecutarán, y se pasará directamente del *disp(3)* al lanzamiento.

Comentar una línea de código es habitual durante la fase de creación y depuración de los programas. Ello nos permite deshabilitar ciertas partes del código para estudiar el funcionamiento del resto.

La instrucción **input**
------------------------

La instrucción **input()** nos permite solicitar al usuario algunos datos que se necesitan para los cálculos ulteriores. Por ejemplo, si queremos hacer un programa que devuelva el valor de elevar un número al cubo podríamos hacer lo siguiente:

.. code-block:: octave

	x = input('Teclée un número: ');
	y = x^3;
	disp(y)

La función *input()* recibe una cadena de texto a modo de mensaje que muestra por consola, situando el cursor a continuación a la espera de que el usuario teclée el valor solicitado. Una vez el usuario pulsa la tecla *intro*, el valor tecleado será asignado a la variable elegida, en el ejemplo anterior la variable *x*. El programa, entonces, se seguirá ejecutando en la línea siguiente a la de la sentencia *input* y podrá utilizar el valor de *x* en los cálculos posteriores. En el ejemplo, se crea una nueva variable *y* que almacena el valor de *x^3* y a continuación se muestra el valor de *y* por pantalla mediante la sentencia *disp()*.

.. note:: Cuando una instrucción se acaba con un punto y coma se omite la salida por pantalla de dicha instrucción. En el ejemplo, en la segunda instrucción, donde asignamos el valor *x^3* a la variable *y*, de no poner el punto y coma, se mostraría por pantalla el valor asignado a *y*. Se puede comprobar repitiendo la ejecución del programa con el punto y coma suprimido





.. Note:: En Matlab no se pueden meter subfunciones dentro de los scripts, solo funciones anónimas, por ejemplo: f=@(x) x.^2; x=[1 2 3]; x2=f(x);


