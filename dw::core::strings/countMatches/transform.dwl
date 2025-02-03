%dw 2.0
import * from dw::core::Strings
output application/json
---
payload.message countMatches  "l"

//Counts the number of matches in a string
