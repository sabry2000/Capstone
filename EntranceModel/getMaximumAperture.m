function maximumApertureLength = getMaximumAperture(wavelength,distance)
%GETMINIMUMAPERTURE Applies far field approximation to estimate antenna
%aparture size
    maximumApertureLength = sqrt(distance * wavelength/2);
end

