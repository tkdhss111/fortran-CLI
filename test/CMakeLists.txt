set ( EXE unit_test )
set ( SRCS ./unit_test.f90
           ../src/cli_mo.f90
    )
set ( ARGS
  --wd "./data"
  --ind 1
  --coef 2.3
  --is_ok F
  )

set ( CMAKE_Fortran_FLAGS
  "-ffree-line-length-none -Wno-maybe-uninitialized -fcoarray=single")
set ( CMAKE_Fortran_FLAGS_DEBUG
  "-Ddebug -O0 -fbounds-check -fbacktrace -Wall" )

add_executable ( ${EXE} ${SRCS} )
add_test ( NAME ${EXE} COMMAND ${EXE} ${ARGS} WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR} )
