function plotSpectrum(X,fin,fmt)
% plotSpectrum(X,fin,fmt) Plot a smoothed spectrum
% fmt a basic graph format '-', 'r' etc OR
%      a cell of parameters to be passed to semilogx ie:
%      {'color', [0.5 0.5 0.5]}
% Calls semilogx
if nargin<3
    fmt='-';
end
[f p] = logsmooth(X,fin);
if iscell(fmt)
    semilogx(f,p,fmt{:});
else
    semilogx(f,p,fmt);
end
