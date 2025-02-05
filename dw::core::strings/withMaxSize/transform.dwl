%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "string1": payload.string1 withMaxSize  10,
    "string2" : payload.string2 withMaxSize  2,
    "string3" : payload.string3 withMaxSize  2,
    "string4" : payload.string4 withMaxSize  1
}

//hecks that the string length is no larger than the specified maxLength
