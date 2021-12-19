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
        (allowed-values noFills unFillMax dosFillsMax tresFillsMax MoltsFills)
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
    (slot planta
        (type INTEGER)
        (create-accessor read-write))
    (slot alturaPis
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Pis
    (is-a HabitatgeCONCRET)
    (role concrete)
    (pattern-match reactive)
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

(defclass Residencia
    (is-a Servei)
    (role concrete)
    (pattern-match reactive)
)

(defclass Escola
    (is-a Servei)
    (role concrete)
    (pattern-match reactive)
)

(defclass Universistat
    (is-a Servei)
    (role concrete)
    (pattern-match reactive)
)

(defclass Oci
    (is-a Servei)
    (role concrete)
    (pattern-match reactive)
)

(defclass Restaurant
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




;;AQUI HARUIEN D'ANAR LES INSTANCIES
;;---------INSTANCIES----------------

;;-----------------------------------


;;MODULS

(defmodule MAIN (export ?ALL))

(defmodule abstraccioProblema)

(defmodule preguntesUsuari
    (import MAIN ?ALL)
    (export ?ALL)
)

(defmodule solucioConcreta)

(defmodule impressioSolucio)





;TEMPLATES

(deftemplate MAIN::dadesPersona
    (slot poder_adquisitiu
      (type SYMBOL)
      (allowed-values baix normal alt molt_alt))
    (slot parella
      (type SYMBOL)
      (allowed-values FALSE TRUE))
    (slot edat
      (type SYMBOL)
      (allowed-values jove mitjana_edat gran molt_gran))
    (slot fills
      (type SYMBOL)
      (allowed-values noFills unFillMax dosFillsMax tresFillsMax MoltsFills))
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
    (slot amoblada
        (type SYMBOL)
        (allowed-values FALSE TRUE)
    )
    (slot terrassa
        (type SYMBOL)
        (allowed-values FALSE TRUE)
    )
    (multislot serveis_preferits
        (type SYMBOL)
    )
    (slot zona_on_treballa
        (type SYMBOL)
    )
)

(deftemplate Recomanacio
    (slot Habitatge
        (type INSTANCE))
    (slot puntuacio
        (type INTEGER))
    (multislot justificacions
		(type STRING))
)


;MODUL MAIN




(defrule initial "initial rule"
	(declare (salience 20))
	=>
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "--------------- SISTEMA RECOMANADOR D'HABITATGES -------------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
    (assert (dadesPersona)) ; Creem la llista ordenadea de fets que cotindra les dades de l'usuari
	(printout t crlf)
)


;MODUL QUESTIONS

    ;aqui farem una defrule per pregunta
    ;auriem danar especificant els atributs de la instancia de persona
;(defrule edat "Estableix l'edat d'una persona"
;    (not (edat ?))
;    =>
;    (bind ?edat (pregunta-numerica "Quina és la seva edat? " 1 110))
;)

(deffunction binary-question "function to ask questions with binary answers values" (?pregunta)
	(format t "%s" ?pregunta)
	(printout t " (si/no/s/n): " crlf)
	(bind ?respuesta (read))
	(if (or (eq (str-compare (lowcase ?respuesta) si) 0) (eq (str-compare (lowcase ?respuesta) s) 0))
		then (return TRUE)
		else (return FALSE)
	)
)

(defrule getSou
    (declare (salience 17))
    =>
    (printout t "Quin és el teu/vostre salari mensual?" crlf)
    (bind ?salari (read))
    (if (<= ?salari 1500) then
        (bind ?var baix)
        else (if (< ?salari 3200)
            then (bind ?var mitja)
            else if (< ?salari 5500)
                then (bind ?var alt)
                else (bind ?var molt_alt)
        )
    )
    (modify 1(poder_adquisitiu ?var))
)

(defrule getEdat
    (declare (salience 16))
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
    (modify 1(edat ?var))
)

(defrule getRelacions
    (declare (salience 15))
    =>
    (if (binary-question "Tens parella?")
        then (modify 1(parella TRUE))
        else (modify 1(parella FALSE)))
)

(defrule getFills
    (declare (salience 14))
    =>
    (printout t "Quant fills tens?" crlf)
    (bind ?fills (read))
    (switch ?fills
        (case 0 then (modify 1(fills noFills)))
        (case 1 then (modify 1(fills unFillMax)))
        (case 2 then (modify 1(fills dosFillsMax)))
        (case 3 then (modify 1(fills tresFillsMax)))
        (default (modify 1(fills MoltsFills)))
    )
)

(defrule get_barris
    (declare (salience 13))
    =>
    (printout t "Quines zones de Barcelona t'agraden més?" crlf)
    (printout t "Escriu els números separats per espais 1 2 3, no importa l'ordre, o 0 si no tens cap preferencia" crlf)
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
    (bind $?dades (create$))
    (progn$ (?zona ?zones)
        (switch ?zona
            (case 1 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) CV)))
            (case 2 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) E)))
            (case 3 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) SAM)))
            (case 4 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) LC)))
            (case 5 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) SSG)))
            (case 6 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) G)))
            (case 7 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) HG)))
            (case 8 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) NB)))
            (case 9 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) SA)))
            (case 10 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) SM)))
        )
        (modify 1(zones_preferides ?dades))
    )
)

(defrule get_cotxe
    (declare (salience 12))
    =>
    (if (binary-question "Tens cotxe?")
        then (modify 1(te_cotxe TRUE))
        else (modify 1(te_cotxe FALSE)))
)

(defrule get_mascotes
    (declare (salience 11))
    =>
    (if (binary-question "Tens mascotes?")
        then (modify 1(te_mascota TRUE))
        else (modify 1(te_mascota FALSE)))
)

(defrule getAmoblat
    (declare (salience 10))
    =>
    (if (binary-question "Prefereixes una vivenda que ja estiugui amoblada?")
        then (modify 1(amoblada TRUE))
        else (modify 1(amoblada FALSE)))
)

(defrule getTerrassa
    (declare (salience 9))
    =>
    (if (binary-question "Prefereixes una vivenda amb terrassa?")
        then (modify 1(terrassa TRUE))
        else (modify 1(terrassa FALSE)))
)



(defrule getTipusVivenda
   (declare (salience 8))
    =>
    (printout t "Què prefereixes una casa o un pis?" crlf)
    (printout t "Escriu 1 si prefereixes una casa, 2 si prefereixes un pis" crlf)
    (printout t "1. Casa" crlf)
    (printout t "2. Pis" crlf)
    (bind ?tipus (readline))
    (switch ?tipus
            (case 1 then (modify 1(tipusVivenda casa)))
            (case 2 then (modify 1(tipusVivenda pis)))
    )
)

(defrule getMobilitatReduida
    (declare (salience 7))
    =>
    (if (binary-question "Tens o hi ha algun acompanyant que tingui mobilitat reduida?")
        then (modify 1(mobilitatReduida TRUE))
        else (modify 1(mobilitatReduida FALSE))
    )
)

