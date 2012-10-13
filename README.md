ITH-TP2
=======

Introducción a las Tecnologías del Habla  
Trabajo Práctico 2: Síntesis Concatenativa

Departamento de Computación  
Facultad de Ciencias Exactas y Naturales  
Universidad de Buenos Aires

Alumno: Leandro Lovisolo  
Email: leandro@leandro.me  
LU: 645/11

## ITHSynth ##

A voice synthesizer for L, an educational artificial language.

This project was created as an assignment for a Speech Technologies class by the
Computer Science department at Universidad de Buenos Aires. More details here:
http://www.glyc.dc.uba.ar/agustin/ith-2012.

### Requirements ###

Ruby 1.9 (may work with older versions - not tested.)

### Installation ###

1. Get a copy of the source code.
2. Open a terminal and 'cd' into the project's root directory.
3. Execute 'gem install bundler' if the Bundler gem is not installed in your environment.
4. Execute 'bundle install'.

### Usage ###

./ithsynth \<output file> \<text>

Arguments:  
&nbsp;&nbsp;&nbsp;&nbsp;\<output file>     Wave file (.wav) where the generated audio will be stored.  
&nbsp;&nbsp;&nbsp;&nbsp;\<text>            Text to synthetize.

Language rules:

An expression in the L language is composed of the following syllables:  
&nbsp;&nbsp;&nbsp;&nbsp;ka la ma pa sa kA lA mA pA sA  
Any combination of the syllables above is a valid L expression.
The whitespace character can be used as a pause between words.

A few examples:

./ithsynth output.wav kAsa  
./ithsynth output.wav mamA papA  
./ithsynth output.wav sakA la kAka mamA
