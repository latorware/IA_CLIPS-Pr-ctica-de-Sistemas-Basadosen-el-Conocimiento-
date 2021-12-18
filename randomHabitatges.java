import java.util.Random;

public class randomHabitatges {


    public static String randomTipus () {
        Random rand = new Random(); 
        int value = rand.nextInt((8 - 1) + 1) + 1; 

        if (value == 1) {
            return "Pis"; 
        }
        else if (value == 2) {
            return "Duplex"; 
        }
        else if (value == 3) {
            return "Atic"; 
        }
        else if (value == 4) {
            return "Apartament"; 
        }
        else if (value == 5) {
            return "Unifamiliar"; 
        }
        else if (value == 6) {
            return "CasaIndividual"; 
        }
        else if (value == 7) {
            return "CasaAdosada"; 
        }
        else if (value == 8) {
            return "Xalet"; 
        }

        return "Won't happen"; 
    }

    public static int randomDormitoris() {
        Random rand = new Random(); 
        int value = rand.nextInt((10 - 1) + 1) + 1;
        return value;  
    }

    public static int randompreu() {
        Random rand = new Random(); 
        int value = rand.nextInt((20000 - 450) + 1) + 450;
        return value;  
    }

    public static int randomsuperficie() {
        Random rand = new Random(); 
        int value = rand.nextInt((850 - 30) + 1) + 30;
        return value;  
    }

    public static String randomqualitatacabat() {
        Random rand = new Random(); 
        int value = rand.nextInt((3 - 1) + 1) + 1;
        if (value == 1) {
            return "Baix"; 
        }
        else if (value == 2) {
            return "Mitja"; 
        }
        else if (value == 3) {
            return "Alt"; 
        }
        return "Won't happen"; 
    }

    public static String randomnomdelbarri() {
        Random rand = new Random(); 
        int value = rand.nextInt((10 - 1) + 1) + 1;
        if (value == 1) {
            return "CV"; 
        }
        else if (value == 2) {
            return "E"; 
        }
        else if (value == 3) {
            return "SAM"; 
        }
        else if (value == 4) {
            return "LC"; 
        }
        else if (value == 5) {
            return "SSG"; 
        }
        else if (value == 6) {
            return "G"; 
        }
        else if (value == 7) {
            return "HG"; 
        }
        else if (value == 8) {
            return "NB"; 
        }
        else if (value == 9) {
            return "SA"; 
        }
        else if (value == 10) {
            return "SM"; 
        }
        return "won't happen"; 
    }

    public static int randomPlanta() {
        Random rand = new Random(); 
        int value = rand.nextInt((20 - 1) + 1) + 1;
        return value; 
    }

    public static int randomalturaPis() {
        Random rand = new Random(); 
        int value = rand.nextInt((5 - 2) + 1) + 2;
        return value; 
    }

    public static String randomtruefalse() {
        Random rand = new Random(); 
        int value = rand.nextInt((2 - 1) + 1) + 1;
        if (value == 1) {
            return "FALSE"; 
        }
        else if (value == 2) {
            return "TRUE"; 
        }
        return "Won't happen"; 
    }







    public static void main(String[] args) throws Exception
    {
        for (int i = 1; i <= 100; i++) {
            String tipus = randomTipus(); 
            int dormitoris = randomDormitoris(); 
            int preu = randompreu(); 
            int superficie = randomsuperficie(); 
            String qualitatAcabat = randomqualitatacabat(); 
            String nomDelBarri = randomnomdelbarri(); 
            int planta = randomPlanta(); 
            int alturaPis = randomalturaPis(); 
            String carrer = "POSA UN NOM"; 

            if (tipus.equals("Pis") || tipus.equals("Duplex") || tipus.equals("Atic") || tipus.equals("Apartament")) {
                while (dormitoris > 6) {
                    dormitoris = randomDormitoris(); 
                }
            }

            if (superficie < 100) {
                while (preu > 5000) {
                    preu = randompreu(); 
                }
            }

            if (superficie < 100) {
                while (dormitoris > 4) {
                    dormitoris = randomDormitoris(); 
                }
            }

            if ((superficie >= 100) && (superficie < 150)) {
                while (dormitoris > 6) {
                    dormitoris = randomDormitoris(); 
                }
            }

            String AC = randomtruefalse(); 
            String calefaccio = randomtruefalse(); 
            String obraNova = randomtruefalse(); 
            String parking = randomtruefalse(); 
            String piscinaIndividual = randomtruefalse(); 
            String piscinaComunitaria = randomtruefalse(); 
            if (piscinaIndividual.equals("TRUE") && piscinaComunitaria.equals("TRUE")) {
                piscinaIndividual = "FALSE"; 
            }
            String terrassa = randomtruefalse(); 
            String jardi = randomtruefalse(); 
            String ascensor = randomtruefalse(); 
            String xemeneia = randomtruefalse(); 
            String vistes = randomtruefalse(); 
            String amoblat = randomtruefalse(); 
            String mascotesPermeses = randomtruefalse(); 

            
            System.out.println("(Habitatge"+i+" of "+tipus);
            System.out.println("    (AC "+AC+")");
            System.out.println("    (calefaccio "+calefaccio+")");
            System.out.println("    (obraNova "+obraNova+")");
            System.out.println("    (parking "+parking+")");
            System.out.println("    (piscinaIndividual "+piscinaIndividual+")");
            System.out.println("    (piscinaComunitaria "+piscinaComunitaria+")");
            System.out.println("    (terrassa "+terrassa+")");
            System.out.println("    (jardi "+jardi+")");
            System.out.println("    (ascensor "+ascensor+")");
            System.out.println("    (xemeneia "+xemeneia+")");
            System.out.println("    (vistes "+vistes+")");
            System.out.println("    (amoblat "+amoblat+")");
            System.out.println("    (mascotesPermeses "+mascotesPermeses+")");
            System.out.println("    (dormitoris "+dormitoris+")");
            System.out.println("    (preu "+preu+")");
            System.out.println("    (superficie "+superficie+")");
            System.out.println("    (qualitatDelsAcabats "+qualitatAcabat+")");
            System.out.println("    (nomBarri "+nomDelBarri+")");
            System.out.println("    (planta "+planta+")");
            System.out.println("    (alturaPis "+alturaPis+")");
            System.out.println("    (nomCarrer "+carrer+")");
            System.out.println(")");
        }
    }
}