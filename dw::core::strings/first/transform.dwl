%dw 2.0
import * from dw::core::Strings
output application/json
---
payload.message first 4

//Returns characters from the beginning of a string to the specified number of characters in the string
