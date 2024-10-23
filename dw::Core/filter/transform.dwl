%dw 2.0
output application/json
// fun add(num1,num2) =num1+num2
---
payload.details filter ((value, index) -> value.age > 20)
