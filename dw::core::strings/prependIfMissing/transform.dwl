%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "string1" : prependIfMissing(payload.string1,payload.string2),
    "string2" : prependIfMissing(payload.string3,payload.string4)
}

//Prepends the prefix to the beginning of the string if the text does not already start with that prefix.