(defrule getServeisPreferits   ;;NO ESTAN TOTES ELS SERVEIS SAN AFEGIT
    (declare (salience 6))
    =>
    (printout t "Quins tipus serveis voldries tenir més a prop?" crlf)
    (printout t "Escriu els números separats per espais 1 2 3, no importa l'ordre, o 0 si no tens cap preferencia" crlf)
    (printout t "1. Supermercat" crlf)
    (printout t "2. Mercat" crlf)
    (printout t "3. Parc" crlf)
    (printout t "4. CentreEsportiu" crlf)
    (printout t "5. Gimnas" crlf)
    (printout t "6. TransporPublic" crlf)
    (printout t "7. CentreSalut" crlf)
    (printout t "8. Escola" crlf)
    (printout t "9. Oci" crlf)

    (bind ?serveis (readline))
    (bind ?serveis (explode$ ?serveis))
    (bind $?dades (create$))
    (progn$ (?serv ?serveis)
        (switch ?serv
            (case 1 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) Supermercat)))
            (case 2 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) Mercat)))
            (case 3 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) Parc)))
            (case 4 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) CentreEsportiu)))
            (case 5 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) Gimnas)))
            (case 6 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) TransporPublic)))
            (case 7 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) CentreSalut)))
            (case 8 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) Escola)))
            (case 9 then (bind ?dades (insert$ ?dades (+ (length$ ?dades) 1) Oci)))
        )
        (modify 1(serveis_preferits ?dades))
    )
)

(defrule getZonaOnTreballa
    (declare (salience 5))
    =>
    (printout t "A quina zona treballes?" crlf)
    (bind ?zona (read))
    (modify 1(zona_on_treballa ?zona))
)


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
                else (bind ?var molt_alt)
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
    (declare (salience 18))
     =>
    (bind ?instances (find-all-instances ((?i HabitatgeCONCRET)) TRUE))
    (progn$ (?i ?instances)
        (bind ?atributEsFamiliar (converteixEsFamiliar (send ?i get-dormitoris) (send ?i get-superficie) ))
        (bind ?atributCost (converteixSouCost (send ?i get-preu)))
        (bind ?atributGrandaria (converteixSuperficieAGrandaria (send ?i get-superficie)))
        (bind ?atributHabitatge (converteixSubclasseATipusHabitatge (type ?i)))
        (if (= (str-compare (type ?i) Pis) 0)
            then (bind ?atributPlanta (converteixAlturaplanta (send ?i get-planta)) )
            else (bind ?atributPlanta diversesPlantes)
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
        (calefaccio (send ?i get-calefaccio))
        (obraNova (send ?i get-obraNova))
        (parking (send ?i get-parking))
        (piscinaIndividual (send ?i get-piscinaIndividual))
        (piscinaComunitaria (send ?i get-piscinaComunitaria))
        (terrassa (send ?i get-terrassa))
        (jardi (send ?i get-jardi))
        (xemeneia (send ?i get-xemeneia))
        (mascotesPermeses (send ?i get-mascotesPermeses))
        (qualitatDelsAcabats (send ?i get-qualitatDelsAcabats))
        )
    )
)


(deffunction esCompatiblePersonesMajors (?nomDelBarri) ;;ha de tenir transport public, centre de salut, residencia
    (bind ?instances (find-all-instances ((?i Servei)) (= (str-compare (send ?i get-nomBarri) ?nomDelBarri) 0) ))
    (bind ?countTransportPublic 0)
    (bind ?countCentreSalut 0)
    (bind ?countResidencia 0)
    (bind ?result FALSE)
    (progn$ (?i ?instances)
        (if (= (str-compare (type ?i) TransportPublic) 0)
            then (bind ?countTransportPublic (+ ?countTransportPublic 1) )
            else (if (= (str-compare (type ?i) CentreSalut) 0)
                then (bind ?countCentreSalut (+ ?countCentreSalut 1) )
                else (if (= (str-compare (type ?i) Residencia) 0)
                    then (bind ?countResidencia (+ ?countResidencia 1) )
                )
            )
        )

    )
    (if (>= ?countTransportPublic 1)
        then (if (>= ?countCentreSalut 1)
            then (if (>= ?countResidencia 1)
                then (bind ?result TRUE)
            )
        )
    )

    ?result

)

(deffunction esCompatiblePersonesEstudiants (?nomDelBarri) ;;universitat
    (bind ?instances (find-all-instances ((?i Servei)) (= (str-compare (send ?i get-nomBarri) ?nomDelBarri) 0) ))
    (bind ?countUniversistat 0)
    (bind ?result FALSE)
    (progn$ (?i ?instances)
        (if (= (str-compare (type ?i) Universistat) 0)
            then (bind ?countUniversistat (+ ?countUniversistat 1) )
        )

    )

    (if (>= ?countUniversistat 1)
        then (bind ?result TRUE)
        else (bind ?result FALSE)

    )

    ?result


)

(deffunction esCompatibleNens (?nomDelBarri) ;;parc tambe escola
    (bind ?instances (find-all-instances ((?i Servei)) (= (str-compare (send ?i get-nomBarri) ?nomDelBarri) 0) ))
    (bind ?countParc 0)
    (bind ?countEscola 0)
    (bind ?result FALSE)
    (progn$ (?i ?instances)
        (if (= (str-compare (type ?i) Parc) 0)
            then (bind ?countParc (+ ?countParc 1) )
            else (if (= (str-compare (type ?i) Escola) 0)
                then (bind ?countEscola (+ ?countEscola 1) )
            )
        )

    )
    (if (>= ?countEscola 1)
        then (if (>= ?countParc 1)
            then (bind ?result TRUE)
        )
    )

    ?result


)

(deffunction converteixSouARiquesaBarri (?sou)
        (if (<= ?sou 1700) then
        (bind ?var pobre)
        else (if (< ?sou 2500) then
            (bind ?var mitjana)
            else (bind ?var rica)
        )
    )
    ?var
)



(defrule creaBarrisAbstractes
    (declare (salience 19))
    =>
    (bind ?instances (find-all-instances ((?i BarriCONCRET)) TRUE))
    (progn$ (?i ?instances)
        (bind ?atributEsCompatiblePersonesMajors (esCompatiblePersonesMajors (send ?i get-nom)  ))
        (bind ?atributEsCompatiblePersonesEstudiants (esCompatiblePersonesEstudiants (send ?i get-nom)  ))
        (bind ?atributEsCompatibleNens (esCompatibleNens (send ?i get-nom)  ))
        (bind ?atributRiquesa (converteixSouARiquesaBarri (send ?i get-souMitja)  ))

        (make-instance (send ?i get-nom) of BarriABSTRACTE
        (compatiblePersonesMajors ?atributEsCompatiblePersonesMajors)
        (compatiblePersonesEstudiants ?atributEsCompatiblePersonesEstudiants)
        (compatibleNens ?atributEsCompatibleNens)
        (riquesaBarri ?atributRiquesa)
        (nom (send ?i get-nom))
        )

    )
)

(deffunction consultaCompatibilitatBarriNens (?barri)
    (bind ?instances (find-all-instances ((?i BarriABSTRACTE)) (and (= (str-compare (send ?i get-nom) ?barri) 0) (send ?i get-compatibleNens)) ))
    (if (= (length$ ?instances) 0)
        then FALSE
        else TRUE
    )
)

(deffunction consultaCompatibilitatBarriJoves (?barri)
    (bind ?instances (find-all-instances ((?i BarriABSTRACTE)) (and (= (str-compare (send ?i get-nom) ?barri) 0) (send ?i get-compatiblePersonesEstudiants)) ))
    (if (= (length$ ?instances) 0)
        then FALSE
        else TRUE
    )
    FALSE
)

