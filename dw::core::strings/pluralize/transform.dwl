%dw 2.0
import * from dw::core::Strings
output application/json
---
payload mapObject ((value, key) -> (key): pluralize(value) )

//Pluralizes a singular string.
