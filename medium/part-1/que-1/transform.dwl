%dw 2.0
output application/json
---
sizeOf(((payload.string splitBy  /([0-9])/) joinBy  '')splitBy "")

//Count the Number of Characters in a String