(deffunction consultaCompatibilitatBarriGrans (?barri)
    (bind ?instances (find-all-instances ((?i BarriABSTRACTE)) (and (= (str-compare (send ?i get-nom) ?barri) 0) (send ?i get-compatiblePersonesMajors)) ))
    (if (= (length$ ?instances) 0)
        then FALSE
        else TRUE
    )
)

(deffunction barriAmbTransportPublic (?barri)
    (bind ?instances (find-all-instances ((?i TransportPublic)) (= (str-compare (send ?i get-nomBarri) ?barri) 0)))
    (if (= (length$ ?instances) 0)
        then FALSE
        else TRUE
    )
)

(defrule creaSolucioAbstracte ;;crea fets recomanacio
    (declare (salience 5))
    ?dades <- (dadesPersona (poder_adquisitiu ?poder_adquisitiu) (parella ?parella)
    (edat ?edat) (fills ?fills) (te_cotxe ?te_cotxe) (te_mascota ?te_mascota)
    (mobilitatReduida ?mobilitatReduida) (zona_on_treballa ?zona_on_treballa))
    =>
    ;; Aqui si tenim temps podem fer que si és menys preu també ens serveixi
    (bind ?instances (find-all-instances ((?i HabitatgeABSTRACTE)) TRUE))

    (bind $?ins (create$))
    (progn$ (?i ?instances)
        (if (= (str-compare (send ?i get-cost) ?poder_adquisitiu) 0)
            then (bind ?ins (insert$ ?ins (+ (length$ ?ins) 1) ?i))
        )
        (if (and (eq ?edat jove) (consultaCompatibilitatBarriJoves (send ?i get-nomBarri)))
            then (bind ?ins (insert$ ?ins (+ (length$ ?ins) 1) ?i))
        )
        (if (and (eq ?te_mascota TRUE) (eq (send ?i get-mascotesPermeses) TRUE))
            then (bind ?ins (insert$ ?ins (+ (length$ ?ins) 1) ?i))
        )
    )

    (progn$ (?i ?ins)
        (assert (Recomanacio (Habitatge ?i)))
    )


)



(defrule creaSolucioConcreta 
    (declare (salience -2))
    ?recomenacio <- (Recomanacio (Habitatge ?habitatge))
    ?dades <- (dadesPersona (poder_adquisitiu ?poder_adquisitiu)
    (fills ?fills) (te_cotxe ?te_cotxe) (te_mascota ?te_mascota)
    (mobilitatReduida ?mobilitatReduida) (zona_on_treballa ?zona_on_treballa))
    =>
    (bind $?justificacions (create$))
    (if (not (eq ?fills (send ?habitatge get-esFamiliar)))
        then (bind ?justificacions (insert$ ?justificacions (+ (length$ ?justificacions) 1) t "L'habitatge té més habitacions"))
    )

    (modify ?recomenacio (justificacions ?justificacions))
)






;;; ---------------------------------------------------------
;;; ---------------------------------------------------------
;;; INSTANCIES
;;; ---------------------------------------------------------
;;; ---------------------------------------------------------


;;; DE HABITATGE


