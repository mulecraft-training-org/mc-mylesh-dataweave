%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload dropWhile ((item) -> item < 3 ) 

//It will drop the array by the condition 
