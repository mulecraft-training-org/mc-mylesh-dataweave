%dw 2.0
output application/json
---
{
    "type1" : typeOf(payload.type1),
    "type2" : typeOf(payload.type2),
    "type3" : typeOf(payload.type3),
    "type4" : typeOf(payload.type4),
    "type5" : typeOf(payload.type5)
}
