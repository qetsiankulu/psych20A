function [VVectA,VVectB]=prAB(nTrials,VA,VB,alphaA,alphaB,lambda,eps)
    VVectA = VA;
    VVectB = VB; 
    
for i = 1:nTrials
   
    V = VA + VB; 
    deltaVA = alphaA.*(lambda - (V)); 
    deltaVB = alphaB.*(lambda - (V)); 
    
    pA = eps + ((1 - (2.*eps)).*VA);
    pB = eps + ((1 - (2.*eps)).*VB);
        
    if rand < pA
       VA = VA + deltaVA;
        VVectA = [VVectA VA];
    end
    
    if rand > pA
        VVectA = [VVectA VA];
    end
    
     if rand < pB
        VB = VB + deltaVB;
        VVectB = [VVectB VB];
     end 
    
     if rand > pB
        VVectB = [VVectB VB];
    end
    
       
end 
end 
   
       
       
 
