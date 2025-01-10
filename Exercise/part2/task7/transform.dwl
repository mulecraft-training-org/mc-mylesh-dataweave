%dw 2.0
output application/json

/* Requirements:
 * Aggregate subscription data to calculate total usage metrics per customer
 * Count active subscriptions for each customer
 * Summarize billing history to determine total billed amounts and unpaid invoices
 * Identify the next due date for unpaid invoices
 * Handle cases where subscriptions or billing history may be missing or incomplete
 * Ensure proper data validation for numerical values and date formats
 *
 * Expected Output:
 * {
 *   "customerSummaries": [
 *     {
 *       "customerId": "C001",
 *       "fullName": "Alice Smith",
 *       "activeSubscriptionsCount": 2,
 *       "totalUsage": {
 *         "dataUsedGB": 210,
 *         "totalCallsMade": 300,
 *         "totalSmsSent": 150
 *       },
 *       "billingSummary": {
 *         "totalBilledAmount": 250,
 *         "unpaidInvoicesCount": 1,
 *         "nextDueDate": "2023-04-01"
 *       }
 *     },
 *     {
 *       "customerId": "C002",
 *       "fullName": "Bob Johnson",
 *       "activeSubscriptionsCount": 1,
 *       "totalUsage": {
 *         "dataUsedGB": 5,
 *         "totalCallsMade": 100,
 *         "totalSmsSent": 50
 *       },
 *       "billingSummary": {
 *         "totalBilledAmount": 50,
 *         "unpaidInvoicesCount": 1,
 *         "nextDueDate": "2023-03-15"
 *       }
 *     }
 *   ]
 * }
 */
---
{
    "customerSummaries" : payload.customerData map ({
        "customerId" : $.customerId,
        "fullName" : $.name,
        "activeSubscriptionsCount" : sizeOf($.billingHistory),
        "totalUsage" : {
            "dataUsedGB" : sum($.subscriptions.usage.data),
            "totalCallsMade" : sum($.subscriptions.usage.calls),
            "totalSmsSent" : sum($.subscriptions.usage.sms)
        },
        "billingSummary" : {
            "totalBilledAmount" : sum($.billingHistory.amount),
            "unpaidInvoicesCount" : sizeOf($.billingHistory filter ((item, index) -> item.status == 'UNPAID')),
            "nextDueDate" : ($.billingHistory filter ((item, index) -> item.status == 'UNPAID')).dueDate joinBy  "" as String 
        }
    })
}
