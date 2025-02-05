%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "string1" : substringBefore(payload.string,"l"),
    "string2" : substringBefore(payload.string,"")
}

//Gets the substring before the first occurrence of a separator
