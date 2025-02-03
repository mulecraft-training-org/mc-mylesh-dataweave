%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "Message1" : camelize(payload.message1),
    "Message2" : camelize(payload.message2)
}

//It will change the underscores into camel case
