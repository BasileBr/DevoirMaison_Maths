function [Somme,esperance,sigma,iteration] = Calcul_Uniforme(borne_a,borne_b,iteration)
    esperance = (borne_a+borne_b)/2;
    var = ((borne_b-borne_a)*(borne_b-borne_a))/12;
    sigma = sqrt(var);
    
    for i = 1 :iteration
        X = grand(iteration,1,'unf',borne_a,borne_b) 
        Somme(i) = sum(X)
    end
endfunction

function [Somme,esperance,sigma,iteration] = Calcul_Normale(mu,sigmaCarre,iteration)
    esperance = mu;
    var = sigmaCarre;
    sigma = sqrt(var);
    
    for i = 1 :iteration
        X = grand(iteration,1,'nor',esperance,sigma) 
        Somme(i) = sum(X)
    end
endfunction

function [Somme,esperance,sigma,iteration] = Calcul_Binomiale(n,p,iteration)
    esperance = n*p;
    var = esperance*(1-esperance);
    sigma = sqrt(var);
    
    for i = 1 :iteration
        X = grand(iteration,1,'bin',n,p) 
        Somme(i) = sum(X)
    end
endfunction

function Affichage_Normale(Somme,esperance,sigma,iteration)
    for i = 1 :iteration
            Y(i) = (Somme(i)-(iteration*esperance))/(sqrt(iteration)*sigma)
    end

    histplot(40,Y)
    x = [min(Y):0.01:max(Y)];
    y = exp(-(x).^2/2)/sqrt(2*%pi);
    plot2d(x,y,2);
endfunction

function Affichage_Poisson(Somme,esperance,sigma,iteration)
    for i = 1 :iteration
            Y(i) = Somme(i);
    end

    histplot(40,Y)
    x = [min(Y):0.01:max(Y)];
    y = ((esperance^x)/factorial(x))*exp(-esperance)
    plot2d(x,y,2);
endfunction

