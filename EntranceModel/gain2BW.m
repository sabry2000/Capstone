function hpbwDegrees = gain2BW(gainDBI, isDualBeam, efficiency)
%GAIN2BW This function converts an antenna gain (in dBi) measurement to its
%corresponding half-power beamwidth angle (in degrees)
	if (nargin == 2)
        efficiency = 1;
    end
    
    gain = 10^(gainDBI/10);
    directivity = gain / efficiency;
    solidAngle = (4*pi)/directivity;
    
    if isDualBeam
        solidAngle = solidAngle/2;
    end
    
    hpbwRadians = sqrt(solidAngle);
    hpbwDegrees = rad2deg(hpbwRadians);
end

