function [] = Ralstons(f, f_t, h, s_t, s_w)
    % Evaluate the function f from s_t to f_t with timestep h with starting value s_w
    % Ralston's method.

    assert(s_t < f_t);

    ti =  s_t;
    wi = s_w;

    disp( '---------------- Ralstons method ---------------- ' );

    while(ti < f_t)
        t = ti + h;
        k1 = h * f(ti, wi);
        k2 = h * f(ti + 2/3 * h, wi + 2/3 * k1);
        w = wi + 1/4 * (k1 + 3 * k2);

        disp(['t: ', num2str(t)]);
        disp(['k1: ', num2str(k1)]);
        disp(['k2: ', num2str(k2)]);
        disp(['w: ', num2str(w)])
        disp(' ')

        ti = t;
        wi = w;

    end