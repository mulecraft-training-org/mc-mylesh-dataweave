%dw 2.0
output application/json
---
payload map({
    "Name" : $.name,
    "Age" : $.age,
    "City" : $.city
})
