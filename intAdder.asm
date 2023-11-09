;Gauf, Alex 11/8/23

;Using ARM Assembly Language, write a program to carry out the addition 
;of all integers between 1 and 100. (1 + 2 + 3 + 4 + 5… + 98 + 99 + 100). 
;Store the result in any appropriate register.

;init a register to the value 0 as sum

;    R0 = start
;    R1 = end
MAIN
    MOV R0, #1      ;set this for sum start
    MOV R1, #101    ;set this for sum end
    BL SUMOFINTS

SUMOFINTS
;    R4 = total
;    R5 = i
;add the adder to the sum then incremement the adder by 1
;repeat to i=end
    MOV R4, #0      ;init total to 0
    MOV R5, R0      ;set incrementer at the start
WHILE
    CMP R5, R1      ;i = end?
    BEQ DONE        ;if i = end exit loop
    add R4, R4, R5  ;add i to total
    add R5, R5, #1  ;increment i
    B WHILE         ;loop
DONE
    MOV R0, R4      ;return total
    MOV PC, LR
