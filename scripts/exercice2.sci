function Calcul_Exponentielle(lambda,iteration)
     esperance = 1/lambda;
    var = 1/lambda^2;
    sigma = sqrt(var);
    
    X = grand(iteration,1,'exp',lambda)
    for i=1:iteration
        Somme(i) = sum(X);
        moyenne_empirique = (1/iteration)*Somme(i);
    end
    
    histplot(40,moyenne_empirique)
    x = [min(moyenne_empirique):0.01:max(moyenne_empirique)];
    y = lambda.*exp(-lambda.*x);
    plot2d(x,y,2);
endfunction
