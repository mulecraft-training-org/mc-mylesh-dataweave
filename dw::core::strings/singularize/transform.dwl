%dw 2.0
import * from dw::core::Strings
output application/json
---
payload mapObject ((value, key) ->(key): singularize(value))

//Converts a plural string to its singular form.
