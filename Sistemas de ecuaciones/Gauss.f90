subroutine Gauss(A, b, dimen, soluc)
    
    integer :: dimen, i , j, pivote(1)
    double precision :: A(dimen, dimen), b(dimen), soluc(dimen), pivote_array(dimen), aux
    
    
    do i = 1, dimen-1
        
        pivote(1)=maxloc(   abs(A(i:dimen, i)/b(i:dimen)) )
         pivote_array(:)= A(i,:)
         A(i,:) = A(pivote(1), :)
         A(pivote(1), :) = pivote_array(:)
         
        do j = i+1, dimen
 
            A(j,i:dimen)= A(j,i:dimen)- ( A(i, i:dimen)*A(i,j)/A(i,i) )
            b(j) = b(j)- ( b(i)*A(i,j)/A(i,i) )
        end do
            
    end do
    
    soluc(dimen) = soluc(dimen)/A(dimen,dimen)
    
    do i = dimen-1, 1, -1
        
        aux=sum(A(i,i+1:dimen)*b(i+1:dimen))
        soluc(i) = (b(i) - aux)/a(i,i)

    end do
    
end subroutine