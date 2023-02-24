function VVect=rw(nTrials,V,alpha,lambda)
    VVect = V; 
    for i = 1:nTrials
    V=rwRule(V,alpha,lambda);
    VVect = [VVect V]; 
    end 
end 