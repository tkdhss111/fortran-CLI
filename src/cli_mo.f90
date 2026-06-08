! Thin CLI wrapper. Same pattern as tkd-02-denki-yoho/app/cli_mo.f90 — copy
! that module here if heavy parsing is needed. For the v1 scaffold a minimal
! version suffices because the only argument is --output_dir.

module cli_mo

  implicit none

  type cli_option_ty
    character(64)  :: name    = ''
    logical        :: has_arg = .false.
    character(255) :: help    = ''
    character(255) :: value   = ''
  end type

  type cli_ty
    character(255)         :: title     = ''
    character(255)         :: exe       = ''
    character(255)         :: author    = ''
    character(255)         :: copyright = ''
    character(64)          :: version   = ''
    character(255)         :: usage(20) = ''
    ! Options registered in main.f90 — bump the array size if you add more.
    type(cli_option_ty)    :: options(16)
  contains
    procedure :: parse   => cli_parse
    procedure :: get_arg => cli_get_arg
  end type

contains

  subroutine cli_parse ( this )
    class(cli_ty), intent(inout) :: this
    integer :: i, j, nargs
    character(255) :: tok
    nargs = command_argument_count()
    i = 1
    do while ( i <= nargs )
      call get_command_argument( i, tok )
      do j = 1, size(this%options)
        if ( trim(tok) == trim(this%options(j)%name) ) then
          if ( this%options(j)%has_arg .and. i + 1 <= nargs ) then
            i = i + 1
            call get_command_argument( i, this%options(j)%value )
          else
            this%options(j)%value = 'T'   ! flag-style
          end if
          exit
        end if
      end do
      i = i + 1
    end do
  end subroutine

  subroutine cli_get_arg ( this, name, value )
    class(cli_ty), intent(in)  :: this
    character(*),  intent(in)  :: name
    character(*),  intent(out) :: value
    integer :: j
    value = ''
    do j = 1, size(this%options)
      if ( trim(this%options(j)%name) == trim(name) ) then
        value = trim(this%options(j)%value)
        return
      end if
    end do
  end subroutine

end module
