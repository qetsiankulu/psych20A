clear
close all
nTrials=10;
blue=imread('blue.png');
%use this line only on desktop MATLAB
%comment out or delete for Online or Mobile
f=figure('WindowStyle','docked');
%loop
for i=1:nTrials
    clc %clear console
    %word used on this trial
    word=blue;
    %change its color: remember, R, G, B
    word=255-word;
    word(:,:,3)=0;
    word=255-word;
    %show the word
    imshow(word)
    %collect input
    input('What color?','s');
end
%we're done!
close all