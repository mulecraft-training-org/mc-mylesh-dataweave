%dw 2.0
import * from dw::core::Strings
output application/json
---
payload.message mapString ((cha) -> cha++" ")

// Applies an expression to every character of a string.
