%dw 2.0
output application/json
// fun add(num1,num2) =num1+num2
---
payload.a filter (($ > 2) and ($<5))
