program Solar_elevation_angle

    use DA
    use SHA
    
    implicit none
    real                 :: pi
    real :: d, h, A, LST, SEA, lat
    integer,dimension(12) :: months_num, months_num2
    integer :: mon,day,year

    pi        =  3.14
    months_num      = (/31,28,31,30,31,30,31,31,30,31,30,31/)
    months_num2 = (/31,29,31,30,31,30,31,31,30,31,30,31/)

    year = 2021
    mon  = 12
    day  = 31

    if (mod(year,4)==0) then
      d = 366-sum(months_num2(mon:))+day
    else
      d = 365-sum(months_num(mon:))+day
    endif
    
    print*,'DAY_num: ', d 

    LST = 10.53 
  
    D=d+LST/24
    call Declination_angle(D,A)
    call solar_hour_angle(LST,h)
    
    if (A < 0) then
        A=-A
      endif


    lat = 22.54

    SEA = 180-asin(sin(lat*pi/360)*sin(A*pi/360)+cos(lat*pi/360)*cos(A*pi/360)*cos(h*pi/360))*360/pi
    
    print*,'SEA: ', SEA



    end
