funcprot(0);
//CHEMIN = 'C:\Users\Basile Bruhat\Documents\Seconde année\Maths\DM\DevoirMaison_Maths'; // A modifier pour avoir le bon chemin d'accès
CHEMIN = 'C:\Users\poiri\Desktop\ENSSAT\Maths\DM\DevoirMaison_Maths'; // A modifier pour avoir le bon chemin d'accès

function main()
    
    chdir(CHEMIN);
    //getd('utils');
    getd('scripts');
    
    //[Somme,esperance,sigma,iteration] = Calcul_Uniforme(0,1,100)
    //Affichage(Somme,esperance,sigma,iteration);
    
    [Somme,esperance,sigma,iteration] = Calcul_Normale(0,1,50000)
    Affichage(Somme,esperance,sigma,iteration);
endfunction

main()
