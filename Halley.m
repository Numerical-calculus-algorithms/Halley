% Halley's method for root-finding 

function[x, nit, res]=Halley(f,df1,df2, x0, tol, maxIter)
nit = 0;
res = [];
for nit = 1:maxIter

    fx = f(x0); % Function evaluation
    df1x = df1(x0); % First derivate evaluation
    df2x = df2(x0); % Second derivate evaluation
    res(end + 1) = fx; 
    x = x0 - ( (2*fx*df1x)/(2*(df1x^2) - df2x)); % Iteration formula
    err = abs(x-x0)/abs(x); % Relative error calculation
    if err < tol
        return
    end
    fprintf('%i \t%1.10f \t  %.2e\n', nit, x, err)
    x0 = x; 

end

