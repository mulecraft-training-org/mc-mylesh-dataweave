%dw 2.0
import * from dw::core::Strings
output application/json
---
payload.message countCharactersBy isLowerCase($)

//Counts the number of times an expression that iterates through each character in a string returns 'true'
