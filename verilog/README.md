# rvmyth
Tools needed to simulate rvmyth
1) iverilog
2) gtkwave

Steps to simulate rvmyth
1) git clone https://github.com/kunalg123/rvmyth/
2) cd rvmyth
3) iverilog mythcore_test.v tb_mythcore_test.v
4) ./a.out
5) gtkwave tb_mythcore_test.vcd
