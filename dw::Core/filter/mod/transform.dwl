%dw 2.0
output application/json
// fun add(num1,num2) =num1+num2
---
payload.name  filter ($$ mod 2) == 0
