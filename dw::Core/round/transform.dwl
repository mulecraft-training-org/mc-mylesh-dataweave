%dw 2.0
output application/json
---
payload map({
    Number : round($.number)
})

//This example rounds decimal numbers to the nearest whole numbers.
