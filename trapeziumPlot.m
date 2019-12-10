function [dif precent] = trapeziumPlot(n, f, a, b)
    %n is the number of panes used to numerically integrate
    %f is the function being numerically integrated
    %[a,b] are the integration bounds
    %dif is the difference between the actual integral and the approximation
    %precent is the precent difference between the actual integral and the approximation
    clf %clears plot
    hold on %allows for multiple functions in a plot
    fplot(f, [a,b]) %plots f in the range [a,b]
    x = linspace(a, b, n + 1); %the endpoints of the panes
    y = f(x); %the values at those endpoints
    plot(x, y) 
    xlim([a b]) %sets bounds of plot
    hold off
    int = integral(f, a, b); %calculates the integral of f over [a,b]
    %We assume this is completely accurate, which is not true but more than good enough for our purposes
    numint = (2*sum(y) - y(1) - y(n+1))*(b-a)/(2*n); %numerically integrates f using trapezoid rule
    dif = int - numint; 
    precent = dif/int;
end

