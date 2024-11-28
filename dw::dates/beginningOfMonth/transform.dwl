%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    "BeginningOfMonth" : atBeginningOfMonth(payload.dataTime)
}