(definstances habitatges
(Habitatge1 of Apartament
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 1)
    (preu 17634)
    (superficie 147)
    (qualitatDelsAcabats Alt)
    (nomBarri NB)
    (planta 12)
    (alturaPis 5)
    (nomCarrer ParquedeNegociosMasBlauII,Carrerdel'AltaRibagorca18)
)
(Habitatge2 of Pis
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 6)
    (preu 17921)
    (superficie 200)
    (qualitatDelsAcabats Mitja)
    (nomBarri SAM)
    (planta 14)
    (alturaPis 3)
    (nomCarrer Carrerdel'Esglesia,9)
)
(Habitatge3 of Atic
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 2)
    (preu 798)
    (superficie 268)
    (qualitatDelsAcabats Mitja)
    (nomBarri SSG)
    (planta 7)
    (alturaPis 4)
    (nomCarrer CallePedroIPons,1)
)
(Habitatge4 of CasaAdosada
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 10)
    (preu 8063)
    (superficie 259)
    (qualitatDelsAcabats Alt)
    (nomBarri LC)
    (planta 6)
    (alturaPis 4)
    (nomCarrer CarrerdelaCreu,16)
)
(Habitatge5 of Atic
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 5)
    (preu 10729)
    (superficie 213)
    (qualitatDelsAcabats Baix)
    (nomBarri G)
    (planta 11)
    (alturaPis 4)
    (nomCarrer AvingudadelMar,2)
)
(Habitatge6 of CasaAdosada
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 9)
    (preu 3510)
    (superficie 248)
    (qualitatDelsAcabats Mitja)
    (nomBarri SSG)
    (planta 10)
    (alturaPis 4)
    (nomCarrer CarrerdeFrancescBellapart,1)
)
(Habitatge7 of CasaAdosada
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 7)
    (preu 14631)
    (superficie 318)
    (qualitatDelsAcabats Mitja)
    (nomBarri SM)
    (planta 12)
    (alturaPis 3)
    (nomCarrer Avda.Torreblanca)
)
(Habitatge8 of CasaAdosada
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 2)
    (preu 9566)
    (superficie 119)
    (qualitatDelsAcabats Mitja)
    (nomBarri SA)
    (planta 6)
    (alturaPis 3)
    (nomCarrer Pl.VirgenBlanca42)
)
(Habitatge9 of Atic
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 2)
    (preu 10605)
    (superficie 234)
    (qualitatDelsAcabats Mitja)
    (nomBarri SA)
    (planta 7)
    (alturaPis 2)
    (nomCarrer C/BenitoGuinea)
)
(Habitatge10 of Pis
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 6)
    (preu 11817)
    (superficie 833)
    (qualitatDelsAcabats Alt)
    (nomBarri SA)
    (planta 16)
    (alturaPis 3)
    (nomCarrer CarrerdeJosepTorres,4)
)
(Habitatge11 of Xalet
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 4)
    (preu 1856)
    (superficie 240)
    (qualitatDelsAcabats Alt)
    (nomBarri E)
    (planta 3)
    (alturaPis 3)
    (nomCarrer Carrerd'Escipió)
)
(Habitatge12 of Pis
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 6)
    (preu 5626)
    (superficie 695)
    (qualitatDelsAcabats Mitja)
    (nomBarri SAM)
    (planta 9)
    (alturaPis 2)
    (nomCarrer CarrerdelaCosta,08023)
)
(Habitatge13 of Apartament
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 5)
    (preu 14450)
    (superficie 602)
    (qualitatDelsAcabats Mitja)
    (nomBarri NB)
    (planta 20)
    (alturaPis 5)
    (nomCarrer CarrerdeRomanMacaya,23)
)
(Habitatge14 of Unifamiliar
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 1)
    (preu 2803)
    (superficie 450)
    (qualitatDelsAcabats Baix)
    (nomBarri SSG)
    (planta 2)
    (alturaPis 3)
    (nomCarrer CarrerdeCasanova)
)
(Habitatge15 of Xalet
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 5)
    (preu 16582)
    (superficie 679)
    (qualitatDelsAcabats Alt)
    (nomBarri CV)
    (planta 14)
    (alturaPis 4)
    (nomCarrer CarrerdeBalmes)
)
(Habitatge16 of Pis
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 2)
    (preu 4590)
    (superficie 48)
    (qualitatDelsAcabats Alt)
    (nomBarri HG)
    (planta 2)
    (alturaPis 4)
    (nomCarrer CarrerdelaRieradeSantMiquel)
)
(Habitatge17 of Pis
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 1)
    (preu 19650)
    (superficie 122)
    (qualitatDelsAcabats Mitja)
    (nomBarri SA)
    (planta 10)
    (alturaPis 5)
    (nomCarrer CarrerGrandeGràcia,129)
)
(Habitatge18 of Xalet
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 9)
    (preu 13576)
    (superficie 357)
    (qualitatDelsAcabats Baix)
    (nomBarri NB)
    (planta 15)
    (alturaPis 3)
    (nomCarrer CarrerdelaTorre,16)
)
(Habitatge19 of Pis
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 1)
    (preu 14939)
    (superficie 647)
    (qualitatDelsAcabats Alt)
    (nomBarri CV)
    (planta 8)
    (alturaPis 2)
    (nomCarrer CarrerdeSantElies,37-23)
)
(Habitatge20 of CasaAdosada
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 6)
    (preu 16554)
    (superficie 621)
    (qualitatDelsAcabats Alt)
    (nomBarri CV)
    (planta 19)
    (alturaPis 4)
    (nomCarrer CarrerdeMuntaner,08021)
)
(Habitatge21 of CasaAdosada
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 5)
    (preu 8778)
    (superficie 436)
    (qualitatDelsAcabats Mitja)
    (nomBarri CV)
    (planta 7)
    (alturaPis 2)
    (nomCarrer CarrerdelesTresTorres,43-35)
)
(Habitatge22 of Atic
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 1)
    (preu 10351)
    (superficie 536)
    (qualitatDelsAcabats Mitja)
    (nomBarri HG)
    (planta 2)
    (alturaPis 2)
    (nomCarrer CarrerdeCanet)
)
(Habitatge23 of Pis
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 2)
    (preu 3749)
    (superficie 790)
    (qualitatDelsAcabats Alt)
    (nomBarri SAM)
    (planta 6)
    (alturaPis 3)
    (nomCarrer CarrerdeDolorsMonserdà)
)
(Habitatge24 of Unifamiliar
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 10)
    (preu 1071)
    (superficie 308)
    (qualitatDelsAcabats Mitja)
    (nomBarri G)
    (planta 5)
    (alturaPis 4)
    (nomCarrer CarrerdeDomíngueziMiralles,22,)
)
(Habitatge25 of CasaAdosada
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 3)
    (preu 2640)
    (superficie 317)
    (qualitatDelsAcabats Alt)
    (nomBarri E)
    (planta 11)
    (alturaPis 3)
    (nomCarrer PasseigdeManuelGirona,22-30)
)
(Habitatge26 of Duplex
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 1)
    (preu 19380)
    (superficie 312)
    (qualitatDelsAcabats Baix)
    (nomBarri E)
    (planta 11)
    (alturaPis 3)
    (nomCarrer CarrerdeManso,35-19)
)
(Habitatge27 of Pis
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 6)
    (preu 9472)
    (superficie 208)
    (qualitatDelsAcabats Alt)
    (nomBarri G)
    (planta 11)
    (alturaPis 5)
    (nomCarrer CarrerdeFloridablanca,122-136)
)
(Habitatge28 of Apartament
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 4)
    (preu 2290)
    (superficie 583)
    (qualitatDelsAcabats Baix)
    (nomBarri E)
    (planta 18)
    (alturaPis 4)
    (nomCarrer GranViadelesCortsCatalanes,532)
)
(Habitatge29 of Xalet
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 6)
    (preu 17934)
    (superficie 833)
    (qualitatDelsAcabats Baix)
    (nomBarri CV)
    (planta 10)
    (alturaPis 3)
    (nomCarrer CarrerdeJoaquínCosta,68)
)
(Habitatge30 of Pis
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 5)
    (preu 2049)
    (superficie 419)
    (qualitatDelsAcabats Baix)
    (nomBarri HG)
    (planta 17)
    (alturaPis 4)
    (nomCarrer PlaçadeCarlesPiiSunyer)
)
(Habitatge31 of Xalet
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 9)
    (preu 5295)
    (superficie 693)
    (qualitatDelsAcabats Alt)
    (nomBarri CV)
    (planta 6)
    (alturaPis 5)
    (nomCarrer CarrerdelaPrincesa,50-58)
)
(Habitatge32 of Pis
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 3)
    (preu 885)
    (superficie 44)
    (qualitatDelsAcabats Alt)
    (nomBarri SM)
    (planta 11)
    (alturaPis 4)
    (nomCarrer C/deBailèn,2-4)
)
(Habitatge33 of Atic
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 2)
    (preu 19417)
    (superficie 182)
    (qualitatDelsAcabats Baix)
    (nomBarri G)
    (planta 2)
    (alturaPis 4)
    (nomCarrer CasaMalupa,CarrerdeGirona)
)
(Habitatge34 of Duplex
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 1)
    (preu 12060)
    (superficie 493)
    (qualitatDelsAcabats Mitja)
    (nomBarri HG)
    (planta 2)
    (alturaPis 3)
    (nomCarrer CarrerdelBruc,137-121)
)
(Habitatge35 of Unifamiliar
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 1)
    (preu 1363)
    (superficie 99)
    (qualitatDelsAcabats Mitja)
    (nomBarri G)
    (planta 14)
    (alturaPis 3)
    (nomCarrer CarrerdelPeril)
)
(Habitatge36 of CasaAdosada
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 6)
    (preu 13279)
    (superficie 592)
    (qualitatDelsAcabats Mitja)
    (nomBarri LC)
    (planta 14)
    (alturaPis 4)
    (nomCarrer CarrerdeRamónyCajal,2)
)
(Habitatge37 of Apartament
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 5)
    (preu 8402)
    (superficie 402)
    (qualitatDelsAcabats Alt)
    (nomBarri SA)
    (planta 18)
    (alturaPis 4)
    (nomCarrer C/delsMadrazo,39-27)
)
(Habitatge38 of Unifamiliar
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 8)
    (preu 13723)
    (superficie 278)
    (qualitatDelsAcabats Baix)
    (nomBarri E)
    (planta 8)
    (alturaPis 2)
    (nomCarrer CarrerdelFrancolí,46)
)
(Habitatge39 of Duplex
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 5)
    (preu 15263)
    (superficie 255)
    (qualitatDelsAcabats Baix)
    (nomBarri SM)
    (planta 9)
    (alturaPis 5)
    (nomCarrer CarrerdeMusitu,27)
)
(Habitatge40 of Unifamiliar
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 6)
    (preu 8550)
    (superficie 382)
    (qualitatDelsAcabats Mitja)
    (nomBarri SSG)
    (planta 5)
    (alturaPis 5)
    (nomCarrer CarrerdeMargenat,92)
)
(Habitatge41 of CasaIndividual
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 2)
    (preu 15621)
    (superficie 678)
    (qualitatDelsAcabats Mitja)
    (nomBarri E)
    (planta 7)
    (alturaPis 3)
    (nomCarrer TravesseradeCollblanc,79)
)
(Habitatge42 of Atic
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 2)
    (preu 6193)
    (superficie 655)
    (qualitatDelsAcabats Mitja)
    (nomBarri SA)
    (planta 17)
    (alturaPis 4)
    (nomCarrer ParcdelsOcellets,4)
)
(Habitatge43 of Unifamiliar
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 7)
    (preu 5778)
    (superficie 326)
    (qualitatDelsAcabats Baix)
    (nomBarri CV)
    (planta 9)
    (alturaPis 2)
    (nomCarrer CarrerCarrascoiFormiguera)
)
(Habitatge44 of CasaIndividual
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 6)
    (preu 14598)
    (superficie 218)
    (qualitatDelsAcabats Baix)
    (nomBarri SSG)
    (planta 7)
    (alturaPis 4)
    (nomCarrer CarrerdeSantPiusX,2)
)
(Habitatge45 of Pis
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 5)
    (preu 12826)
    (superficie 805)
    (qualitatDelsAcabats Baix)
    (nomBarri LC)
    (planta 16)
    (alturaPis 3)
    (nomCarrer CarrerJuanRamónJiménez,23)
)
(Habitatge46 of Duplex
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 5)
    (preu 5204)
    (superficie 434)
    (qualitatDelsAcabats Mitja)
    (nomBarri HG)
    (planta 8)
    (alturaPis 5)
    (nomCarrer CarrerdeCastelao)
)
(Habitatge47 of Duplex
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 2)
    (preu 16851)
    (superficie 521)
    (qualitatDelsAcabats Baix)
    (nomBarri CV)
    (planta 1)
    (alturaPis 3)
    (nomCarrer Carrerdel'Alhambra,45)
)
(Habitatge48 of Apartament
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 4)
    (preu 5236)
    (superficie 843)
    (qualitatDelsAcabats Mitja)
    (nomBarri LC)
    (planta 12)
    (alturaPis 5)
    (nomCarrer CarrerdelaFoneria)
)
(Habitatge49 of CasaIndividual
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 4)
    (preu 1302)
    (superficie 48)
    (qualitatDelsAcabats Mitja)
    (nomBarri CV)
    (planta 18)
    (alturaPis 2)
    (nomCarrer CarrerdelaFoneria,)
)
(Habitatge50 of Duplex
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 3)
    (preu 12251)
    (superficie 396)
    (qualitatDelsAcabats Mitja)
    (nomBarri SSG)
    (planta 3)
    (alturaPis 5)
    (nomCarrer CarrerdelaPedreradelMussol,14)
)
(Habitatge51 of CasaAdosada
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 9)
    (preu 9600)
    (superficie 621)
    (qualitatDelsAcabats Baix)
    (nomBarri SM)
    (planta 8)
    (alturaPis 2)
    (nomCarrer CarrerdeSantRamon)
)
(Habitatge52 of CasaAdosada
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 7)
    (preu 6006)
    (superficie 314)
    (qualitatDelsAcabats Baix)
    (nomBarri SAM)
    (planta 20)
    (alturaPis 4)
    (nomCarrer CarrerdelRabíRubèn,22)
)
(Habitatge53 of CasaAdosada
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 10)
    (preu 3133)
    (superficie 605)
    (qualitatDelsAcabats Baix)
    (nomBarri LC)
    (planta 12)
    (alturaPis 2)
    (nomCarrer Av.FrancescFerreriGuàrdia)
)
(Habitatge54 of Unifamiliar
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 1)
    (preu 3250)
    (superficie 30)
    (qualitatDelsAcabats Mitja)
    (nomBarri NB)
    (planta 9)
    (alturaPis 2)
    (nomCarrer RondadeSantPau,42-54)
)
(Habitatge55 of CasaIndividual
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 3)
    (preu 6260)
    (superficie 177)
    (qualitatDelsAcabats Alt)
    (nomBarri SA)
    (planta 7)
    (alturaPis 5)
    (nomCarrer CarrerdeSantPacià,)
)
(Habitatge56 of Apartament
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 1)
    (preu 18974)
    (superficie 336)
    (qualitatDelsAcabats Baix)
    (nomBarri HG)
    (planta 14)
    (alturaPis 3)
    (nomCarrer CarrerdelesCarretes,47)
)
(Habitatge57 of Xalet
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 1)
    (preu 16613)
    (superficie 753)
    (qualitatDelsAcabats Baix)
    (nomBarri SSG)
    (planta 15)
    (alturaPis 3)
    (nomCarrer Carrédel'hort)
)
(Habitatge58 of Unifamiliar
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 4)
    (preu 16060)
    (superficie 344)
    (qualitatDelsAcabats Baix)
    (nomBarri HG)
    (planta 13)
    (alturaPis 2)
    (nomCarrer CarrerdeSantPau)
)
(Habitatge59 of Atic
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 4)
    (preu 18086)
    (superficie 209)
    (qualitatDelsAcabats Baix)
    (nomBarri SSG)
    (planta 15)
    (alturaPis 5)
    (nomCarrer CarrerdeGuàrdia)
)
(Habitatge60 of CasaAdosada
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 4)
    (preu 12019)
    (superficie 708)
    (qualitatDelsAcabats Baix)
    (nomBarri CV)
    (planta 17)
    (alturaPis 3)
    (nomCarrer PassatgedelaPau)
)
(Habitatge61 of CasaAdosada
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 3)
    (preu 18285)
    (superficie 483)
    (qualitatDelsAcabats Mitja)
    (nomBarri SA)
    (planta 7)
    (alturaPis 5)
    (nomCarrer CarrerAmple)
)
(Habitatge62 of Atic
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 6)
    (preu 15751)
    (superficie 611)
    (qualitatDelsAcabats Mitja)
    (nomBarri NB)
    (planta 8)
    (alturaPis 4)
    (nomCarrer CarrerdelaCiutat,3)
)
(Habitatge63 of Atic
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 1)
    (preu 4609)
    (superficie 478)
    (qualitatDelsAcabats Mitja)
    (nomBarri HG)
    (planta 4)
    (alturaPis 4)
    (nomCarrer Carrerd'EnGiraltelPellicer,14)
)
(Habitatge64 of Unifamiliar
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 2)
    (preu 7722)
    (superficie 424)
    (qualitatDelsAcabats Alt)
    (nomBarri SAM)
    (planta 8)
    (alturaPis 2)
    (nomCarrer CarrerdelBoudeSantPere,2)
)
(Habitatge65 of Xalet
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 6)
    (preu 12869)
    (superficie 365)
    (qualitatDelsAcabats Baix)
    (nomBarri SAM)
    (planta 14)
    (alturaPis 2)
    (nomCarrer PlacetadelComerç)
)
(Habitatge66 of Apartament
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 4)
    (preu 18030)
    (superficie 462)
    (qualitatDelsAcabats Baix)
    (nomBarri SA)
    (planta 8)
    (alturaPis 2)
    (nomCarrer C/d'AusiàsMarc,50-56)
)
(Habitatge67 of Apartament
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 1)
    (preu 15519)
    (superficie 115)
    (qualitatDelsAcabats Alt)
    (nomBarri LC)
    (planta 20)
    (alturaPis 2)
    (nomCarrer CarrerdelaDiputació,312-324)
)
(Habitatge68 of CasaIndividual
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 2)
    (preu 13245)
    (superficie 274)
    (qualitatDelsAcabats Mitja)
    (nomBarri SM)
    (planta 15)
    (alturaPis 2)
    (nomCarrer CarrerdePauClaris,119-115)
)
(Habitatge69 of Xalet
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 1)
    (preu 642)
    (superficie 167)
    (qualitatDelsAcabats Baix)
    (nomBarri NB)
    (planta 10)
    (alturaPis 2)
    (nomCarrer RambladeCatalunya,54)
)
(Habitatge70 of CasaIndividual
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 10)
    (preu 8424)
    (superficie 659)
    (qualitatDelsAcabats Mitja)
    (nomBarri SM)
    (planta 1)
    (alturaPis 5)
    (nomCarrer Carrerd'EnricGranados)
)
(Habitatge71 of CasaIndividual
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 1)
    (preu 18555)
    (superficie 808)
    (qualitatDelsAcabats Baix)
    (nomBarri LC)
    (planta 7)
    (alturaPis 2)
    (nomCarrer CarrerdelComteBorrell,309-313)
)
(Habitatge72 of Xalet
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 4)
    (preu 8323)
    (superficie 561)
    (qualitatDelsAcabats Baix)
    (nomBarri SAM)
    (planta 15)
    (alturaPis 4)
    (nomCarrer PlaçadeJoanLlongueras)
)
(Habitatge73 of Xalet
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 4)
    (preu 3398)
    (superficie 30)
    (qualitatDelsAcabats Baix)
    (nomBarri CV)
    (planta 15)
    (alturaPis 5)
    (nomCarrer CarrerdelesEscolesPies,2)
)
(Habitatge74 of Pis
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 6)
    (preu 18777)
    (superficie 717)
    (qualitatDelsAcabats Alt)
    (nomBarri CV)
    (planta 11)
    (alturaPis 2)
    (nomCarrer CarrerdelesTresTorres,43)
)
(Habitatge75 of Xalet
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 10)
    (preu 1696)
    (superficie 478)
    (qualitatDelsAcabats Alt)
    (nomBarri CV)
    (planta 13)
    (alturaPis 5)
    (nomCarrer CarrerdeCalatrava,)
)
(Habitatge76 of Xalet
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 4)
    (preu 6056)
    (superficie 171)
    (qualitatDelsAcabats Baix)
    (nomBarri NB)
    (planta 2)
    (alturaPis 4)
    (nomCarrer Carrerd'Anglí,67)
)
(Habitatge77 of CasaAdosada
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 6)
    (preu 4504)
    (superficie 326)
    (qualitatDelsAcabats Baix)
    (nomBarri E)
    (planta 16)
    (alturaPis 2)
    (nomCarrer CarrerdeMartorelliPeña,8)
)
(Habitatge78 of Unifamiliar
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 4)
    (preu 9176)
    (superficie 599)
    (qualitatDelsAcabats Alt)
    (nomBarri LC)
    (planta 5)
    (alturaPis 2)
    (nomCarrer CarrerdeFreixa,20)
)
(Habitatge79 of Xalet
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 6)
    (preu 6466)
    (superficie 398)
    (qualitatDelsAcabats Mitja)
    (nomBarri SA)
    (planta 10)
    (alturaPis 4)
    (nomCarrer GrandeGracia,109-11)
)
(Habitatge80 of CasaAdosada
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 9)
    (preu 17643)
    (superficie 576)
    (qualitatDelsAcabats Alt)
    (nomBarri SA)
    (planta 16)
    (alturaPis 2)
    (nomCarrer CarrerdeBadia,29)
)
(Habitatge81 of Atic
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 3)
    (preu 4440)
    (superficie 43)
    (qualitatDelsAcabats Baix)
    (nomBarri G)
    (planta 1)
    (alturaPis 5)
    (nomCarrer Carrerdel'Alzina,11)
)
(Habitatge82 of CasaAdosada
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 1)
    (preu 14846)
    (superficie 573)
    (qualitatDelsAcabats Baix)
    (nomBarri SAM)
    (planta 14)
    (alturaPis 2)
    (nomCarrer Carrerdel'Escorial,148)
)
(Habitatge83 of CasaIndividual
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 5)
    (preu 15773)
    (superficie 198)
    (qualitatDelsAcabats Alt)
    (nomBarri SM)
    (planta 6)
    (alturaPis 5)
    (nomCarrer CtradelCarmel)
)
(Habitatge84 of Unifamiliar
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 5)
    (preu 17436)
    (superficie 450)
    (qualitatDelsAcabats Mitja)
    (nomBarri NB)
    (planta 6)
    (alturaPis 5)
    (nomCarrer CarrerdeJosepSerrano,35)
)
(Habitatge85 of CasaIndividual
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 6)
    (preu 5385)
    (superficie 139)
    (qualitatDelsAcabats Baix)
    (nomBarri SA)
    (planta 15)
    (alturaPis 4)
    (nomCarrer CarrerdelDr.Bové,160)
)
(Habitatge86 of Pis
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 5)
    (preu 4127)
    (superficie 217)
    (qualitatDelsAcabats Alt)
    (nomBarri HG)
    (planta 10)
    (alturaPis 3)
    (nomCarrer CarrerdeSegimon,27-1)
)
(Habitatge87 of CasaAdosada
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 6)
    (preu 5615)
    (superficie 334)
    (qualitatDelsAcabats Baix)
    (nomBarri SM)
    (planta 6)
    (alturaPis 5)
    (nomCarrer CarrerdeMoratín,48)
)
(Habitatge88 of Apartament
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 6)
    (preu 17780)
    (superficie 521)
    (qualitatDelsAcabats Baix)
    (nomBarri NB)
    (planta 15)
    (alturaPis 3)
    (nomCarrer CarrerdeFastenrath)
)
(Habitatge89 of Xalet
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat TRUE)
    (mascotesPermeses TRUE)
    (dormitoris 4)
    (preu 4844)
    (superficie 386)
    (qualitatDelsAcabats Baix)
    (nomBarri G)
    (planta 13)
    (alturaPis 3)
    (nomCarrer CarrerdeSantCrispí)
)
(Habitatge90 of Apartament
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 4)
    (preu 15762)
    (superficie 302)
    (qualitatDelsAcabats Baix)
    (nomBarri HG)
    (planta 18)
    (alturaPis 3)
    (nomCarrer Carrerdel'Harmonia,33-49)
)
(Habitatge91 of Apartament
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 6)
    (preu 10611)
    (superficie 666)
    (qualitatDelsAcabats Alt)
    (nomBarri HG)
    (planta 2)
    (alturaPis 2)
    (nomCarrer Av.delCardenalVidaliBarraquer,51-45)
)
(Habitatge92 of Apartament
    (AC TRUE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia TRUE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 3)
    (preu 18018)
    (superficie 476)
    (qualitatDelsAcabats Mitja)
    (nomBarri NB)
    (planta 2)
    (alturaPis 3)
    (nomCarrer Horta)
)
(Habitatge93 of Duplex
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 1)
    (preu 12385)
    (superficie 327)
    (qualitatDelsAcabats Mitja)
    (nomBarri SAM)
    (planta 10)
    (alturaPis 4)
    (nomCarrer CarrerdeLloretdeMar,52)
)
(Habitatge94 of Apartament
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses FALSE)
    (dormitoris 3)
    (preu 11612)
    (superficie 765)
    (qualitatDelsAcabats Baix)
    (nomBarri E)
    (planta 16)
    (alturaPis 5)
    (nomCarrer CarrerdeCarlesCollet,4)
)
(Habitatge95 of Atic
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual TRUE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia TRUE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 6)
    (preu 1824)
    (superficie 469)
    (qualitatDelsAcabats Alt)
    (nomBarri HG)
    (planta 15)
    (alturaPis 2)
    (nomCarrer Carrerd'Horta,125)
)
(Habitatge96 of Duplex
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa FALSE)
    (jardi TRUE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 4)
    (preu 4647)
    (superficie 46)
    (qualitatDelsAcabats Mitja)
    (nomBarri SM)
    (planta 8)
    (alturaPis 3)
    (nomCarrer CarrerdeMartíiAlsina,18)
)
(Habitatge97 of Atic
    (AC FALSE)
    (calefaccio TRUE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi TRUE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 3)
    (preu 878)
    (superficie 57)
    (qualitatDelsAcabats Alt)
    (nomBarri NB)
    (planta 13)
    (alturaPis 2)
    (nomCarrer CarrerdelPintorJosepPinós)
)
(Habitatge98 of CasaIndividual
    (AC FALSE)
    (calefaccio FALSE)
    (obraNova TRUE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria TRUE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 3)
    (preu 7969)
    (superficie 199)
    (qualitatDelsAcabats Baix)
    (nomBarri SSG)
    (planta 2)
    (alturaPis 5)
    (nomCarrer CanPeguera)
)
(Habitatge99 of CasaAdosada
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking FALSE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa TRUE)
    (jardi FALSE)
    (ascensor FALSE)
    (xemeneia FALSE)
    (vistes FALSE)
    (amoblat FALSE)
    (mascotesPermeses TRUE)
    (dormitoris 4)
    (preu 19341)
    (superficie 216)
    (qualitatDelsAcabats Mitja)
    (nomBarri HG)
    (planta 19)
    (alturaPis 3)
    (nomCarrer CarrerdeRocabruna,6)
)
(Habitatge100 of Apartament
    (AC TRUE)
    (calefaccio FALSE)
    (obraNova FALSE)
    (parking TRUE)
    (piscinaIndividual FALSE)
    (piscinaComunitaria FALSE)
    (terrassa FALSE)
    (jardi FALSE)
    (ascensor TRUE)
    (xemeneia FALSE)
    (vistes TRUE)
    (amoblat TRUE)
    (mascotesPermeses FALSE)
    (dormitoris 5)
    (preu 17160)
    (superficie 396)
    (qualitatDelsAcabats Baix)
    (nomBarri G)
    (planta 15)
    (alturaPis 4)
    (nomCarrer CarrerdeDeià,47X)
)
)




