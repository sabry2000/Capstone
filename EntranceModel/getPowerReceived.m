function powerReceived = getPowerReceived(inputPower, antennaGain, distance, frequency, thetaRadians)
    %GETPOWERRECEIVED Computes power recieved using Friis Transmission
    %equation
    dipoleGain = 1.64 * (sin(thetaRadians)^2);
    wavelength = (3e8)/frequency;
    FSPL = (wavelength/(4*pi*distance))^2;
    powerReceived = inputPower * antennaGain * dipoleGain * FSPL;
end

