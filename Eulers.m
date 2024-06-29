function [] = Eulers(f, t, h, s_t, s_w)
    % Evaluate the function f from s_t to t with timestep h with starting value s_w
    % Euler's method.
        assert( s_t < t );

        wi = s_w;
        ti = s_t + h;
        while(ti < t + h)
            w =  wi + h * f(ti - h, wi);
            disp(['t: ', num2str(ti)]);
            disp(['value: ', num2str(w)]);
            disp(['f(ti,wi): ', num2str(f(ti - h, wi))]);
            disp(' ')
            ti = ti + h;
        end    
    end
    
    