%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload partition ((item) -> isEven(item))

//Separates the array into the elements that satisfy the condition in 'success' and 'failure'
