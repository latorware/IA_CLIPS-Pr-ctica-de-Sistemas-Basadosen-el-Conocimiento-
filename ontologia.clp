;;; ---------------------------------------------------------
;;; ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia.owl
;;; :Date 07/12/2021 19:13:34

; Definició de la classe Habitatge i totes les seves característiques

(defclass Habitatge
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot AC
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write))
    (slot calefaccio
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write))
    (slot obraNova
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write))
    (slot parking
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write))
    (slot piscinaIndividual
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write))
    (slot piscinaComunitaria
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write))
    (slot terrassa
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write))
    (slot jardí
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write))
    (slot ascensor
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write))
    (slot xemeneia
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write))
    (slot vistes
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write))
    (slot amoblat
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write))
    (slot mascotesPermeses
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write))
    (slot dormitoris
        (type INTEGER)
        (create-accessor read-write))
    (slot preu
        (type INTEGER)
        (create-accessor read-write))
    (slot superficie
        (type INTEGER)
        (create-accessor read-write))
    (slot qualitatDelsAcabats
        (type SYMBOL)
        (allowed-values Baix Mitja Alt)
        (create-accessor read-write))
    ;(slot qualitatBarri                      AIXO VA A BARRI
    ;    (type SYMBOL)
    ;    (allowed-values Baix Mitja Alt)
    ;    (create-accessor read-write))
    (slot localitzacioX
        (type FLOAT)
        (create-accessor read-write))
    (slot localitzacioY
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Pis
    (is-a Habitatge)
    (role concrete)
    (pattern-match reactive)
    (slot planta
        (type INTEGER)
        (create-accessor read-write))
    (slot alturaPis
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Duplex
    (is-a Pis)
    (role concrete)
    (pattern-match reactive)
)

(defclass Atic
    (is-a Pis)
    (role concrete)
    (pattern-match reactive)
)

(defclass Apartament
    (is-a Pis)
    (role concrete)
    (pattern-match reactive)
)

(defclass Unifamiliar
    (is-a Habitatge)
    (role concrete)
    (pattern-match reactive)
    (slot numPisos
        (type INTEGER)
        (create-accessor read-write))
)

(defclass CasaIndividual
    (is-a Unifamiliar)
    (role concrete)
    (pattern-match reactive)
)

(defclass CasaAdosada
    (is-a Unifamiliar)
    (role concrete)
    (pattern-match reactive)
)

(defclass Xalet
    (is-a Unifamiliar)
    (role concrete)
    (pattern-match reactive)
)
;----------------------------------------------------------------
;Definició dels Serveis
;----------------------------------------------------------------

(defclass Servei
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot localitzacioX
        (type FLOAT)
        (create-accessor read-write))
    (slot localitzacioY
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Supermercat
    (is-a Servei)
    (role concrete)
    (pattern-match reactive)
    (slot grandaria
        (type SYMBOL)
        (allowed-values Petit Gran)
        (create-accessor read-write))
)

(defclass Mercat
    (is-a Servei)
    (role concrete)
    (pattern-match reactive)
)

(defclass Parc
    (is-a Servei)
    (role concrete)
    (pattern-match reactive)
)

(defclass CentreEsportiu
    (is-a Servei)
    (role concrete)
    (pattern-match reactive)
)

(defclass Gimnas
    (is-a Servei)
    (role concrete)
    (pattern-match reactive)
)

(defclass TransportPublic
    (is-a Servei)
    (role concrete)
    (pattern-match reactive)
)

(defclass CentreSalut
    (is-a Servei)
    (role concrete)
    (pattern-match reactive)
)

(defclass Escola
    (is-a Servei)
    (role concrete)
    (pattern-match reactive)
)

(defclass Oci
    (is-a Servei)
    (role concrete)
    (pattern-match reactive)
)

(defclass Resteurant
    (is-a Oci)
    (role concrete)
    (pattern-match reactive)
)

(defclass Cinema
    (is-a Oci)
    (role concrete)
    (pattern-match reactive)
)

(defclass Teatre
    (is-a Oci)
    (role concrete)
    (pattern-match reactive)
)


(defclass Barri
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot nom                   ;Necesari ja que li preguntarem a la persona pels barris pel nom
		(type STRING)
		(create-accessor read-write))
    (slot borderLeftX
        (type INTEGER)
        (create-accessor read-write))
    (slot borderRightX
        (type INTEGER)
        (create-accessor read-write))
    (slot borderBottomY
        (type INTEGER)
        (create-accessor read-write))
    (slot borderUpY
        (type INTEGER)
        (create-accessor read-write))
    (slot qualitatBarri    
        (type SYMBOL)
        (allowed-values Baix Mitja Alt)
        (create-accessor read-write))
)

