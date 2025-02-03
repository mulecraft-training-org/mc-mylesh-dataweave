%dw 2.0
import * from dw::core::Strings
output application/json
---
payload mapObject ((value, key) -> (key):dasherize(value))

//Replaces spaces, underscores, and camel-casing in a string with dashes '-'
