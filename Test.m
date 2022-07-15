%% Primo test metodo di Halley
f =@(x) sin(x) -x^3;
df1 =@(x) cos(x) - 3*x^2;
df2 =@(x) -sin(x) - 6*x;
x0 = 1;
tol = 1e-10;
maxIter = 100;
fprintf("<strong>Passo\t   Valore x \tStima errore\t   Residuo</strong>\n")
Halley_v1(f, df1, df2, x0, tol, maxIter);

%% Secondo test metodo di Halley
f =@(x) cos(x);
df1 =@(x) -sin(x);
df2 =@(x) -cos(x);
x0 = 1;
tol = 1e-10;
maxIter = 100;
fprintf("<strong>Passo\t   Valore x \tStima errore\t   Residuo</strong>\n")
Halley_v1(f, df1, df2, x0, tol, maxIter);
