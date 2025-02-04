%dw 2.0
import * from dw::core::Strings
output application/json
---
remove(payload.message,"l")

//Removes all occurrences of a specified 'String'
