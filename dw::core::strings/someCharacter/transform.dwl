%dw 2.0
import * from dw::core::Strings
output application/json
---
payload.message someCharacter ((cha) -> isUpperCase(cha))

//Checks whether a condition is valid for at least one of the characters or blank spaces in a string.
