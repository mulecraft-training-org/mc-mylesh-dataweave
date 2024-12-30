%dw 2.0
output application/json
---
trim(payload.message) 

//Removes any blank spaces from the beginning and end of a string but not in middle of the string
