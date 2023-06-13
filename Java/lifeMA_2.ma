[top]
components : life
out : output1 output2 output3 output4 output5 output6 output7 output8 output9 output10 output11 output12 output13 output14 output15 output16
link : out1@life output1
link : out2@life output2
link : out3@life output3
link : out4@life output4
link : out5@life output5
link : out6@life output6
link : out7@life output7
link : out8@life output8
link : out9@life output9
link : out10@life output10
link : out11@life output11
link : out12@life output12
link : out13@life output13
link : out14@life output14
link : out15@life output15
link : out16@life output16

[life]
out : out1 out2 out3 out4 out5 out6 out7 out8 out9 out10 out11 out12 out13 out14 out15 out16
link : out@life(15,0) out1
link : out@life(15,1) out2
link : out@life(15,2) out3
link : out@life(15,3) out4
link : out@life(15,4) out5
link : out@life(15,5) out6
link : out@life(15,6) out7
link : out@life(15,7) out8
link : out@life(15,8) out9
link : out@life(15,9) out10
link : out@life(15,10) out11
link : out@life(15,11) out12
link : out@life(15,12) out13
link : out@life(15,13) out14
link : out@life(15,14) out15
link : out@life(15,15) out16
type : cell
width : 16
height : 16
delay : transport
defaultDelayTime : 100
border : wrapped 
neighbors : life(-1,-1) life(-1,0) life(-1,1) 
neighbors : life(0,-1)  life(0,0)  life(0,1)
neighbors : life(1,-1)  life(1,0)  life(1,1)
initialvalue : 0
initialrowvalue :  0     1011100100000011
initialrowvalue :  1     0011110010010100
initialrowvalue :  2     0010010111010000
initialrowvalue :  3     0010010010011110
initialrowvalue :  4     0011011000001010
initialrowvalue :  5     1001100111011100
initialrowvalue :  6     1010010010010000
initialrowvalue :  7     0001110101000000
initialrowvalue :  8     0000011101111010
initialrowvalue :  9     0011000111000010
initialrowvalue :  10    0010000111001000
initialrowvalue :  11    1011001010111000
initialrowvalue :  12    0100010111010001
initialrowvalue :  13    0110001001001001
initialrowvalue :  14    0110011101111000
initialrowvalue :  15    0010000111000100
localtransition : life-rule


[life-rule]
rule : 1 100 { (0,0) = 1 and (trueCount = 3 or trueCount = 4 )} 
rule : 1 100 { (0,0) = 0 and trueCount = 3 } 
rule : 0 100 { t } 