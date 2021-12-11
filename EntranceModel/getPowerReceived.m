function powerReceived = getPowerReceived(inputPower,antennaGain,distance,frequency)
    %GETPOWERRECEIVED Computes power recieved using Friis Transmission
    %equation
    dipoleGain = 1.64;
    wavelength = (3e8)/frequency;
    FSPL = (wavelength/(4*pi*distance))^2;
    powerReceived = inputPower * antennaGain * dipoleGain * FSPL;
end

