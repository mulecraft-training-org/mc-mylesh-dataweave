%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "Append1" : appendIfMissing(payload.message1,payload.message2),
    "Append2" : appendIfMissing(payload.message3,payload.message4)
}

//It will work as if the 'suffix' of the world is present it will not append otherwise it will append
