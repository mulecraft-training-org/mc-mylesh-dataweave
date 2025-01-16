%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload firstWith ((item, index) -> item.age == 22 )

//Returns the first element that satisfies the condition, or returns null if no element meets the condition
