%dw 2.0
import * from dw::core::Strings
output application/json
---
payload.message last 3

//Returns characters from the end of string to a specified number of characters,
