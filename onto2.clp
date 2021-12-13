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
        (type SYMBOL)
        (allowed-values Jove MitjanaEdat Gran MoltGran)
        (create-accessor read-write))
    (slot fills
        (type INTEGER)
		    (range 0 10)
        (create-accessor read-write))
    (multislot barrisPreferits
        (type INSTANCE)
        (allowed-classes Barri)
        (create-accessor read-write))

    ;ja que fem classe persona, llavors segons el que preguntem tambe haurem dafegir mes o menys slots

    ;Per exemple si li preguntem si vol piscina o no, lllavors tambe hauriem de fer un slot prefereix_piscina type boolean

    ;El mateix amb si vol o no parking

    ;etcetera
)


(defclass Recomanacio
    (is-a USER)
	  (role concrete)
    (slot Habit
		    (type INSTANCE)
		    (create-accessor read-write))
    (slot puntuacio
        (type INTEGER)
        (create-accessor read-write))
    (multislot justificacions
		    (type STRING)
		    (create-accessor read-write))
)

(definstances habitatges
(Habitatge001 of Pis
    (AC TRUE)
    (superficie 45)
    (preu 450)
    (dormitoris 1)
)
(Habitatge002 of CasaIndividual
    (AC TRUE)
    (superficie 120)
    (numPisos 3)
    (preu 1450)
    (dormitoris 3)
)
(Habitatge003 of Pis
    (AC False)
    (superficie 60)
    (preu 550)
    (dormitoris 1)
)
(Habitatge004 of Duplex
    (AC True)
    (superficie 95)
    (preu 1000)
    (dormitoris 3)
)
(Habitatge005 of Pis
    (AC True)
    (superficie 80)
    (preu 900)
    (dormitoris 1)
)
(Habitatge006 of Atic
    (AC True)
    (superficie 70)
    (preu 1000)
    (dormitoris 1)
)
(Habitatge007 of Xalet
    (AC True)
    (superficie 140)
    (preu 1700)
    (dormitoris 3)
)
(Habitatge008 of Pis
    (AC False)
    (superficie 50)
    (preu 500)
    (dormitoris 1)
)
(Habitatge009 of Apartament
    (AC True)
    (superficie 70)
    (preu 900)
    (dormitoris 1)
)
(Habitatge010 of Pis
    (AC True)
    (superficie 80)
    (preu 800)
    (dormitoris 3)
)
(Habitatge011 of Pis
    (AC False)
    (superficie 65)
    (preu 650)
    (dormitoris 1)
)
(Habitatge012 of Atic
    (AC True)
    (superficie 90)
    (preu 1300)
    (dormitoris 3)
)
(Habitatge013 of CasaIndividual
    (AC True)
    (superficie 100)
    (preu 1200)
    (dormitoris 3)
)
(Habitatge014 of CasaAdosada
    (AC True)
    (superficie 90)
    (preu 1000)
    (dormitoris 3)
)
(Habitatge015 of Pis
    (AC True)
    (superficie 85)
    (preu 900)
    (dormitoris 3)
)
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
	(printout t " (si/no/s/n): " crlf)
	(bind ?respuesta (read))
	(if (or (eq (str-compare (lowcase ?respuesta) si) 0) (eq (str-compare (lowcase ?respuesta) s) 0))
		then (return TRUE)
		else (return FALSE)
	)
)

;MODULS:

(deftemplate dadesPersona
  (slot poder_adquisitiu
      (type SYMBOL)
      (allowed-values Baix Mitja Alt))
  (slot parella
      (type SYMBOL)
      (allowed-values FALSE TRUE))
  (slot edat
      (type SYMBOL)
      (allowed-values jove mitjana_edat gran molt_gran))
  (slot fills
      (type SYMBOL)
      (allowed-values sense_fills fill_unic dos_fills familia_nombrosa))
  (multislot zones_preferides
      (type SYMBOL))
)


;MODUL MAIN




(defrule initial "initial rule"
	(declare (salience 20))
	=>
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "------------ SISTEMA DE RECOMENDACION DE HABITATGES ----------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
  (assert (dadesPersona))
	(printout t crlf)
	;Aqui I guess que hauriem de fer make instance de Persona. O potser si fem slot nom a Persona, llavors quan li preguntem pel nom fem el make
)


