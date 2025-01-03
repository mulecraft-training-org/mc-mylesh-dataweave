%dw 2.0
output application/json
---
{
    "find-A" : payload lastIndexOf  "a",
    "find-D" : payload lastIndexOf  "d",
}

//It will return the last index of the value 
//If the array does not contain the element it return -1
