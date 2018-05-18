function [tabn,iteration] = Generateur_Bernouilli(n,p,iteration)
    tabn = [];
    //for i=1:iteration
        tabn = grand(iteration,1,'bin',n,p)
    //end
endfunction

function [tab_Pas] = FairePas(tab_Bernouilli,iteration,s)
    if(tab_Bernouilli(1)==0) then
        tab_Pas(1)=s;
    end
    if(tab_Bernouilli(1)==1) then
        tab_Pas(1)=-s;
    end
    
    for i=2:iteration
        if(tab_Bernouilli(i)==0) then
          tab_Pas(i)=tab_Pas(i-1)+s;
        end
        if(tab_Bernouilli(i)==1) then
          tab_Pas(i)=tab_Pas(i-1)-s;
        end
    end
    plot2d(tab_Pas);
endfunction
