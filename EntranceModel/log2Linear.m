function linearVal = log2Linear(logVal,pattern)
%LOG2LINEAR Summary of this function goes here
%   Detailed explanation goes here
    if(nargin == 1 || pattern == "power" || pattern == "gain")
        linearVal = 10^(logVal/10);
    elseif (pattern == "field")
        linearVal = 20^(logVal/10);
    end
end

