%dw 2.0
import * from dw::core::Strings
output application/json
---
rightPad(payload.message,6)

//The specified text is right-padded to the size using the padText
