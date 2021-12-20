module SHA

    implicit none
    
        contains
    
            subroutine solar_hour_angle(LST,h)
            real, intent(in)    :: LST
            real, intent(out)   :: h
            
            h = 15*(LST-12)
            print*, 'SHA is : ', h
            
            end subroutine solar_hour_angle
    
    end module SHA
    

    gfortran Solar_elevation_angle.f90 -o Solar_elevation_angle.x -L. -lsolar