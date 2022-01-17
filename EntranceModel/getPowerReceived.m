function powerReceived = getPowerReceived(inputPower, antennaGain, distance, frequency, thetaRadians, transceive)
    %GETPOWERRECEIVED Computes power recieved using Friis Transmission
    %equation
    
    dipoleGain = getDipoleGain(thetaRadians);
    wavelength = (3e8)/frequency;
    FSPL = (wavelength/(4*pi*distance))^2;
    powerReceived = inputPower * antennaGain * dipoleGain * FSPL;
    
    %%if tranceiver architecture, then apply Friis twice
    if transceive
        powerReceived = powerReceived * antennaGain * dipoleGain * FSPL;
    end
end

