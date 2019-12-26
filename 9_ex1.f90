﻿!
!  ex1.f90
!
!  Free-Format Fortran Source File 
!  Generated by PGI Visual Fortran(R)
!  11/29/2019 11:32:21 AM
!
program ex_1
implicit none
integer::i,lines=0
integer::sum_day=0,sum_mon=0,sum_yr=0
real::avg_temp,avg_wd,avg_ws,sum_temp=0,sum_wd=0,sum_ws=0
integer,dimension(:),allocatable::stn,yr,mon,day,hr
real,dimension(:),allocatable::temp,wd,ws
open(11,file='C:\108_2004to2013.txt')
do
 read(11,*,end=10)
 lines=lines+1
end do
10 continue
i=lines
allocate(stn(i),yr(i),mon(i),day(i),hr(i),temp(i),wd(i),ws(i))
rewind(11)
do i=1,lines
 read(11,*) stn(i),yr(i),mon(i),day(i),hr(i),temp(i),wd(i),ws(i)
end do
open (15,file='C:\Users\user\Documents\daily_mean.txt')
write(15,13)'YEAR  MONTH DAY  M_TEMP.  M_W.D.    M_W.S.'
13 format(a45)
do i=1,lines/24
write(15,14) yr(24*i),mon(24*i),day(24*i),sum(temp(24*(i-1)+1:24*i))/24,sum(wd(24*(i-1)+1:24*i))/24,sum(ws(24*(i-1)+1:24*i))/24
end do 
14 format(3i6,3f12.1)
end program ex_1