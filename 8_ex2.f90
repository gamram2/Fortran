!
!  ex2.f90
!
!  Free-Format Fortran Source File 
!  Generated by PGI Visual Fortran(R)
!  11/22/2019 12:43:28 PM
!

program ex_2
implicit none
integer::i=720
real::sum_temp=0,sum_speed=0,avg_temp,avg_speed
real::min_temp,min_speed
real::max_temp,max_speed
integer,dimension(720)::place
integer,dimension(720)::year
integer,dimension(720)::month
integer,dimension(720)::day
integer,dimension(720)::time
real,dimension(720)::temp
real,dimension(720)::loc
real,dimension(720)::speed
open(11,file='C:\Users\user\Desktop\159_2013_09.txt')
do i=1,720
 read(11,*) place(i),year(i),month(i),day(i),time(i),temp(i),loc(i),speed(i)
enddo
do i=1,720
 sum_temp=sum_temp+temp(i)
 avg_temp=sum_temp/720
enddo
do i=1,720
 sum_speed=sum_speed+speed(i)
 avg_speed=sum_speed/720
enddo
min_temp=minval(temp)
min_temp=minval(speed)
max_speed=maxval(temp)
max_speed=maxval(speed)
print*,"       Temperature     Wind speed"
print*,"Avg. ", avg_temp, avg_speed
print*,"Min. ", min_temp, min_speed
print*,"Max. ", max_temp, max_speed 
end program ex_2
