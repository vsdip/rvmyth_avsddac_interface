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


## Steps to follow

1. Install iverilog and gtkwave
2. Simulate rvmyth using the following steps:
     1. git clone https://github.com/kunalg123/rvmyth/
     2. cd rvmyth
     3. iverilog mythcore_test.v tb_mythcore_test.v
     4. ./a.out
     5. gtkwave tb_mythcore_test.vcd
  
 *10-bit digital codes observed at the output of rvmyth.*
 
 ![image](https://user-images.githubusercontent.com/79994584/117537386-2ae39f00-b01e-11eb-9071-e9a1540a462c.png)

 
3. Design the 10-bit DAC using the given specs in verilog and test for its correct functionality.

![image](https://user-images.githubusercontent.com/79994584/117537805-eefe0900-b020-11eb-98cf-b8c37126ec0f.png)


![image](https://user-images.githubusercontent.com/79994584/117537959-a6931b00-b021-11eb-8b31-f6ec641c4e73.png)


**DAC Output in Analog Step format:**

![image](https://user-images.githubusercontent.com/79994584/117538115-3df86e00-b022-11eb-93e9-2d9b1af04d0a.png)


![image](https://user-images.githubusercontent.com/79994584/117538118-4486e580-b022-11eb-90b8-e85a92195999.png)


4. Finally integrate both rvymth and DAC using a Top level module. 


![image](https://user-images.githubusercontent.com/79994584/117537395-3636ca80-b01e-11eb-8721-a4b39af912d5.png)







