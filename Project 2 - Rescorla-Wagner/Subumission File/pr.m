function VVect =pr(nTrials,V,alpha,lambda, eps)
   VVect = V; 
   
   for i = 1:nTrials
   p = eps + ((1 - (2.*eps)).*V);
   
        if rand < p
        V=rwRule(V,alpha,lambda);
        VVect = [VVect V]; 
        end 
   
        if rand > p 
        VVect = [VVect V]; 
        end 
   end 
   
end 