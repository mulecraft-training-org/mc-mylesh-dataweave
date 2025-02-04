%dw 2.0
import * from dw::core::Strings
output application/json
---
payload mapObject ((value, key) -> (key) : ordinalize(value))

//Returns a number as an ordinal
