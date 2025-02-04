%dw 2.0
import * from dw::core::Strings
output application/json
---
payload mapObject ((value, key) ->(key) : reverse(value) )

//Reverses sequence of characters in a string.
