%dw 2.0
import * from dw::core::Binaries
output application/json
---
toBase64(write(payload, "application/json"))
