%dw 2.0
import * from dw::core::Strings
output application/json
---
payload.AU groupBy ((item, index) -> substringAfter(item,"-")[0 to 3])
//or//
// payload.AU groupBy ((item, index) -> ((item splitBy  "-")[1]) first  4)
