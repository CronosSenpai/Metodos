subroutine Falsa_posicion(func, a, b, soluc, error, iter)

    implicit none
    
    double precision:: func,  a, b, soluc, error, 
    integer:: iter, i
    
    do i = 1,iter
        
        
        soluc = a- ( ( func(a)*(b-a) )/ (func(b) - func(a)) )
        
        if ( (soluc*a) > 0) then
    
            a = soluc
            
            else
        
            b= soluc
        end if
            
        if (abs(soluc) < error) then
            return
        end if
        
    end do
    
    
    
end subroutine Falsa_posicion