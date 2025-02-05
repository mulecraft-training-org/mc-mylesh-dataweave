%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "string1" : substringEvery(payload.string,3)
}

//Splits a string into an array of substrings equal to a specified length
