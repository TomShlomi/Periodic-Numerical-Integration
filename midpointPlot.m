function [dif, precent] = midpointPlot(n, f, a, b)
    %n is the number of panes used to numerically integrate
    %f is the function being numerically integrated
    %[a,b] are the integration bounds
    %dif is the difference between the actual integral and the approximation
    %precent is the precent difference between the actual integral and the approximation
    clf %clears plot
    hold on %allows for multiple functions in a plot
    fplot(f, [a,b]) %plots f in the range [a,b]
    x = linspace(a, b, n + 1); %the endpoints of the panes
    numint = 0; %the approximate integral
    for i = 1:n
      y = f((x(i) + x(i+1))/2); %f(the midpoint)
      plot([x(i) x(i+1)], [y y])%plots the midpoint interpolant
      numint = numint + y; %adds the value at the midpoint to the approximate integral
    end
    axis([a b])
    hold off
    numint = numint*(b-a)/n; %scales the approximate integral
    int = integral(f, a, b); %calculates the integral of f over [a,b]
    dif = int - numint; %difference between actual and approximate integral
    precent = dif/int; %precent difference between actual and approximate integral
end

