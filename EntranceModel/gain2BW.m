function hpbwDegrees = gain2BW(gainDBI,efficiency)
%GAIN2BW This function converts an antenna gain (in dBi) measurement to its
%corresponding half-power beamwidth angle (in degrees)
	if (nargin == 1)
        efficiency = 1;
    end
    
    gain = 10^(gainDBI/10);
    directivity = gain / efficiency;
    solidAngle = (4*pi)/directivity;
    hpbwRadians = sqrt(solidAngle);
    hpbwDegrees = rad2deg(hpbwRadians);
end

