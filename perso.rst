Personalización del arranque de Octave
======================================

Octave busca, y ejecuta si existen, varios ficheros antes del arranque. Estos ficheros pueden contener cualquier comando válido de *Octave*, incluidas deefiniciones de funciones. Siendo *octave-home* el directorio de instalación de *Octave*, y *user-directory* el directorio del usuario, los ficheros que Octave ejecutará en el arranque serán:

- *octave-home/share/octave/site/m/startup/octaverc* : Afecta a todos los usuarios del ordenador y todas las versiones instaladas de *Octave*

- *octave-home/share/octave/version/m/startup/octaverc*: Afecta a todos los usuarios de una determinada versión de *Octave*

- *user-directory/.octaverc : Afecta al *Octave* ejecutado por un determinado usuario.

- *.octaverc* : Al arrancar *Octave* desde un determinado directorio que contenga un fichero *.octaverc* se ejecutará dicho fichero, con lo que podemos personalizar el arranque de un determinado proyecto.

La función **dump_prefs()** se puede utilizar para ver las personalizaciones que se están utilizando en una determinada sesión.

