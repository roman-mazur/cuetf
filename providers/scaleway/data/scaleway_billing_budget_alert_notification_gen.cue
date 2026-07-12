package data

scaleway_billing_budget_alert_notification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_billing_budget_alert_notification")
	close({
		// The ID of the budget alert. If not provided, it will be retrieved from the notification.
		budget_alert_id?: string

		// The date and time of budget alert notification creation
		created_at?: string

		// The ID of the budget alert notification
		id?: string

		// The ID of the budget alert notification to retrieve.
		notification_id!: string

		// The organization ID. If not provided, the default organization configured in
		// the provider is used.
		organization_id?: string

		// List of recipients for this notification
		recipients?: [...string]

		// The type of notification (sms, email, or webhook)
		type?: string

		// The date and time when the budget alert notification was last updated
		updated_at?: string
	})
}
