%dw 2.0
import * from dw::core::Strings
output application/json
---
payload.message everyCharacter isAlpha($)

//Checks whether a condition is valid for every character in a string.
