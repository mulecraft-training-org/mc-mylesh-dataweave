%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "string1" : payload.string1 unwrap  "-",
    "string2" : payload.string2 unwrap  "/"
}

//Unwraps a given text from a wrapper tex
