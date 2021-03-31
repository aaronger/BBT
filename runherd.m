vecpi=[.25 .5 .25], 
pactivity=[.5 1 2], 
lambda=pactivity'*pactivity,
Rzero = 2.5

[inf totinf]=effectR0linearinf(vecpi,lambda,Rzero),