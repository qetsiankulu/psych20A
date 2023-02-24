function [VVectA,VVectB]=rwAB(nTrials,VA,VB,alphaA,alphaB,lambda)
    VVectA = VA; 
    VVectB = VB; 
   for i = 1:nTrials 
    [VA,VB]=rwABRule(VA, VB, alphaA, alphaB, lambda); 
    VVectA = [VVectA VA]; 
    VVectB = [VVectB VB];
    end
end
