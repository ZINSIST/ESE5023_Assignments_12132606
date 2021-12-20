module Matrix_multip

implicit none


contains      

subroutine Matrix_multip_F(m,n,p)

  real(4),dimension(5,3):: m
  real(4),dimension(3,5):: n
  real(4),dimension(5,5):: p
  integer i,k,nn,mm
  
    do mm=1,5
      do nn=1,5
        do k=1,3
          p(mm,nn)=p(mm,nn)+m(mm,k)*n(k,nn)
        end do
      end do
    end do

    ! do i=1,5
    !     write(*,'(*(f9.2))') p(i,1:5)
    ! enddo



end subroutine
      
end module Matrix_multip
