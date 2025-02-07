%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload.CreditCard replace  /[0-9]/ with "*" 
