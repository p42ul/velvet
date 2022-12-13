function out = velvet(Nd, Fs, N)
    out = zeros(N, 1); % Output signal
    Td = Fs / Nd; % Distance between impulses
    
    % km is the locations of the pulses
    % The location of pulses will range, on average, from 1:Td*N
    km = zeros(N, 1);
    for i = 1:length(km)
        km(i) = round(i*Td + rand()*(Td-1));
    end
    
    pulseIndex = 1;
    
    for i = 1:length(out)
        if km(pulseIndex) == i
            out(i) = 2*round(rand()) - 1; % Random sign of pulse
            pulseIndex = pulseIndex + 1;
        elseif km(pulseIndex) > i
            out(i) = 0;
        else % km(pulseIndex) < i
            out(i) = 0;
            pulseIndex = pulseIndex + 1;
        end
    end
end