%dw 2.0
output application/json

---
((payload.placedDate splitBy  ' ' )[0]) as Date {format: "yyyy-MM-dd"} as String {format: "MM/dd/yyy"}
