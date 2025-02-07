%dw 2.0
output application/json
---
((payload.placedDate splitBy ' ' [0])[0]) as Date as String {format:"MM/dd/yyy"}

//Date format
