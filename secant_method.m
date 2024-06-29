function [ p ] = newton( f, a, b, e)
    %Compute a root of the equation f(x)=0 in [a,b] to accuracy e 
    %Secant method.

        p_one = a;
        p_zero = b;

        assert( a < b ) % For it to make sense
        assert(f(p_one) - f(p_zero) ~= 0) % not to get division by 0
        
        p = p_one + 2* e;
        while (abs(p - p_one) > e)
            p = p_one - (p_one - p_zero) / (f(p_one) - f(p_zero)) * f(p_one);

            % stay in the interval
            if p < a
                p = a;
            elseif p > b
                p = b;
            end

            if abs(p - p_one) > e
                p_zero = p_one;
                p_one = p;
            end

        end
    end
    
    