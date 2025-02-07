%dw 2.0
output application/json
---
payload.Date map ((item, index) -> "Date": item ) reduce ($++$$)
