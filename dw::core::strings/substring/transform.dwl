%dw 2.0
import * from dw::core::Strings
output application/json
---
substring(payload.string,0,5)

//It will return the substring based on 'from' and 'until'
