%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload countBy (($ mod 2) == 0) 

//Counts the elements in an array that return true
