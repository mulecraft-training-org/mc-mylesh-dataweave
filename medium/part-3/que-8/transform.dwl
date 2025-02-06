%dw 2.0
import * from dw::core::Strings
output application/json
---
// (payload.string splitBy  /\D+/ joinBy  "") splitBy  ""
//or//
(payload.string splitBy ('')) filter (isNumeric($)==true)
