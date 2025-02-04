%dw 2.0
import * from  dw::core::Strings
output application/json
---
{
    "output1" : repeat(payload.string,2),
    "output2" : repeat(payload.string,-2)
}

//Repeats a text the number of specified times if it is in negative empty string
