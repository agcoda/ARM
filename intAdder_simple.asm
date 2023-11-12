//Gauf, Alex 11/8/23

//simpler approach that works on OakSim just fine

//Using ARM Assembly Language, write a program to carry out the addition 
//of all integers between 1 and 100. (1 + 2 + 3 + 4 + 5… + 98 + 99 + 100). 
//Store the result in any appropriate register.

//init a register to the value 0 as sum

//    R4 = start
//    R5 = end
MAIN:
    MOV R4, #1      //set this for sum start
    MOV R5, #101    //set this for sum end
   
    MOV R0, #0      //init total to 0
    MOV R1, R4      //set incrementer at the start
WHILE:
    CMP R5, R1      //i = end?
    BEQ DONE        //if i = end exit loop
    add R0, R0, R1  //add i to total
    add R1, R1, #1  //increment i
    B WHILE         //loop
DONE:
    MOV R6, R0      //place final total in R6.
	
