%dw 2.0
import * from dw::core::Binaries
output application/json
---
(payload readLinesWith "UTF-8") joinBy  ","
