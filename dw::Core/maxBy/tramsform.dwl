%dw 2.0
output application/json
---
payload maxBy ((item) -> item.age)

//It returns the who has maximum age
