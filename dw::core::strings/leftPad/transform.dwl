%dw 2.0
import * from dw::core::Strings
output application/json
---
leftPad(payload.message,14)

//Returns left-padded String or original String if no padding is necessary.
