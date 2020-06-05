subroutine Newton-Raphson(func, deriv, p, soluc, error, iter)

    implicit none
    
    double precision:: func, deriv, p, error, soluc
    integer:: iter, i
    
    
    do i = 1,iter
        
        p = p - func(p)/deriv(p)
            
        if (abs(p) < error) then
            soluc=p
            return
        end if
        
    end do
    
    
    
end subroutine Newton-Raphson
