!
!  SourceFile3.f90
!
!  Free-Format Fortran Source File 
!  Generated by PGI Visual Fortran(R)
!  10/11/2019 12:20:09 PM
!

program ex_3
implicit none
integer :: i,N,sum1=0,sum2=0		!변수 설정
print*, "정수 N을 입력하시오."		!명령
read*, N
do i=1,N
 sum1=sum1+i
 sum2=sum2+sum1
enddo
print*, "sum: ",sum2				!합계
end program ex_3