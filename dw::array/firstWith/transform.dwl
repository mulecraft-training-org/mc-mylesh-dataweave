%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload firstWith ((item)-> item.age > 20)

//Returns the first element that satisfies the condition
