%dw 2.0
import * from dw::core::Strings
output application/json
---
replaceAll(payload.message,"He","hi")

//Replaces all substrings that match a literal search string with a specified replacement string.
