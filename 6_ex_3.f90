!
!  ex_3.f90
!
!  Free-Format Fortran Source File 
!  Generated by PGI Visual Fortran(R)
!  10/18/2019 12:37:27 PM
!

program ex_3
implicit none
integer::i=0
character(10) :: s='******************',space='   '
do i=1,10,1
 if(i>10) exit
 print*,s(1:i)
enddo
do i=1,3,1
 if(i>5) exit
 print*,space(i-3:1),s(1:2*i-1)
enddo
do i=2,1,-1
 print*,space(i-3:1),s(1:2*i-1)
enddo
end program ex_3