% HC3
% a)
disp('------------------------------- HC3 -------------------------------');

a = 1.028;
b = -12.83;
c = 0.07316;

original_result = sqrt(b^2 - 4*a*c);
original_result_2 = sqrt(b^2 + 4*a*c);

disp(['true results: ', num2str(original_result),' and ', num2str(original_result_2)]);



a = single(a);
b = single(b);
c = single(c);

result = single(single(b*b)*single(single(4*a)*c));

abs_err = abs(original_result - result);
relative_error = abs_err / abs(original_result);

disp(['single precision: ', num2str(result), ' abs error: ', num2str(abs_err), ' relative error: ', num2str(abs_err)]);

a = round(1.028, 4, 'significant');
b = round(-12.83, 4, 'significant');
c = round(0.07316, 4, 'significant');

result = round(sqrt(b^2 - 4*a*c), 4, 'significant');

abs_err = abs(original_result - result);
relative_error = abs_err / abs(original_result);
disp(['four digit: ', num2str(result), ' abs error: ', num2str(abs_err), ' relative error: ', num2str(abs_err)]);

% C7

disp('------------------------------- C7 -------------------------------');




% Guess the value
x0 = 2;

root = fsolve(@poly_eqn, x0);

disp(['fsolve result: ', num2str(root)])

root_2 = fzero(@poly_eqn, x0);

disp(['fzero result: ', num2str(root_2)])

coeff = [1 4 0 -9];
root_3 = roots(coeff);

disp(['roots result: ', num2str(root_3.')]);

disp(' ')
disp('------------------------------- C11 -------------------------------');
disp(' ')


% Define the interval

a = 0;
b = 1;

f_1 = @(x) x^3 - 6*x^2 + 14*x - 7;


sol_a = bisection_root(f_1, a, b, 10^-6);

% point B

a = 3;
b = 5;

f_2 = @(x) (x-3)^2 - log(x);
sol_b = bisection_root(f_2, a, b, 10^-6);

% point C

a = 0;
b = 2;

f_3 = @(x) exp(1)^x - 4*x^2;

sol_c_1 = bisection_root(f_3, a, b, 10^-6);

a = 2;
b = 6;

sol_c_2 = bisection_root(f_3, a, b, 10^-6);

a = 0;
b = 1;

f_1 = @(x) x^3 - 6*x^2 + 14*x - 7;


sol_a_2 = secant_method(f_1, a, b, 10^-6);

disp(['solution to a: ',num2str(sol_a)]);
disp(['solution to b: ',num2str(sol_b)]);
disp(['solution to c on [0,2]: ',num2str(sol_c_1)]);
disp(['solution to c on [2,6]: ',num2str(sol_c_2)]);
disp(['solution to a with my method: ',num2str(sol_a_2)]);

function F = poly_eqn(x)
    F = x^3 + 4*x^2 - 9;
end


