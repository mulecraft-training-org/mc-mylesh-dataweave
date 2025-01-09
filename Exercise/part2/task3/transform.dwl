%dw 2.0
output application/json

/* Requirements:
 * Round the premium to the nearest whole number
 * Extract policy number and coverage amount
 * Transform the data structure for output
 *
 * Expected Output:
 * {
 *   "policyId": "INS123456",
 *   "annualPremium": 1200,
 *   "coverageAmount": 100000
 * }
 */
---
payload mapObject ({
    "policyId" : $.policyNumber,
    "annualPremium" : round($.premium),
    "coverageAmount" : $.coverage.amount
})
