# BrainfuckMinifier
Minifies brainfuck scripts, written in brainfuck

I am really sorry for comments missing commas, but as you know... It's "read char" OPcode

###### Why is there so much space in the cells of the main array?
At first I had different kind of solution in mind, current solution does not require null -cell at all and I think we could drop tmp1 if we temporarily use okchrflag when copying the character to tmp0 without losing it from chr

###### This does weird stuff, why?
It will calculate the length of inputted characters aswell, will not work on 8-bit interpreters if length exceeds 255 characters and I think the reason is obvious