;----------------------------------------------------------------
;Definició de Persona
;----------------------------------------------------------------


;DE FET LA CLASE PERSONA NI ENS FA FALTA PODRIEM DIRECTAMENT CALCULAR LES COSES A LA VEGADA QUE FEM LES DEFFRULES
(defclass Persona
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot poderAdquisitiu
        (type SYMBOL)
        (allowed-values Baix Mitja Alt)
        (create-accessor read-write))
    ;(slot sou                         No es necesari ja que ja hi ha poderAdquisitiu. aixi que li preguntem a la persona pel sou exacte, pero a la instancia de persona ja u fem abstracte amb PoderAquisitiu
    ;    (type INTEGER)
    ;    (create-accessor read-write))
    (slot parella
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write))
    (slot edat
        (type INTEGER)
        (create-accessor read-write))
    (slot fills
        (type INTEGER)
		    (range 0 10)
        (create-accessor read-write))
    (multislot barrisPreferits
        (type INSTANCES)
        (allowed-values Barri)
        (create-accessor read-write))

    ;ja que fem classe persona, llavors segons el que preguntem tambe haurem dafegir mes o menys slots

    ;Per exemple si li preguntem si vol piscina o no, lllavors tambe hauriem de fer un slot prefereix_piscina type boolean

    ;El mateix amb si vol o no parking

    ;etcetera
)


(defclass Recomendacion
    (is-a USER)
	  (role concrete)
    (slot Habit
		    (type INSTANCE)
		    (create-accessor read-write))
    (slot puntuacion
        (type INTEGER)
        (create-accessor read-write))
    (multislot justificaciones
		(type STRING)
		(create-accessor read-write))
)


;Preguntes 

;- Quin sou tens? 

;- Tens parella?

;- Tens fills?

;- Quina edat tens?

;- Quins d'aquests barris de Barcelona t'agradaria viure (opcions)       opcions son els slots noms de tots els barris



(deffunction general-question "function to ask general questions" (?pregunta) ;suposo que aquesta ja serveix per el que retorna int
	(format t "%s" ?pregunta)
	(bind ?respuesta (read))
	?respuesta
)


(deffunction binary-question "function to ask questions with binary answers values" (?pregunta)
	(format t "%s" ?pregunta)
	(printout t " (si/no/s/n): ")
	(bind ?respuesta (read))
	(if (or (eq (str-compare (lowcase ?respuesta) si) 0) (eq (str-compare (lowcase ?respuesta) s) 0))
		then (return TRUE)
		else (return FALSE)
	)
)

;MODULS:



;MODUL MAIN


(defmodule MAIN (export ?ALL))

(defrule initial "initial rule"
	(initial-fact)
	=>
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "------------ SISTEMA DE RECOMENDACION DE HABITATGES ----------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "--------------------------------------------------------------" crlf)

	(printout t crlf)
	;Aqui I guess que hauriem de fer make instance de Persona. O potser si fem slot nom a Persona, llavors quan li preguntem pel nom fem el make
)



;MODUL QUESTIONS

    ;aqui farem una defrule per pregunta
    ;auriem danar especificant els atributs de la instancia de persona


    (defmodule ask_questions
	(import MAIN ?ALL)
	(export ?ALL)
)

(defrule sou "regla per saber el sou que te la persona que sesta analitzant"
    ;...
)

;...



;RECOMENDATION MODUL

(defmodule recommendation
	(import MAIN ?ALL)
	(import ask_questions ?ALL)
	(export ?ALL)
)

        ;defruls per filtrar habitatges i altres merdes de defrules


;PRINTING MODUL

(defmodule printing
	(import MAIN ?ALL)
	(import ask_questions ?ALL)
	(import recommendation ?ALL)
	(export ?ALL)
)


(defrule printLARECOMANACIO


	(printout t "--------------------------------------------------------------" crlf)
	(printout t "-------------------- RESULTATS RECOMANACIO -------------------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t crlf)


    ;...................

	(printout t crlf "FIN" crlf crlf)
	(exit)
)







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defmodule recopilacion-grupo
	(import MAIN ?ALL)
	(export ?ALL)
)


(defrule are-lights-working
        (not (lights-working ?))
=>
        (printout t "Are the car's lights working (yes or no)?")
        (assert (lights-working (read))))




