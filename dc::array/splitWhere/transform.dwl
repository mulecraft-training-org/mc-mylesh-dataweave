%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload splitWhere (item) -> item endsWith   "m"

//which are the values endsWith 'm' that are comes in rightCriteria 'r', remaining will come in leftCriteria
