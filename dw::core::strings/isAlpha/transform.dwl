%dw 2.0
import * from dw::core::Strings
output application/json
---
payload mapObject ((value, key) -> (key) : isAlpha(value) )

//Checks if the text contains only Unicode digits. A decimal point is not a Unicode digit and returns false.
