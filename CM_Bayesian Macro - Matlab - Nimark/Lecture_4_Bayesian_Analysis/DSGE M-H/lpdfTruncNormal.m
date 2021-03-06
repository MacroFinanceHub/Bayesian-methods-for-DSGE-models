function  LogDens = lpdfTruncNormal(x,a,b,bound)

%--------------------------------------------------------------------------
% Compute the log height of the left Truncated N(mu,sigma^2) density
%
%   x          Point where the density is evaluated  
%   a          Mean
%   b          Standard deviation
%   bound      Left truncation point
%--------------------------------------------------------------------------

if x<bound
    LogDens=-3e+3; 
else
    LogDens = -log(b) -0.5*log(2*pi) -0.5*((x-a)./b).^2;
end