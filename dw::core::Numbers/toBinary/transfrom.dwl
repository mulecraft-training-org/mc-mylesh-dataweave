%dw 2.0
import * from dw::core::Numbers
output application/json
---
toBinary(payload.number)

//we can't change the String into Binary
//The number should not start with '0'
