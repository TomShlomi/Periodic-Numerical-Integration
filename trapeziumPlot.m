function [] = trapeziumPlot(n, f, a, b)
    hold on
    fplot(f)
    x = linspace(a, b, n + 1);
    y = f(x);
    
    plot(x, y)
    axis([a b min(y) max(y)])
end

