%dw 2.0
import * from dw::core::Strings
output application/json
---
payload mapObject ((value, key) ->(key):isNumeric(value))

//Checks if the text contains only Unicode digits.
