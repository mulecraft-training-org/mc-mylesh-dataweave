%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "message1" : lines(payload.message1),
    "message2" : lines(payload.message2)
}

//Returns an array of lines from a string
