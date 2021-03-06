!
!  ex2.f90
!
!  Free-Format Fortran Source File 
!  Generated by PGI Visual Fortran(R)
!  12/6/2019 12:30:37 PM
!

program ex_2
implicit none
integer::i,lines=0
real::rate,rate_sum,rate_avg,annual_mean
integer,dimension(:),allocatable::stn
character(7),dimension(:),allocatable::date
real,dimension(:),allocatable::mean_co2
open(10,file='C:\Users\user\Desktop\132_CO2_1999-2016.txt')
do
 read(10,*,end=9)
 lines=lines+1
end do
9 continue
i=lines
allocate (stn(i),date(i),mean_co2(i))
rewind (10)
read (10,*) 
do i=1,lines-1
 read (10,*) stn(i),date(i),mean_co2(i)
end do
print*,"        Month      Rate of CO2 increase (1999-2016)"
do i=1,lines/18
 rate=(mean_co2(lines-(i+10))-mean_co2(i))/18
 rate_sum=rate_sum+rate
 print*,i,":",rate,"(ppm/year)"
end do
rate_avg=rate_sum/18
!annual_mean=rate_avg/18
print*,"Annual mean  :",rate_avg,"(ppm/year)"
end program ex_2