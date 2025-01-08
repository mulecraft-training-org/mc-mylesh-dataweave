%dw 2.0
import * from dw::core::Arrays
output application/json
---
drop (payload,4)

//it will drop the data from the array 
