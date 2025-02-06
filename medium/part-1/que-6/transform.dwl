%dw 2.0
output application/json
---
payload map ((item) ->"num" : item.num [-1 to -3] [-1 to 0])

//last three string
