package res

scaleway_billing_budget_alert_notification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_billing_budget_alert_notification")
	close({
		// The ID of the budget alert to create notification for.
		budget_alert_id!: string

		// The date and time of budget alert notification creation
		created_at?: string

		// List of email addresses to receive email notifications. Precisely one of
		// sms_phone_numbers, email_addresses, or webhook_urls must be set.
		email_addresses?: [...string]

		// The ID of the budget alert notification
		id?: string

		// List of phone numbers to receive SMS notifications. Precisely one of
		// sms_phone_numbers, email_addresses, or webhook_urls must be set.
		sms_phone_numbers?: [...string]

		// The type of notification (sms, email, or webhook)
		type?: string

		// The date and time when the budget alert notification was last updated
		updated_at?: string

		// List of webhook URLs to receive webhook notifications. Precisely one of
		// sms_phone_numbers, email_addresses, or webhook_urls must be set.
		webhook_urls?: [...string]
	})
}
