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
    (slot qualitatBarri
        (type SYMBOL)
        (allowed-values Baix Mitja Alt)
        (create-accessor read-write))
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
)

;----------------------------------------------------------------
;Definició de Persona
;----------------------------------------------------------------

(defclass Persona
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot poderAdquisitiu
        (type SYMBOL)
        (allowed-values Baix Mitja Alt)
        (create-accessor read-write))
    (slot sou
        (type INTEGER)
        (create-accessor read-write))
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

(defmodule MAIN (export ?ALL))

(defmodule recopilacion-grupo
	(import MAIN ?ALL)
	(export ?ALL)
)


(defrule are-lights-working
        (not (lights-working ?))
=>
        (printout t "Are the car's lights working (yes or no)?")
        (assert (lights-working (read))))
