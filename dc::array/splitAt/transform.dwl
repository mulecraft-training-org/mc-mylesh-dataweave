%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload splitAt  1

//it will split by the position of the elements '1'
