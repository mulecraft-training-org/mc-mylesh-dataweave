%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload splitAt(2)

//It will split by the given position
