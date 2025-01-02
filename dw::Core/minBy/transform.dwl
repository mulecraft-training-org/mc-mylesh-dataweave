%dw 2.0
output application/json
---
payload minBy ((item) -> item.age)

//It returns the who has minimum age
