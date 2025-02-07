%dw 2.0
output application/json
---
payload maxBy ((item) -> item.Marks)

//Filter greatest mark
