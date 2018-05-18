funcprot(0);
//CHEMIN = 'C:\Users\Basile Bruhat\Documents\Seconde année\Maths\DM\DevoirMaison_Maths'; // A modifier pour avoir le bon chemin d'accès
CHEMIN = 'C:\Users\poiri\Desktop\ENSSAT\Maths\DM\DevoirMaison_Maths'; // A modifier pour avoir le bon chemin d'accès

function main()
    
    chdir(CHEMIN);
    //getd('utils');
    getd('scripts');
    
    //[Somme,esperance,sigma,iteration] = Calcul_Uniforme(0,1,10000)
    //Affichage_Normale(Somme,esperance,sigma,iteration);
    
    //[Somme,esperance,sigma,iteration] = Calcul_Normale(0,1,10000)
    //Affichage_Normale(Somme,esperance,sigma,iteration);
    
    //[Somme,esperance,sigma,iteration] = Calcul_Binomiale(100,0.03,5000)
    //Affichage_Poisson(Somme,esperance,sigma,iteration);
    
    //Calcul_Exponentielle((1/100),5000)
    
    [tabn,iteration] = Generateur_Bernouilli(1,0.5,1000);
    [tab_Pas] = FairePas(tab_Bernouilli,iteration,1)
    
endfunction

main()
