%dw 2.0
import * from dw::core::Strings
output application/json
---
payload map ((item, index) -> item mapObject ((value, key, index) -> ("user" ++ index+1): value ))
