%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload takeWhile $ <=2 

//Selects elements from the array while the condition is met but stops the selection process when it reaches an element that fails to satisfy the condition.  
