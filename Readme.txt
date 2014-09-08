Members:
  -Gastaldi, Diego
  -Coria, Gaston

Compilacion y ejecucion de codigos:
  - export CLASSPATH=.:/usr/share/java/JFlex.jar:/usr/share/java/cup.jar -- Setea las variables de entorno
  - jflex Lexer.flex -- Compila analizador lexico y genera Lexer.java
  - cup analyzer.cup -- Compila analizador sintactco y genera sym.java y parser.java
  - javac -d . sym.java parser.java Yylex.java -- Compilar classes java generadas
  - Correr archivos en la carpeta compiladores2014 escribir: 
      -	java compiler2014.Yylex AllTest/LexerTest1.txt parados en la carpeta principal de git. -- Testear Analizador lexico
      - sh AllTest/SyntacticTest/runTests.sh compiler2014/parser  parados en la carpeta principal de git -- Testear Analizador sintactco

