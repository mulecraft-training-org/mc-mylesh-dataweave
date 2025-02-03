%dw 2.0
import collapse from dw::core::Strings
output application/json
---
collapse(payload.message)

//Collapses the string into substrings of equal characters.
