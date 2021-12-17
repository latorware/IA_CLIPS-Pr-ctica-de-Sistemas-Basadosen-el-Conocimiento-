;;; ---------------------------------------------------------
;;; ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia.owl
;;; :Date 07/12/2021 19:13:34

; Definició de la classe Habitatge i totes les seves característiques

(defclass HabitatgeABSTRACTE
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot nomCarrer
        (type STRING)
        (create-accessor read-write)
    )
    (slot esFamiliar
        (type SYMBOL)
        (allowed-values noFills unFillMax, dosFillsMax, tresFillsMax, MoltsFills)
        (create-accessor read-write)
    )
    (slot cost
        (type SYMBOL)
        (allowed-values baix normal alt moltAlt)
        (create-accessor read-write)
    )
    (slot grandaria
        (type SYMBOL)
        (allowed-values moltPetit petit normal gran)
        (create-accessor read-write)
    )
    (slot compatiblePersonesMajors   ;;dependra de ascensor, de si barriABSTRACTE es per a personesgrans
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot nomBarri
        (type STRING)
        (create-accessor read-write)
    )
    (slot AC
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot calefaccio
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot obraNova
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot parking
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot piscinaIndividual
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot piscinaComunitaria
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot terrassa
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot jardi
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot xemeneia
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot vistes
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot amoblat
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot mascotesPermeses
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot qualitatDelsAcabats
        (type SYMBOL)
        (allowed-values Baix Mitja Alt)
        (create-accessor read-write)
    )
    (slot tipus
        (type SYMBOL)
        (allowed-values Pis Duplex Atic Apartament Unifamiliar CasaIndividual CasaAdosada Xalet)
        (create-accessor read-write)
    )
    (slot altura
        (type SYMBOL)
        (allowed-values PlantaBaixa baixa alta)
        (create-accessor read-write)
    )
)


(defclass HabitatgeCONCRET
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot nomCarrer
        (type STRING)
        (create-accessor read-write)
    )
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
    (slot jardi
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
    (slot nomBarri
        (type STRING)
        (create-accessor read-write)
    )
)

(defclass Pis
    (is-a HabitatgeCONCRET)
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
    (is-a HabitatgeCONCRET)
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
    (slot nomBarri
        (type STRING)
        (create-accessor read-write)
    )
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



(defclass BarriABSTRACTE
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot compatiblePersonesMajors
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot compatiblePersonesEstudiants
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot compatibleNens
        (type SYMBOL)
        (allowed-values FALSE TRUE)
        (create-accessor read-write)
    )
    (slot riquesaBarri
        (type SYMBOL)
        (allowed-values pobre mitjana rica)
        (create-accessor read-write)
    )
    (slot nom
        (type STRING)
        (create-accessor read-write)
    )
)




(defclass BarriCONCRET
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot nom                   ;Necesari ja que li preguntarem a la persona pels barris pel nom
		(type STRING)
		(create-accessor read-write))
    (slot souMitja
        (type INTEGER)
        (create-accessor read-write))
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
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 2)
    (preu 2000)
    (superficie 70)
    (qualitatDelsAcabats Baix)
    (nomBarri SA)
    (planta 10)
    (alturaPis 2)
)
)


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
  (slot te_cotxe
       (type SYMBOL)
       (allowed-values FALSE TRUE))
    (slot te_mascota
        (type SYMBOL)
        (allowed-values FALSE TRUE)
    )
    (slot tipusVivenda
        (type SYMBOL)
        (allowed-values casa pis)
    )
    (slot mobilitatReduida
        (type SYMBOL)
        (allowed-values FALSE TRUE)
    )
     (multislot serveis_preferits
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


(deffunction converteixEsFamiliar (?dormitoris ?grandaria)
    (switch ?dormitoris
        (case 1 then noFills)
        (case 2 then (if (> ?grandaria 60)
                        then dosFillsMax
                        else unFillMax))
        (case 3 then (if (> ?grandaria 100)
                        then tresFillsMax
                        else dosFillsMax))
        (default moltsFills)
    )
)


(deffunction converteixSouCost (?preu)
    (if (<= ?preu 700) then
        (bind ?var baix)
        else (if (< ?preu 1500) then
            (bind ?var normal)
            else (if (< ?preu 3500) then
                (bind ?var alt)
                else (bind ?var moltAlt)
            )
        )
    )
    ?var
)

(deffunction converteixSuperficieAGrandaria (?superficie)
    (if (<= ?superficie 40) then
        (bind ?var moltPetit)
        else (if (< ?superficie 70) then
            (bind ?var petit)
            else (if (< ?superficie 100) then
                (bind ?var normal)
                else (bind ?var gran)
            )

        )
    )
    ?var
)

(deffunction converteixSubclasseATipusHabitatge (?tipus)
    ?tipus
)

(deffunction converteixAlturaplanta (?altura)
    (if (<= ?altura 0) then
        (bind ?var PlantaBaixa)
        else (if (< ?altura 4) then
            (bind ?var baixa)
            else (bind ?var alta)
        )
    )
    ?var
)

(defrule creaHabitatgesAbstractes
    (declare (salience 19))
     =>
    (bind ?instances (find-all-instances ((?i HabitatgeCONCRET)) TRUE))
    (progn$ (?i ?instances)
        (bind ?atributEsFamiliar (converteixEsFamiliar (send ?i get-dormitoris) (send ?i get-superficie) ))
        (bind ?atributCost (converteixSouCost (send ?i get-preu)))
        (bind ?atributGrandaria (converteixSuperficieAGrandaria (send ?i get-superficie))
        (bind ?atributHabitatge (converteixSubclasseATipusHabitatge (type ?i)))
        (if (= (str-compare (type ?i) Pis) 0)
            then (bind ?atributPlanta (converteixAlturaplanta (send ?i get-planta)) )
            else (bind ?atributPlanta -1)
        )


        (make-instance (send ?i get-nomCarrer) of HabitatgeABSTRACTE
        (esFamiliar ?atributEsFamiliar)
        (cost ?atributCost)
        (grandaria ?atributGrandaria)
        (tipus ?atributHabitatge)
        (altura ?atributPlanta)
        (nomCarrer (send ?i get-nomCarrer))
        (compatiblePersonesMajors TRUE)
        ;;Canviar compatiblePersonesMajors
        (nomBarri (send ?i get-nomBarri))
        (AC (send ?i get-AC))
        (calefacio (send ?i get-calefacio))
        (obraNova (send ?i get-obraNova))
        (parking (send ?i get-parking))
        (piscinaIndividual (send ?i get-piscinaIndividual))
        (piscinaComunitaria (send ?i get-piscinaComunitaria))
        (terrassa (send ?i get-terrassa))
        (jardi (send ?i get-jardi))
        (xemenia (send ?i get-xemeneia))
        (mascotesPermeses (send ?i get-mascotesPermeses))
        (qualitatDelsAcabats ?i get-qualitatDelsAcabats))
        )
    )

)




































;
