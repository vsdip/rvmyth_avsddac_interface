# rvmyth_avsddac_interface

*The purpose of this project is to integrate rvmyth (RISK-V) with digital to analog converter (DAC) using end-to-end open-source EDA tools. To achieve this, firstly we will need to generate a verilog module for DAC and obtain the analog output reciprocation for some arbitrary digital inputs to test it. Later we will give the digital output of rvmyth to the 10-bit DAC by creating an interface between the two analog and digital blocks.*

#### Required Tools


`iverilog` and   `gtkwave`

### Problem Statement 
--------------------------
![image](https://user-images.githubusercontent.com/79994584/117536647-d9d1ac00-b019-11eb-9966-b78a4b1a6adf.png)


### DAC Specs Provided 
------------------------
![image](https://user-images.githubusercontent.com/79994584/117536828-f7ebdc00-b01a-11eb-9067-b16839c3d939.png)


## Steps to be followed 

1. Install iverilog and gtkwave
2. Simulate rvmyth using the following steps:
     1. git clone https://github.com/kunalg123/rvmyth/
     2. cd rvmyth
     3. iverilog mythcore_test.v tb_mythcore_test.v
     4. ./a.out
     5. gtkwave tb_mythcore_test.vcd
  
 *10-bit digital codes observed at the output of rvmyth.*
 
3. Design the 10-bit DAC using the given specs in verilog and test for its correct functionality.
4. Finally integrate both rvymth and DAC using a Top level module. 


