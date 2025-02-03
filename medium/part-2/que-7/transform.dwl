%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "ASCII Value" : charCode(payload."ASCII Value"),
    "Char at ASCII" : fromCharCode(payload."Char at ASCII")
}
