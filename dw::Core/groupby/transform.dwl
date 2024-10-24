%dw 2.0
output application/json
---
payload groupBy ((item, index) -> item.name)
