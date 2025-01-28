%dw 2.0
import * from dw::core::Binaries
output application/json
---
toHex(payload.message)

//in the format of 0-9 and A-F
