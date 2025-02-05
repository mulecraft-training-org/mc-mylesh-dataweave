%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "string1" : payload.string1 wrapIfMissing  "-",
    "string2" : payload.string1 wrapIfMissing  "/"
}

//Wraps text with wrapper if that wrapper is missing from the start or end of the given string.
