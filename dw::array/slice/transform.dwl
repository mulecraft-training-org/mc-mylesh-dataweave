%dw 2.0
import * from dw::core::Arrays
output application/json
---
slice(payload,0,2)

//0 - index of the starting element 
//2 - position of the ending element
