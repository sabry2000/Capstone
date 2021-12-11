function [closeX, farX] = evaluateEntranceModel(hpbwDegrees, entranceWidth, antenna2entrance)
%MATH Summary of this function goes here
%   Detailed explanation goes here
    hpbwRadians = deg2rad(hpbwDegrees);
    theta = hpbwRadians/2;
    closeX = tan(theta) * antenna2entrance;
    farX = tan(theta) * (antenna2entrance +  entranceWidth);
end

