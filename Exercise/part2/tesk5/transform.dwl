%dw 2.0
output application/json

/* Requirements:
 * Calculate average grades for each student 
 * Identify the top student using MaxBy
 * Filter passing students based on average grade
 *
 * Expected Output:
 * {
 *   "topStudent": {
 *     "name": "Jane",
 *     "averageGrade": 91
 *   },
 *   "passingStudents": [
 *     {
 *       "name": "John",
 *       "averageGrade": 85
 *     },
 *     {
 *       "name": "Jane",
 *       "averageGrade": 91
 *     }
 *   ]
 * }
 */
var maxValue = payload.students map ({
    "name" : $.name,
    "averageGrade" : avg($.grades)
})
---
{
    "topStudent" : maxValue maxBy ((item) -> item.averageGrade),
    "passingStudents" : maxValue filter((value, index) -> value.averageGrade > 75) 
}
