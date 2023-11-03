#Makefile
COMMON_PATH = ..\code
C_FILE = c\function.c
SV_FILE = verilog\file.sv


run1:
	qverilog $(COMMON_PATH)\01_simple_sv2c\$(C_FILE) $(COMMON_PATH)\01_simple_sv2c\$(SV_FILE)
  
run3:
	qverilog $(COMMON_PATH)\03_simple_sv2c_array_input\$(C_FILE) $(COMMON_PATH)\03_simple_sv2c_array_input\$(SV_FILE)
  
#error
run4:
	qverilog $(COMMON_PATH)\04_simple_sv2c_array_output\$(C_FILE) $(COMMON_PATH)\04_simple_sv2c_array_output\$(SV_FILE)
  
run5:
	qverilog $(COMMON_PATH)\05_simple_sv2c_struct_input\$(C_FILE) $(COMMON_PATH)\05_simple_sv2c_struct_input\$(SV_FILE)

run6:
	qverilog $(COMMON_PATH)\06_simple_sv2c_struct_output\$(C_FILE) $(COMMON_PATH)\06_simple_sv2c_struct_output\$(SV_FILE)
  
#error
c2sv:
	qverilog $(COMMON_PATH)\50_simple_c2sv\$(C_FILE) $(COMMON_PATH)\50_simple_c2sv\$(SV_FILE)


regress:  run1 run3 run4  run5 c2sv