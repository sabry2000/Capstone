function interpolatedGainDBI = interpolateGain(gainDBI,hpbwRadians,phiRadians)
%INTERPOLATEGAIN interpolates the gain at a certain angle theta
    gain = gainDBI;
    HPGain = gainDBI-3;
    slope = (gain - HPGain)/(0 - hpbwRadians/2);
    interpolatedGainDBI = slope * phiRadians + gain;
end

ls
