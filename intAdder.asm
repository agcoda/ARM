//Gauf, Alex 11/8/23
//Last edit 11/11/23 -agauf

//This code runs fine on https://cpulator.01xz.net/?sys=arm but not on Oaksim
//Unsure why but couldn't get BL to work in oaksim

//Using ARM Assembly Language, write a program to carry out the addition 
//of all integers between 1 and 100. (1 + 2 + 3 + 4 + 5… + 98 + 99 + 100). 
//Store the result in any appropriate register.

//init a register to the value 0 as sum

//    R4 = start
//    R5 = end
MAIN:
    MOV R4, #1          //set this for sum start
    MOV R5, #101        //set this for sum end
    BL SUMOFINTS        // OakSim would hang here instead of continuing
    STR R0, [R6, #0x40] //store at R6+64 to end

SUMOFINTS:
//uses R4, R5, store on stack
    PUSH {R4, R5}   //push on stack

//    R0 = total
//    R1 = i
//add the adder to the sum then incremement the adder by 1
//repeat to i=end
    MOV R0, #0      //init total to 0
    MOV R1, R4      //set incrementer at the start
WHILE:
    CMP R5, R1      //i = end?
    BEQ DONE        //if i = end exit loop
    add R0, R0, R1  //add i to total
    add R1, R1, #1  //increment i
    B WHILE         //loop
DONE:
    //MOV R0, R0    //total in R0 so good to go

// restore regs and deallocate stack
    POP {R4, R5}    //pop off stack
    MOV PC, LR      //return
