function [VA,VB]=rwABRule(VA, VB, alphaA, alphaB, lambda)

VAB = VA + VB; 
deltaVA = alphaA.*(lambda - (VAB)); 
deltaVB = alphaB.*(lambda - (VAB)); 

VA = VA + deltaVA; 
VB = VB + deltaVB;
end 