function Y = Calcul_Uniforme(borne_a,borne_b,iteration)
    esperance = (borne_a+borne_b)/2;
    var = ((borne_b-borne_a)*(borne_b-borne_a))/12;
    sigma = sqrt(var);
    
    for i = 1 :iteration
        X = grand(iteration,1,'unf',borne_a,borne_b) 
        Somme(i) = sum(X)
    end
    disp(size(X))
    
    disp(size(Somme))
    
    for i = 1 :iteration
            Y(i) = (Somme(i)-(iteration*esperance))/(sqrt(iteration)*sigma)
    end

    histplot(40,Y)
    x = [min(Y):0.01:max(Y)];
    y = exp(-(x)^2/2)/sqrt(2*%pi);
    plot2d(x,y,2);



endfunction


//function main()
//    chdir(CHEMIN);
//    Calcul_Uniforme(0,1,1000)

//end

//main()

