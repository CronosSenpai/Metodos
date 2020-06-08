subroutine Tridiagonal(a, n)
    
    double precision, dimension (n , n ):: a
    integer :: n, k
    
    !n=shape(a,1)
    n=size(a,1)
    do k=2,n
        a(k,2) = a(k,2) - a(k,1)*a(k-1,3)/a(k-1, 2)
        a(k,4) = a(k,4) - a(k,1)*a(k-1,4)/a(k-1, 2)
    end do
    a(n, 4) = a(n,4)/a(n,2)
    do k=n-1, 1, -1
    a(k,4) = (a(k,4) - a(k,3)*a(k+1, 4))/a(k,2)
    end do
    return
    
end subroutine Tridiagonal