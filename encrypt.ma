[top]
components : encrypt

[encrypt]
type : cell
width : 20
height : 20
delay : transport
defaultDelayTime : 100
border : nowrapped 
neighbors : encrypt(-1,-1) encrypt(-1,1) encrypt(0,0) 
initialvalue : 0


initialrowvalue :  0     01011001110001111010
initialrowvalue :  1     32222222222222222223



localtransition : encrypt-rule


[encrypt-rule]
rule : 1 100 { (0,0) = 1 } 
rule : 0 100 { (0,0) = 3 } 
rule : 2 100 { (-1,-1) = 2 or (-1,1) = 2 } 
rule : 1 100 { (0,0) = 2 and (-1,-1) = 1 and (-1,1) = 1 } 
rule : 1 100 { (0,0) = 2 and (-1,-1) = 0 and (-1,1) = 0 } 
rule : 0 100 { t } 