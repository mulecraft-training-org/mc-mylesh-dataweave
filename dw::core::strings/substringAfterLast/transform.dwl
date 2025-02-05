%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "string1" : substringAfterLast(payload.string,"l"),
    "string2" : substringAfterLast(payload.string,"")
}

//Gets the substring after the last occurrence of a separator
