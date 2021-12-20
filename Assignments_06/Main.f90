Program FileReadTest

use Matrix_multip

Implicit none

real(4),dimension(5,3):: m
real(4),dimension(3,5):: n
real(4),dimension(5,5):: p

integer i,j,k

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!(读取M)
Open( unit=1 , File = 'M.dat' )
do i=1,5
    read (1,*) m(i,1:3)
enddo

! do i=1,5
!     write (*,'(*(f5.2,1X))') m(i,1:3)
! enddo
close(1)


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!(读取N)

Open( unit=2 , File = 'N.dat' )
do i=1,3
    read (2,*) n(i,1:5)
enddo

! do i=1,3
!     write (*,'(*(f4.2,1X))') n(i,1:5)
! enddo
close(2)


call Matrix_multip_F(m,n,p)



open(unit=111, file='MN.dat', status='replace')
    do i=1,5
        write(111,'(*(f7.2))') p(i,1:5)
    enddo
close(111)




end