;;; DE SERVEIS

(definstances serveis

;; Serveis de CV (Ciutat Vella)

(SuperCV1 of Supermercat
    (nomBarri CV)
    (grandaria Petit)
)

(SuperCV2 of Supermercat
    (nomBarri CV)
    (grandaria Petit)
)

(SuperCV3 of Supermercat
    (nomBarri CV)
    (grandaria Petit)
)

(MercatCV1 of Mercat
    (nomBarri CV)
)

(GimnasCV1 of Gimnas
    (nomBarri CV)
)

(UniversistatCV1 of Universistat
    (nomBarri CV)
)

(TeatreCV1 of Teatre
    (nomBarri CV)
)

(TeatreCV2 of Teatre
    (nomBarri CV)
)

(TeatreCV2 of Teatre
    (nomBarri CV)
)

(RestaurantCV1 of Restaurant
    (nomBarri CV)
)

(RestaurantCV2 of Restaurant
    (nomBarri CV)
)

(RestaurantCV3 of Restaurant
    (nomBarri CV)
)

(RestaurantCV4 of Restaurant
    (nomBarri CV)
)

(RestaurantCV5 of Restaurant
    (nomBarri CV)
)


;; Serveis de E (Eixample)

(SupermercatE1 of Supermercat
    (nomBarri E)
    (grandaria Gran)
)

(SupermercatE2 of Supermercat
    (nomBarri E)
    (grandaria Gran)
)

(SupermercatE3 of Supermercat
    (nomBarri E)
    (grandaria Petit)
)

(CentreEsportiuE1 of CentreEsportiu
    (nomBarri E)
)

(GimnasE1 of Gimnas
    (nomBarri E)
)

(TransportPublicE1 of TransportPublic
    (nomBarri E)
)

(EscolaE1 of Escola
    (nomBarri E)
)

(EscolaE2 of Escola
    (nomBarri E)
)

(UniversistatE1 of Universistat
    (nomBarri E)
)

(CinemaE1 of Cinema
    (nomBarri E)
)

(CinemaE2 of Cinema
    (nomBarri E)
)

(TeatreE1 of Teatre
    (nomBarri E)
)


;; Serveis de SAM (Sants-Montjuic)

(SupermercatSAM1 of Supermercat
    (nomBarri SAM)
    (grandaria Gran)
)

(SupermercatSAM2 of Supermercat
    (nomBarri SAM)
    (grandaria Gran)
)

(ParcSAM1 of Parc
    (nomBarri SAM)
)

(ParcSAM2 of Parc
    (nomBarri SAM)
)

(TransportPublicSAM1 of TransportPublic
    (nomBarri SAM)
)

(CentreSalutSAM1 of CentreSalut
    (nomBarri SAM)
)

(ResidenciaSAM1 of Residencia
    (nomBarri SAM)
)

(ResidenciaSAM2 of Residencia
    (nomBarri SAM)
)

(EscolaSAM1 of Escola
    (nomBarri SAM)
)

(RestaurantSAM1 of Restaurant
    (nomBarri SAM)
)

(RestaurantSAM2 of Restaurant
    (nomBarri SAM)
)


;; Serveis de LC (Les Corts)

(SupermercatLC1 of Supermercat
    (nomBarri LC)
    (grandaria Petit)
)

(SupermercatLC2 of Supermercat
    (nomBarri LC)
    (grandaria Petit)
)

(SupermercatLC3 of Supermercat
    (nomBarri LC)
    (grandaria Petit)
)

(ParcLC1 of Parc
    (nomBarri LC)
)

(CentreEsportiuLC1 of CentreEsportiu
    (nomBarri LC)
)

(CentreEsportiuLC2 of CentreEsportiu
    (nomBarri LC)
)

(CentreEsportiuLC3 of CentreEsportiu
    (nomBarri LC)
)

(GimnasLC1 of Gimnas
    (nomBarri LC)
)

(GimnasLC2 of Gimnas
    (nomBarri LC)
)

(GimnasLC3 of Gimnas
    (nomBarri LC)
)

(TransportPublicLC1 of TransportPublic
    (nomBarri LC)
)

(UniversistatLC1 of Universistat
    (nomBarri LC)
)

(UniversistatLC2 of Universistat
    (nomBarri LC)
)

(UniversistatLC3 of Universistat
    (nomBarri LC)
)

(UniversistatLC4 of Universistat
    (nomBarri LC)
)

(UniversistatLC5 of Universistat
    (nomBarri LC)
)

(CinemaLC1 of Cinema
    (nomBarri LC)
)


;; Serveis de SSG (Sarrià - Sant Gervàsi)

(SupermercatSSG1 of Supermercat
    (nomBarri SSG)
    (grandaria Gran)
)

(SupermercatSSG2 of Supermercat
    (nomBarri SSG)
    (grandaria Petit)
)

(MercatSSG1 of Mercat
    (nomBarri SSG)
)

(ParcSSG1 of Parc
    (nomBarri SSG)
)

(ParcSSG2 of Parc
    (nomBarri SSG)
)

(CentreSalutSSG1 of CentreSalut
    (nomBarri SSG)
)

(EscolaSSG1 of Escola
    (nomBarri SSG)
)

(EscolaSSG2 of Escola
    (nomBarri SSG)
)


;; Serveis de G (Gràcia)

(SupermercatG1 of Supermercat
    (nomBarri G)
    (grandaria Petit)
)

(SupermercatG2 of Supermercat
    (nomBarri G)
    (grandaria Petit)
)

(MercatG1 of Mercat
    (nomBarri G)
)

(ParcG1 of Parc
    (nomBarri G)
)

(CentreEsportiuG1 of CentreEsportiu
    (nomBarri G)
)

(TransportPublicG1 of TransportPublic
    (nomBarri G)
)

(CentreSalutG1 of CentreSalut
    (nomBarri G)
)

(ResidenciaG1 of Residencia
    (nomBarri G)
)

(EscolaG1 of Escola
    (nomBarri G)
)

(RestaurantG1 of Restaurant
    (nomBarri G)
)

;; Serveis de HG (Horta - Guinardó)

(SupermercatHG1 of Supermercat
    (nomBarri HG)
    (grandaria Gran)
)

(SupermercatHG2 of Supermercat
    (nomBarri HG)
    (grandaria Petit)
)

(MercatHG1 of Mercat
    (nomBarri HG)
)

(ParcHG1 of Parc
    (nomBarri HG)
)

(ParcHG2 of Parc
    (nomBarri HG)
)

(GimnasHG1 of Gimnas
    (nomBarri HG)
)

(TransportPublicHG1 of TransportPublic
    (nomBarri HG)
)

(CentreSalutHG1 of CentreSalut
    (nomBarri HG)
)

(CentreSalutHG2 of CentreSalut
    (nomBarri HG)
)

(ResidenciaHG1 of Residencia
    (nomBarri HG)
)

(ResidenciaHG2 of Residencia
    (nomBarri HG)
)

(EscolaHG1 of Escola
    (nomBarri HG)
)

(EscolaHG2 of Escola
    (nomBarri HG)
)

(EscolaHG3 of Escola
    (nomBarri HG)
)

(TeatreHG1 of Teatre
    (nomBarri HG)
)

;; Serveis de NB (Nous Barris)

(SupermercatNB1 of Supermercat
    (nomBarri NB)
    (grandaria Gran)
)

(SupermercatNB2 of Supermercat
    (nomBarri NB)
    (grandaria Gran)
)

(ParcNB1 of Parc
    (nomBarri NB)
)

(TransportPublicNB1 of TransportPublic
    (nomBarri NB)
)

(CentreSalutNB1 of CentreSalut
    (nomBarri NB)
)

(ResidenciaNB1 of Residencia
    (nomBarri NB)
)

(EscolaNB1 of Escola
    (nomBarri NB)
)

(RestaurantNB1 of Restaurant
    (nomBarri NB)
)

(CinemaNB1 of Cinema
    (nomBarri NB)
)

;; Serveis de SA (Sant Andreu)

(SupermercatSA1 of Supermercat
    (nomBarri SA)
    (grandaria Gran)
)

(SupermercatSA2 of Supermercat
    (nomBarri SA)
    (grandaria Gran)
)

(SupermercatSA3 of Supermercat
    (nomBarri SA)
    (grandaria Petit)
)

(SupermercatSA4 of Supermercat
    (nomBarri SA)
    (grandaria Gran)
)

(UniversistatSA1 of Universistat
    (nomBarri SA)
)

(UniversistatSA2 of Universistat
    (nomBarri SA)
)


;; Serveis de SM (Sant Martí)

(SupermercatSM3 of Supermercat
    (nomBarri SM)
    (grandaria Petit)
)

(SupermercatSM2 of Supermercat
    (nomBarri SM)
    (grandaria Petit)
)

(SupermercatSM1 of Supermercat
    (nomBarri SM)
    (grandaria Petit)
)

(MercatSM1 of Mercat
    (nomBarri SM)
)

(TransportPublicSM1 of TransportPublic
    (nomBarri SM)
)

(CentreSalutSM1 of CentreSalut
    (nomBarri SM)
)

(UniversistatSM1 of Universistat
    (nomBarri SM)
)

(UniversistatSM2 of Universistat
    (nomBarri SM)
)

(UniversistatSM3 of Universistat
    (nomBarri SM)
)

(RestaurantSM1 of Restaurant
    (nomBarri SM)
)

(RestaurantSM2 of Restaurant
    (nomBarri SM)
)

(RestaurantSM3 of Restaurant
    (nomBarri SM)
)

(RestaurantSM4 of Restaurant
    (nomBarri SM)
)

(RestaurantSM5 of Restaurant
    (nomBarri SM)
)

(RestaurantSM6 of Restaurant
    (nomBarri SM)
)

(RestaurantSM7 of Restaurant
    (nomBarri SM)
)

(RestaurantSM8 of Restaurant
    (nomBarri SM)
)

(RestaurantSM9 of Restaurant
    (nomBarri SM)
)

(RestaurantSM10 of Restaurant
    (nomBarri SM)
)

(RestaurantSM11 of Restaurant
    (nomBarri SM)
)

(TeatreSM1 of Teatre
    (nomBarri SM)
)

(TeatreSM2 of Teatre
    (nomBarri SM)
)

(TeatreSM3 of Teatre
    (nomBarri SM)
)

(TeatreSM4 of Teatre
    (nomBarri SM)
)

(TeatreSM5 of Teatre
    (nomBarri SM)
)


)


