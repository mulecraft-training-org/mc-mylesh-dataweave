%dw 2.0
output application/json
// [
//   {
//     "EmpName": "123",
//     "BossName": "456"
//   },
//   {
//     "EmpName": "345",
//     "BossName": "789"
//   },
//   {
//     "EmpName": "456",
//     "BossName": "345"
//   },
//   {
//     "EmpName": "789",
//     "BossName": "456"
//   }
// ]
---
payload map(item, index)->{
"EmpName": item.name,
"BossName": (payload filter $.ID == item.bossID).name[0]
}
