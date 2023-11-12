--Alexander Gauf 11/11/23
Simple excersize in ARM assembly to demo functionality of an int adder

intAdder implements function to perform the add and total but does not function on OakSim, it hangs on the BL call and I'm unsure why.
It functions properly on https://cpulator.01xz.net/?sys=arm though so I'm not sure if its just a bug in OakSim.

intAdder_simple works properly on OakSim if that's the way you're testing for grade.

Support
intAdder_simple_OakSimMid.png shows process at a mid point when the incrementer is at 31 and the total sum so far is 465.

intAdder_simple_OakSimEnd.png shows the end once the incrementer is at 101 and the final sum value of 5050 is stored in R6 (and R0).

Similarly 
intAdder_cpulator_mid.png shows a capture after a few iterations when the incrementer is at 6 and the sum is 1+2+3+4+5 = 15

intAdder_cpulator_end.png shows a capture after completion when the sum 5050 is being stored into memory

