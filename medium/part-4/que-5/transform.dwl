%dw 2.0
import * from dw::core::Strings
output application/json
---
// payload unwrap ''
// payload replace  /\"/ with ""
payload replace /\D+/ with ""
