{ALGORITHME: JEU_DE_L_OIE
//BUT:
//PRINCIPE:
//Entrées:
//Sorties:

CONST
FIN<-66:ENTIER
VAR
joueur, de1, de2, save:ENTIER

DEBUT
//Bloc initialisation variables:
joueur <- 0
de1 <- 0
de2 <- 0
save <- 0

REPETER
	
	ECRIRE "Tirez votre premier dé:"
	ECRIRE "Tirez votre deuxième dé:"
	LIRE de1,de2

	TANT QUE((de1<1 ET de1>6) ET (de2<1 ET de2>6))
		ECRIRE "Relancer dé 1"
		ECRIRE "Relancer dé 2"
		LIRE de1,de2
	FIN TANTQUE

	SI ((de1+de2)+joueur)=58 ALORS
	joueur<-0
		SINON
			SI ((de1+de2)+joueur)>FIN ALORS
				save <- ((de1+de2)+joueur)-FIN
				joueur <- save+joueur
		SINON
			SI (de1+de2)+joueur=9 OU 18 OU 27 OU 36 OU 45 OU 54
				ALORS
				joueur <- (de1+de2)*2
		SINON
			joueur <- (de1+de2)+joueur
	0 <- de1
	0 <- de2

JUSQU'A joueur=FIN

ECRIRE "Vous avez gagner, félicitation"

FIN}

PROGRAM JEU_DE_L_OIE;

USES crt;

CONST
FIN=66;
VAR
joueur, de1, de2, save:INTEGER;
test : BOOLEAN;

BEGIN

clrscr;

//Initialisation des variables
joueur:=0;
de1:=0;
de2:=0;
save:=0;

REPEAT
	BEGIN
	writeln('Tirez votre premier de:');
	writeln('Tirez votre deuxieme de:');
	readln(de1,de2);

	while ((de1<1) OR (de1>6) OR (de2<1) OR (de2>6)) do
		begin
		writeln('Relancer de 1:');
		writeln('Relancer de 2:');
		readln(de1,de2);
		end;

		
		IF ((de1+de2)+joueur=58) THEN
			BEGIN
			joueur:=0;
			writeln('Retour a la case depart, pas de chance:');
			END
		ELSE
			IF (((de1+de2)+(joueur))>FIN) THEN
				BEGIN
				save:=((de1+de2)+joueur)-FIN;
				joueur:=save+joueur;
				writeln('Vous etes sur la case:',joueur);
				END
		ELSE
			IF ((de1+de2)+joueur=9) OR ((de1+de2)+joueur=18) OR ((de1+de2)+joueur=27) OR ((de1+de2)+joueur=36) OR ((de1+de2)+joueur=45) OR ((de1+de2)+joueur=54) THEN
				BEGIN
				joueur:=(de1+de2)*2;
				writeln('Vous etes sur la case:',joueur);
				END
		ELSE
			BEGIN
			joueur:=(de1+de2)+joueur;
			writeln('Vous etes sur la case:',joueur);
			END
	END
UNTIL (joueur=FIN);

writeln ('Felicitation vous avez gagne le jeu de l oie');

END.