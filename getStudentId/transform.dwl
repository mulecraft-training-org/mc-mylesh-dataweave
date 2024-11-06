%dw 2.0
output application/json
---
payload map ( 
    {
        "studentId": $,
        "status": "201",
        "response": "student details created"
    }
 )
