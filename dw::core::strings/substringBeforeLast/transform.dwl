%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "string1" : substringBeforeLast(payload.string,"l"),
    "string2" : substringBeforeLast(payload.string,"")
}

//Gets the substring before the last occurrence of a separator
