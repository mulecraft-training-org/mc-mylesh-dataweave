%dw 2.0
import * from dw::core::Strings
output application/json
---
words(payload.string)

//Separators between words include blank spaces, new lines, and tabs in 'Array'
