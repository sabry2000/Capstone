function maximumApertureLength = getMaximumAperture(distance,frequency)
%GETMINIMUMAPERTURE Applies far field approximation to estimate antenna
%aparture size
    wavelength = 3e8/frequency;
    maximumApertureLength = sqrt(distance * wavelength/2);
end

