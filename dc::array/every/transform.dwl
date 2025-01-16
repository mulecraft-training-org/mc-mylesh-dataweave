%dw 2.0
import * from dw::core::Arrays
output application/json
---
{
    "array1" : payload.array1 every (($ mod 2)==0),
    "array2" : payload.array2 every ($==1 ),
    "array3" : payload.array3 every (($ mod 2) == 0 )
}

//Returns true if every element in the array matches the condition
