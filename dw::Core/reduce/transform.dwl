%dw 2.0
output application/json
---
{
    "Total" : payload.number reduce ((item,acc) -> item + acc),
    "Add" : payload.number reduce ((item,acc) -> item ++ acc),
    "String" : payload.string  reduce ((item, acc="") -> item ++ acc )
}
