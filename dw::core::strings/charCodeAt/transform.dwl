%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "Message1" : charCodeAt(payload.message1,0),
    "Message2" : charCodeAt(payload.message2,2)
}

//Returns the Unicode for a character at the specified index
