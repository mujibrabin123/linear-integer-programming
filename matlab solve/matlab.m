% Define the objective function coefficients (since we want to maximize, we'll use negative coefficients for minimization)
f = [-40, -30];

% Define the inequality constraints (Ax <= b)
A = [2, 1; 4, 3];
b = [20; 60];

% Variable bounds (x >= 0)
lb = [0; 0];

% Specify integer variables
intcon = [1, 2];

% Solve the integer linear programming problem
[x, fval, exitflag, output] = intlinprog(f, intcon, A, b, [], [], lb);

% Display the results
disp('Optimal solution:')
disp(x)
disp('Maximum profit at the optimal solution:')
disp(-fval)
