subroutine Falsa_posicion_modificado(func, a, b, soluc, error, iter)

    implicit none
    
    double precision:: func,  a, b, soluc, error, 
    integer:: iter, i
    
    
    
    do i = 1,iter
        
        fa= func(a)
        fb= func(b)
        soluc = a- (  fa*(b-a) / (fb - fa) )
        salva = fa
        if ( (soluc*a) > 0) then
    
            a = soluc
            soluc = func(a)
            else
        
            b= soluc
        end if
            
        if (abs(soluc) < error) then
            return
        end if
        
    end do
    
    
    
end subroutine Falsa_posicion_modificado