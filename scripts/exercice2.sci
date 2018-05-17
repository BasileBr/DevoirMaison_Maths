function Calcul_Exponentielle(lambda,iteration)
    esperance_expo = 1/lambda;
    var_expo = 1/lambda^2;
    sigma_expo = sqrt(var_expo);
    
    //X = grand(iteration,1,'exp',lambda)
    Xn = []
    
    for i=1:iteration
        Xi = grand(i,1,'exp',esperance_expo) // Prend l'esperance de la loi expo, pas lambda.
        Somme(i) = sum(Xi);
        Xn(i) = (1/i)*Somme(i);
    end
    //disp(size(moyenne_empirique))
    //disp(moyenne_empirique)
    //histplot(40,moyenne_empirique)
    //x = [min(moyenne_empirique):0.0001:max(moyenne_empirique)];
    //disp(size(x))
    //y = lambda*exp(-lambda*x);
    //disp(size(y))
    plot2d(Xn);
endfunction
