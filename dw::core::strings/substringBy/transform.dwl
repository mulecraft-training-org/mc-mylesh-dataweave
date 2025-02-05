%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    "string1" : payload.string substringBy ((cha) -> cha =="~" or cha =="="  or cha =='_' or cha =='-' )
}

//Splits a string at each character where the 'predicate' expression returns 'true' in 'Array'
