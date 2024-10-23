# fortran-CLI

A Simple Command Line Interface for Fortran

'''
Start testing: Oct 23 21:18 JST
----------------------------------------------------------
1/1 Testing: unit_test
1/1 Test: unit_test
Command: "/home/hss/0_tkd/1_hss/2_tools/fortran-CLI/build/test/unit_test" "--wd" "./data" "--ind" "1" "--coef" "2.3" "--is_ok" "F"
Directory: /home/hss/0_tkd/1_hss/2_tools/fortran-CLI/build/test
"unit_test" start time: Oct 23 21:18 JST
Output:
----------------------------------------------------------
Arg 1: ./data
Arg 2: 1
Arg 3: 2.29999995
Arg 4: F
 Program name: my_app
 Number of command arguments:            4
 Present working directory: /home/hss/0_tkd/1_hss/2_tools/fortran-CLI/build
 wd: ./data
 ind:            1
 coef:    2.29999995    
 is_ok:  F
 ~~~~~~~~~~~~ Help ~~~~~~~~~~~~~~~

================================================================================
Program for Doing Something
--------------------------------------------------------------------------------
 Usage: my_app [OPTIONS]
 
 Example: my_app --wd ./data
                              --ind 1
                              --coef 2.2
                              --is_ok T
 
 Program Options:
   --wd    followed by path of working directory
   --ind   followed by index number
   --coef  followed by coefficient
   --is_ok followed by logical value
 
   -v, --version print version information and exit
   -h, --help    print usage information and exit
================================================================================
 ~~~~~~~~~~~~ Version  ~~~~~~~~~~~~~~~
================================================================================
Executable file: my_app
Version 1.0
Created by Firstname Lastname
2024 Copyright(C) All Rights Reserved.
================================================================================
2024-10-23 21:18
<end of output>
Test time =   0.01 sec
----------------------------------------------------------
Test Passed.
"unit_test" end time: Oct 23 21:18 JST
"unit_test" time elapsed: 00:00:00
----------------------------------------------------------

End testing: Oct 23 21:18 JST
'''
