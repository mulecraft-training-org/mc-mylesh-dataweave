%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "Message1" : charCode(payload.message1),
    "Message2" : charCode(payload.message2)
}

//Returns the Unicode for the first character in an input string
