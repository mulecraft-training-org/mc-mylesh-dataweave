%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    "BeginningOfHour" : atBeginningOfHour(payload.dataTime)
}