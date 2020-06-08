program Principal
    
    double precision, dimension(:,:), allocatable :: A
    double precision, dimension(:), allocatable :: b, soluc
    integer :: n, estado, i, j
    
    print*, "Dime el orden del sistema"
    
    read(*,*) n
    
    allocate(A(n,n), b(n), soluc(n), stat=estado)
    
    if (estado .ne. 0) then
        print*, "Error de asignacion de memoria"
        stop
        
    end if
    
    do i =1,n
    
        read(*,*) (A(i,j), j= 1,n), b(i)
    
    end do
    
    
    
end program