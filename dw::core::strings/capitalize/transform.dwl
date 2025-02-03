%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "Message1" : capitalize(payload.message1),
    "Message2" : capitalize(payload.message2)
}

//The function treats every non-alphabetic character as a separator and replaces underscores with spaces.
