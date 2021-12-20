module DA
    implicit none
    
       contains      
    
       subroutine Declination_angle(D,A)
            implicit none   
            real, intent(in)  :: D
            real, intent(out)    :: A
            real                 :: pi

            pi = 3.1415926
            
            A = asin(sin(-23.44*pi/180)*cos((360/365.24*(D+10)+360*0.0167*sin(360*(D-2)/365.24)/pi) * pi / 180.))* 180. / pi


        print*, "DA is", A          
 
       end subroutine Declination_angle 
       
    end module DA