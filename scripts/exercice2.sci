function Calcul_Exponentielle(lambda,iteration)
    esperance_expo = 1/lambda;
    var_expo = 1/lambda^2;
    sigma_expo = sqrt(var_expo);

    Xn = []

    for i=1:iteration
        Xi = grand(i,1,'exp',esperance_expo) // Prend l'esperance de la loi expo, pas lambda.
        Somme(i) = sum(Xi);
        Xn(i) = (1/i)*Somme(i);
    end
    plot2d(Xn);
endfunction
