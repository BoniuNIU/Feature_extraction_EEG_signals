function [STD,Max,Min,Mean] = Windo(Signal,L)
% The function of Windo calculate the Standard Deviation of the main signal
% which is inside of a L length window and STD shows the standard deviasion
% of the window. Max, Min and Mean calculate maximum, minimum and mean of the signals, respectively.

W = zeros(1,L);
k=1;
STD = [];
Max= [];
Min = [];
Mean = [];

jj = 1;
j = 1;
while jj <= length(Signal)
    cnt = 1;
    for i =k:k + L-1
        W(1,cnt) = Signal(i);
        cnt = cnt+1;
    end
    
    STD(j) = std(W);
    Max(j) = max(W);
    Min(j) = min(W);
    Mean(j) = mean(W);
    
    j = j+1;
    jj = jj+i;
    k = k+L;
end

end