;;; DE BARRI

(definstances barris
(BarriCV of BarriCONCRET ;;Ciutat Vella
    (nom CV)
    (souMitja 1600)
)
(BarriE of BarriCONCRET ;;Eixample
    (nom E)
    (souMitja 2470)
)
(BarriSAM of BarriCONCRET ;;Sants-Montjuic
    (nom SAM)
    (souMitja 1954)
)
(BarriLC of BarriCONCRET ;;Les Corts
    (nom LC)
    (souMitja 2755)
)
(BarriSSG of BarriCONCRET ;;Sarrià - Sant Gervàsi
    (nom SSG)
    (souMitja 3385)
)
(BarriG of BarriCONCRET ;;Gràcia
    (nom G)
    (souMitja 2307)
)
(BarriHG of BarriCONCRET ;;Horta - Guinardó
    (nom HG)
    (souMitja 2060)
)
(BarriNB of BarriCONCRET ;;Nous Barris
    (nom NB)
    (souMitja 1603)
)
(BarriSA of BarriCONCRET ;;Sant Andreu
    (nom SA)
    (souMitja 1980)
)
(BarriSM of BarriCONCRET ;;Sant Martí
    (nom SM)
    (souMitja 2182)
)
)



;;; ---------------------------------------------------------
;;; ---------------------------------------------------------
;;; FI INSTANCIES
;;; ---------------------------------------------------------
;;; ---------------------------------------------------------




































;
