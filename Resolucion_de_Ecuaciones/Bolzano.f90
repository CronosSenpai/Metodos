subroutine Bolzano(func, a, b, soluc, error, iter)

    implicit none
    
    double precision:: func,  a, b, soluc, error
    integer:: iter, i
    
    
    do i = 1,iter
        
        soluc = func( (b-a)/2.d0 )
        
        if ( (soluc*a) > 0.d0) then
    
            a = soluc
            
            else
        
            b= soluc
        end if
            
        if (abs(soluc) < error) then
            return
        end if
        
    end do
    
    
    
end subroutine Bolzano

