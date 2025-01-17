%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload indexWhere ((item) -> item.age == 22)

//It will return the index based on condition
