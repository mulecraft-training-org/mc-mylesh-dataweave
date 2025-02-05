%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "string1" : substringAfter(payload.string,"W"),
    "string2" : substringAfter(payload.string,"p"),
    "string3" : substringAfter(payload.string,"")
}

//Gets the substring after the first occurrence of a separator
//If separator is not there it will return the empty 
