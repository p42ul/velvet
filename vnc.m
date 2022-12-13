function out = vnc(Nd, Fs, N, x)
    % TODO: Implement multiplication-free convolution here.
    v = velvet(Nd, Fs, N);
    out = conv(v, x);
end
