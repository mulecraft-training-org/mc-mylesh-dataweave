%dw 2.0
import * from dw::core::Arrays
output application/json
---
{
    "array1" : payload.array1 every ((item) -> isOdd(item) ),
    "array2" : payload.array2 every ((item) -> isEven(item) )
}

//Returns true if every element in the array matches the condition
