%dw 2.0
output application/json
---
"valuesOf" : ( valuesOf(payload))

//Returns an array of the values from key-value pairs in an object.
