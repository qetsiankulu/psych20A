clear 
%1.Acquisition V = 0, alpha = 0.5, lambda = 1 
VVect1 = rw(10,0,0.5, 1);  

%2.Extinction V = 1, alpha = 0.5, lambda = 0
VVect2 = rw(10, 1, 0.5, 0); 

%3.Compound Conditioning VA = VB = 0, alphaA = alphaB = 0.3, lambda = 1
[VVect3A, VVect3B] = rwAB(10, 0, 0, 0.3, 0.3, 1); 

%4.Overshadowing VA = VB = 0, alphaA = 0.3, alphaB = 0.1, lambda = 1
[VVect4A, VVect4B] = rwAB(10, 0, 0, 0.3, 0.1, 1); 

%5.Blocking VA = 1 VB = 0, alphaA = alphaB = 0.3, lambda = 1
[VVect5A, VVect5B] = rwAB(10, 1, 0, .3, .3, 1); 

%6.Overexpectation VA = VB = 1,alphaA = alphaB = 0.3, lambda = 1
[VVect6A, VVect6B] = rwAB(10, 1, 1, .3, .3, 1); 

%Graphs
figure('Name', 'Acquisition')
plot(VVect1); 

figure('Name', 'Extinction')
plot(VVect2);  

figure('Name', 'Compound Conditioning')
plot(VVect3A + VVect3B, 'g', 'LineStyle', '-.');  
hold on
plot(VVect3B, 'b')
hold on
plot(VVect3A, 'r', 'LineStyle', '--')
hold off

figure('Name', 'Overshadowing') 
plot(VVect4A + VVect4B, 'g', 'LineStyle', '-.') 
hold on
plot(VVect4A, 'b')
hold on
plot(VVect4B, 'r', 'LineStyle', '--')
hold off

figure('Name', 'Blocking') 
plot(VVect5A + VVect5B, 'b');
hold on
plot(VVect5A, 'g', 'LineStyle', '-.');
hold on 
plot(VVect5B, 'r', 'LineStyle', '--'); 
hold off

figure('Name', 'Overexpectation') 
plot(VVect6A + VVect6B, 'g', 'LineStyle', '-.'); 
hold on 
plot(VVect6B, 'b'); 
hold on 
plot(VVect6A, 'r', 'LineStyle', '--');
hold off

%Extra Credit: Prediction 1 - nTrials = 50, V = 0, alpha =0.5 lambda = 1 eps = 0.1 
VVectPr1 = pr(50,0,0.5,1, 0.1);  
VVectPr2 = pr(50,0,0.5,1, 0.1);
VVectPr3 = pr(50,0,0.5,1, 0.1);
VVectPr4 = pr(50,0,0.5,1, 0.1);
VVectPr5 = pr(50,0,0.5,1, 0.1);
VVectPr6 = pr(50,0,0.5,1, 0.1);
VVectPr7 = pr(50,0,0.5,1, 0.1);

figure('Name', 'PREDICTION 1') 
plot(VVectPr1, 'y')
hold on 
plot(VVectPr2, 'm' )
hold on 
plot(VVectPr3, 'c')
hold on 
plot(VVectPr4, 'r')
hold on 
plot(VVectPr5, 'g')
hold on 
plot(VVectPr6, 'b')
hold on 
plot(VVectPr7, 'k')
hold off

%Extra Credit: Prediction 3 - nTrials = 50, VA = VB = 0, alphaA = alphaB = 0.3, lambda = 1, eps = 0.1 
[VVectPr1A, VVectPr1B] = prAB(50, 0, 0, 0.3, 0.3, 1, 0.1);  
[VVectPr2A, VVectPr2B] = prAB(50, 0, 0, 0.3, 0.3, 1, 0.1); 
[VVectPr3A, VVectPr3B] = prAB(50, 0, 0, 0.3, 0.3, 1, 0.1); 
[VVectPr4A, VVectPr4B] = prAB(50, 0, 0, 0.3, 0.3, 1, 0.1); 
[VVectPr5A, VVectPr5B] = prAB(50, 0, 0, 0.3, 0.3, 1, 0.1); 
[VVectPr6A, VVectPr6B] = prAB(50, 0, 0, 0.3, 0.3, 1, 0.1); 
[VVectPr7A, VVectPr7B] = prAB(50, 0, 0, 0.3, 0.3, 1, 0.1); 


figure('Name', 'PREDICTION 3') 
plot(VVectPr1A, 'y')
hold on 
plot(VVectPr1B, 'y', 'LineStyle', '--')
hold on 
plot(VVectPr2A, 'm')
hold on 
plot(VVectPr2B, 'm', 'LineStyle', '--')
hold on 
plot(VVectPr3A, 'c')
hold on 
plot(VVectPr3B, 'c', 'LineStyle', '--')
hold on 
plot(VVectPr4A, 'r')
hold on 
plot(VVectPr4B, 'r', 'LineStyle', '--')
hold on 
plot(VVectPr5A, 'g')
hold on 
plot(VVectPr5B, 'g', 'LineStyle', '--')
hold on 
plot(VVectPr6A, 'b')
hold on 
plot(VVectPr6B, 'b', 'LineStyle', '--')
hold on 
plot(VVectPr7A, 'k')
hold on 
plot(VVectPr7B, 'k', 'LineStyle', '--')
hold off 








