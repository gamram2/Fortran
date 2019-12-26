!
!  ex1.f90
!
!  Free-Format Fortran Source File 
!  Generated by PGI Visual Fortran(R)
!  12/6/2019 11:35:22 AM
!

program ex_1
implicit none

integer::a,b,c,d,invmat
real::aa,bb,cc,dd
read*,a,b,c,d
invmat=inv(a,b,c,d)
call inv_mat(a,b,c,d,invmat,aa,bb,cc,dd)
print*,"(",aa,bb,")"
print*,"(",cc,dd,")"
contains

function inv(input1,input2,input3,input4)
 integer::inv
 integer,intent(in)::input1,input2,input3,input4
 inv=input1*input4-input2*input3
 if(inv==0) then
 print*, "역행렬이 없습니다. "
 end if
end function inv

subroutine inv_mat(a,b,c,d,inv,aa,bb,cc,dd)
 integer,intent(in)::a,b,c,d,inv
 real,intent(out)::aa,bb,cc,dd
 aa=d/inv
 bb=-b/inv
 cc=-c/inv
 dd=a/inv
end subroutine inv_mat

end program ex_1
