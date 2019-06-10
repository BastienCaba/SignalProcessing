function [rxx, k_ax] = autocorr_biased(x)
%Extract signal length
N = length(x);
rxx = zeros(1,N);

%Compte autocorrelation
for k = 0:N-1
    for n = k+1:N
        rxx(k+1) = rxx(k+1) + x(n)*conj(x(n-k));
    end
end

%Normalise
rxx = rxx ./ N;

k_ax = 0:N-1;
end