;MODUL QUESTIONS

    ;aqui farem una defrule per pregunta
    ;auriem danar especificant els atributs de la instancia de persona
;(defrule edat "Estableix l'edat d'una persona"
;    (not (edat ?))
;    =>
;    (bind ?edat (pregunta-numerica "Quina és la seva edat? " 1 110))
;)


;(defrule sou "regla per saber el sou que te la persona que sesta analitzant"

;)

;...



;RECOMENDATION MODUL



(defrule printLARECOMANACIO
  (declare (salience 1))
  =>
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "-------------------- RESULTATS RECOMANACIO -------------------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t crlf)

)

(deffunction superficie-sort (?i1 ?i2)
   (< (send ?i1 get-superficie) (send ?i2 get-superficie)))

(defrule list "Imprimeix llista d'habitatges"
    (children ?children)
    (test (> ?children 1))
    =>
    (bind ?instances (find-all-instances ((?i Habitatge)) (> (send ?i get-dormitoris) 2)))
    (bind ?instances (sort superficie-sort ?instances))
    (progn$ (?i ?instances)
        (printout t (send ?i get-superficie) " " (send ?i get-preu) crlf)))






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule list2 "Imprimeix llista d'habitatges"
    (children ?children)
    (test (< ?children 3))
    =>
    (bind ?instances (find-all-instances ((?i Habitatge)) TRUE))
    (bind ?instances (sort superficie-sort ?instances))
    (progn$ (?i ?instances)
        (printout t (send ?i get-superficie) " " (send ?i get-preu) crlf)))



(defrule getEdat
  (declare (salience 5))
=>
        (printout t "Quina es la seva edat?" crlf)
        (bind ?edat (read))
        (if (< ?edat 30) then
          (bind ?var jove)
          else (if (< ?edat 50) then
            (bind ?var mitjana_edat)
            else (if (< ?edat 80) then
              (bind ?var gran)
              else (bind ?var molt_gran)
            )
          )
        )
        (assert (edat ?var)))

(defrule getRelacions
    (declare (salience 4))
    =>
    (if (binary-question "Tens parella?")
        then(assert (relacio te_parella))
        else (assert (relacio solter)))
    )

(defrule getFills
    (declare (salience 3))
    =>
    (printout t "Quant fills tens?" crlf)
    (bind ?fills (read))
    (switch ?fills
        (case 0 then (assert (fills sense_fills)))
        (case 1 then (assert (fills fill_unic)))
        (case 2 then (assert (fills dos_fills)))
        (default (assert (fills familia_nombrosa)))
    )
)

(defrule getBarris
    (declare (salience 2))
    ?dades <- (dadesPersona (zones_preferides $?z))
    =>
    (printout t "Quines zones de Barcelona t'agraden més?" crlf)
    (printout t "Escriu els números separats per espais 0 1 2 3, no importa l'ordre" crlf)
    (printout t "1. Ciutat Vella" crlf)
    (printout t "2. Eixample" crlf)
    (printout t "3. Sants-Montjuic" crlf)
    (printout t "4. Les Corts" crlf)
    (printout t "5. Sarrià - Sant Gervàsi" crlf)
    (printout t "6. Gràcia" crlf)
    (printout t "7. Horta - Guinardó" crlf)
    (printout t "8. Nous Barris" crlf)
    (printout t "9. Sant Andreu" crlf)
    (printout t "10. Sant Martí" crlf)

    (bind ?zones (readline))
    (bind ?zones (explode$ ?zones))
    (progn$ (?zona ?zones)
        (switch ?zona
            (case 1 then (modify ?dades (zones_preferides ?z CV)))
            (case 2 then (modify ?dades (zones_preferides ?z E)))
            (case 3 then (modify ?dades (zones_preferides ?z SAM)))
            (case 4 then (modify ?dades (zones_preferides ?z LC)))
            (case 5 then (modify ?dades (zones_preferides ?z SSG)))
            (case 6 then (modify ?dades (zones_preferides ?z G)))
            (case 7 then (modify ?dades (zones_preferides ?z HG)))
            (case 8 then (modify ?dades (zones_preferides ?z NB)))
            (case 9 then (modify ?dades (zones_preferides ?z SA)))
            (case 10 then (modify ?dades (zones_preferides ?z SM)))
        )
    )
)







































;
