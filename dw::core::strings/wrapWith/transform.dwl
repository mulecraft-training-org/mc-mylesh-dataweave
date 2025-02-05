%dw 2.0
import * from dw::core::Strings
output application/json
---
payload mapObject ((value, key) -> (key):wrapWith(value,"--"))

//Wraps the specified text with the given 'string'
