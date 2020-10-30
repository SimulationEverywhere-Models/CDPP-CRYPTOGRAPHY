[top]
components : decrypt

[decrypt]
type : cell
width : 20
height : 20
delay : transport
defaultDelayTime : 100
border : nowrapped 
neighbors : decrypt(-1,-1) decrypt(-1,1)
neighbors : decrypt(0,-2) decrypt(0,0) decrypt(0,2)
initialvalue : 0

				         
initialrowvalue :  0     01011010100100100000
initialrowvalue :  1     02222222222222222220
initialrowvalue :  2     02222222222222222220
initialrowvalue :  3     02222222222222222220
initialrowvalue :  4     02222222222222222220
initialrowvalue :  5     02222222222222222220
initialrowvalue :  6     02222222222222222220
initialrowvalue :  7     02222222222222222220
initialrowvalue :  8     02222222222222222220
initialrowvalue :  9     02222222222222222220
initialrowvalue :  10    02222222222222222220
initialrowvalue :  11    02222222222222222220
initialrowvalue :  12    02222222222222222220
initialrowvalue :  13    02222222222222222220
initialrowvalue :  14    02222222222222222220
initialrowvalue :  15    02222222222222222220
initialrowvalue :  16    02222222222222222220
initialrowvalue :  17    02222222222222222220
initialrowvalue :  18    02222222222222222220
initialrowvalue :  19    02222222222222222220


localtransition : decrypt-rule


[decrypt-rule]
rule : 1 100 { (0,0) = 1 }
rule : 0 100 { (0,0) = 0 }
rule : 1 100 { (0,0) = 2 and (-1,-1) = 0 and (0,-2) = 0 }
rule : 0 100 { (0,0) = 2 and (-1,-1) = 0 and (0,-2) = 1 }
rule : 0 100 { (0,0) = 2 and (-1,-1) = 1 and (0,-2) = 0 }
rule : 1 100 { (0,0) = 2 and (-1,-1) = 1 and (0,-2) = 1 }
rule : 1 100 { (0,0) = 2 and (-1,1) = 0 and (0,2) = 0 }
rule : 0 100 { (0,0) = 2 and (-1,1) = 0 and (0,2) = 1 }
rule : 0 100 { (0,0) = 2 and (-1,1) = 1 and (0,2) = 0 }
rule : 1 100 { (0,0) = 2 and (-1,1) = 1 and (0,2) = 1 }
rule : 2 100 { t } 