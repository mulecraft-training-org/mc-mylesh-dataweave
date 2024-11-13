%dw 2.0
import * from dw::core::Arrays
output application/json
---

take( payload,2 )

//Selects the first n elements. 
//It returns an empty array when n <= 0 and the original array when n > sizeOf(array).  
