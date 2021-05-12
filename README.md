# rvmyth_avsddac_interface

*The purpose of this project is to integrate rvmyth (RISC-V) with digital to analog converter (DAC) using end-to-end open-source EDA tools. To achieve this, firstly we will need to generate a verilog module for DAC and obtain the analog output reciprocation for some arbitrary digital inputs to test it. Later we will give the digital output of rvmyth to the 10-bit DAC by creating an interface between the two analog and digital blocks.*

#### Required Tools

`iverilog` and  `gtkwave`

### Problem Statement 
--------------------------

![image](https://user-images.githubusercontent.com/79994584/117629161-81281d80-b197-11eb-9843-c091b3c0e576.png)


### DAC Specs Provided 
------------------------

![image](https://user-images.githubusercontent.com/79994584/117629351-b5034300-b197-11eb-91d6-9cf9b3fb74b4.png)


## Steps to follow

1. Install `iverilog` and `gtkwave`
2. Simulate rvmyth using the following steps:
     1. git clone https://github.com/kunalg123/rvmyth/
     2. cd rvmyth
     3. iverilog mythcore_test.v tb_mythcore_test.v
     4. ./a.out
     5. gtkwave tb_mythcore_test.vcd
  
 *10-bit digital codes observed at the output of rvmyth.*
 
 ![](interface/rvmyth.png)

 
3. Design the 10-bit DAC using the given specs in verilog and test for its correct functionality.
/

**DAC Output in Analog Step format:**


![image](https://user-images.githubusercontent.com/79994584/117964966-e0c12d00-b33f-11eb-9079-a90298242154.png)


![image](https://user-images.githubusercontent.com/79994584/117965181-19610680-b340-11eb-969a-e53775460774.png)



4. Finally integrate both rvymth and DAC using a Top level module. 


![](interface/interface.png)


`out [9:0]` --> rvymth 10-bit digital output

`D [9:0]` --> DAC 10-bit digital input 

`Out` --> DAC analog output`







