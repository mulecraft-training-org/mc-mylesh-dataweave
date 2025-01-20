%dw 2.0
import * from dw::core::Arrays
output application/json
---
{
    "array1" : payload.array1 some (($ mod 2) ==0),
    "array2" : payload.array2 some (isEven($)),
    "array3" : payload.array3 some ($ > 10)
}

//Returns true if at least one element in the array matches the specified condition
