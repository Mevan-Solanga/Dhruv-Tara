% Load data and establish the variables that will be used to quantify the measurement %
  
load starData
nObs = size(spectra,1)
lambdaStart = 630.02
lambdaDelta = 0.14
  
% Create vector of wavelengths %
 
lambdaEnd = lambdaStart + (nObs-1)*lambdaDelta;
lambda = (lambdaStart:lambdaDelta:lambdaEnd);

% Plotting %
s=spectra(:,6)
plot(lambda,s,".-")
xlabel("Wavelength")
ylabel("Intensity")
  
[sHa, idx]=min(s)
lambdaHa = lambda(idx)
hold on


% Extract the 6th column of the spectra matrix and plots it against the lambda vector %
  
plot(lambdaHa,sHa,"rs","MarkerSize",8)
hold off

% Redshift Calculation %
  
z=(lambdaHa/656.28)-1
speed=z*299792.458 

% Find minimum value of spectra matrix %
  
[sHa,idx] = min(spectra());

% Getting the value at index %

lambdaHa = lambda(idx);
z = lambdaHa/656.28 - 1;
speed = z*299792.458
  
% for loop to extract vth column of spectra to s %
  
for v=1:7
    s=spectra(:,v)
    s=spectra(:,v)
    if speed(v)<=0
        plot(lambda,s,"--")
end
    hold on
end

    hold off

movaway = starnames(speed>0)

