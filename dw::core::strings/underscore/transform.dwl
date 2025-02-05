%dw 2.0
import * from dw::core::Strings
output application/json
---
payload mapObject ((value, key) ->(key):underscore(value))

//Replaces hyphens, spaces, and camel-casing in a string with underscores
