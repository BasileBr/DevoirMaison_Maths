function Calcul_Uniforme(borne_a,borne_b,iteration)
    esperance = (borne_a+borne_b)/2;
    var = ((borne_b-borne_a)*(borne_b-borne_a))/12;
    sigma = sqrt(var);
    
    for i = 1 :iteration
        Somme(i) = i*esperance; 
    end
    histplot(Somme,iteration)
    disp(Somme)
    /*
    for i = 1 :iteration
        
    end*/
endfunction

function main()
    chdir(CHEMIN);
    Calcul_Uniforme(1,30,30)
end

main()
