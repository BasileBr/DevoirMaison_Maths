function maxime(n,p,iteration)
    tabn = [];
    for i=1:iteration
        tabn(i) = grand(iteration,1,'bin',n,p)
    end
    
endfunction