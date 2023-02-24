function V=rwRule(V,alpha,lambda)
V = V + alpha.*(lambda - V); 
end 