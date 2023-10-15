
% Solves Ax = b with the Biconjugate Gradient Method
function [x, x_t] = bicg(A, b)
    [m, n] = size(A);
    if m ~= n
      error ("A must be a square matrix")
    endif
    
    [k, l] = size(b);
    if k ~= m || l > 1
      error ("Incompatible b vector")
    endif
    
    epsilon = 1e-10;
    
    M = flipud(eye(m,n));
    
    x = rand(m,1);
    x_t = rand(1,n);
    b_t = b';
    
    r = b - A*x;
    r_t = b_t - x_t*A;
    
    p = M*r;
    p_t = r_t*M;
    
    % Initialize variables for plotting
    iterations = [];
    residuals = [];
    
    iteration = 0;
    
    while norm(r,2) >= epsilon
      err = norm(r,2)
      
      iterations = [iterations, iteration];
      residuals = [residuals, err];
      
      a = (r_t*(M*r)) / (p_t*(A*p));
      x = x + a*p;
      x_t = x_t + a*p_t;
      s = r - a*(A*p);
      s_t = r_t - a*(p_t*A);
      
      b = (s_t*(M*s)) / (r_t*(M*r));
      r = s;
      r_t = s_t;
      
      p = M*r + b*p;
      p_t = r_t*M + b*p_t;
      
      iteration = iteration + 1;

    endwhile
    err = norm(r,2)
    
    iterations = [iterations, iteration];
    residuals = [residuals, err];
    
    figure;
    semilogy(iterations, residuals);
    xlabel('Iteration');
    ylabel('Residual Norm');
    title('Convergence Plot');
end
