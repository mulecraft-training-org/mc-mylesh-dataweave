%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload splitWhere ((item) -> item == 2 )

//Splits an array into two at the first position where the condition is met
