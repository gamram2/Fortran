!
!  ex2.f90
!
!  Free-Format Fortran Source File 
!  Generated by PGI Visual Fortran(R)
!  11/29/2019 3:15:12 PM
!

program ex_2
implicit none
integer::i,lines=0,sum_day=0
integer,dimension(:),allocatable::year,month,dayy
real,dimension(:),allocatable::m_temp,m_wd,m_ws
open (10,file='C:\Users\user\Documents\daily_mean.txt')
 read (10,*)
do
 read (10,*,end=9)
 lines=lines+1
end do
9 continue
i=lines
allocate (year(i),month(i),dayy(i),m_temp(i),m_wd(i),m_ws(i))
rewind(10)
 read (10,*)
do i=1,lines
 read (10,*) year(i),month(i),dayy(i),m_temp(i),m_wd(i),m_ws(i)
end do
print*,'YEAR MONTH DAY TEMP. W.S.'
do i=1,lines
 if (m_temp(i)>=25.and.m_ws(i)<=2)then 
  print*,year(i),month(i),dayy(i),m_temp(i),m_ws(i)
  sum_day=sum_day+1
 end if
end do
print*,'Total number of target days  :  ',sum_day,' days'
end program ex_2