function [] = midpointPlot(n, f, a, b)
    hold on
    fplot(f)
    x = linspace(a, b, n + 1);
    y = zeros(1,n)
    for i = 1:n
        y(i) = f((x(i)+x(i+1))/2);
    end
    
    area(x(1:n), y)
    axis([a b min(y) max(y)])
end

