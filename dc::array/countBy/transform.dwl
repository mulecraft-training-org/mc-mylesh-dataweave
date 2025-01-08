%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload countBy (($ mod 2) != 0) 

//returns the count of results true
