%dw 2.0
import * from dw::core::Strings
output application/json
---
payload.message1 levenshteinDistance  payload.message2

//Returns the Levenshtein distance (or edit distance) between two strings
