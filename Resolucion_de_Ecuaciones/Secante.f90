subroutine Secante(func, p1, p2, soluc, error, iter)
    
    implicit none
    
    double precision::  func, p1, p2, soluc, error
    integer :: i, iter
    
    do i = 1, iter
        
        soluc = p2 - (func(p2)*(p2- p1)/ (func(p2)- func(p1) ))
        p1 = p2
        p2= soluc
        
        if abs(p1-p2) < error then
            return
        end if
    end do
    
end subroutine