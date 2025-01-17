%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload dropWhile ((item) -> item < 2)

//It will drop the element by the condition
