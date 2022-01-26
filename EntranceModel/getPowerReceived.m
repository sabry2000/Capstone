function [powerReceived, powerTranceived] = getPowerReceived(inputPower, antennaGain, distance, frequency, thetaRadians, FFThreshold)
    %GETPOWERRECEIVED Computes power recieved using Friis Transmission
    %equation
    
    if distance > FFThreshold
        dipoleGain = getDipoleGain(thetaRadians);
        wavelength = (3e8)/frequency;
        FSPL = (wavelength/(4*pi*distance))^2;
        powerReceived = inputPower * antennaGain * dipoleGain * FSPL;

        %%if tranceiver architecture, then apply Friis twice
        powerTranceived = powerReceived * antennaGain * dipoleGain * FSPL;
    else
        powerReceived = 0;
        powerTranceived = 0;
    end
end

