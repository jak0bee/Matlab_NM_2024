function [p] = newton(f, a, b, e)
    %Compute a root of the equation f(x)=0 in [a,b] to accuracy e 
    %Newton method.

    assert( a < b ) % For it to make sense

    p_last = a;
    p = a + 2*e;

    df = diff(f,x);
    while (abs(p_last - p) > e)

        p = p_last - f(p_last) / df(p_last)
    
        if p > b
            p = b
        elseif p < a
            p = a
        end
    
    end
