! ============================================================================
!  Program:     AMRClaw
!  File:        init_alloc.f90
!  Created:     2009-01-21
!  Author:      Kyle Mandli and Marsha Berger
! ============================================================================
!  Description:  Initialization of alloc storage
! ============================================================================


      subroutine init_alloc()
    
      use amr_module
      implicit none

       if (.not.allocated(alloc)) then
!          memsize = 5e10
          memsize = 5e6
          allocate(alloc(memsize))
          print *, "Storage allocated..."
      else
          print *, "Storage already allocated!"
      endif
    
      end subroutine init_alloc

