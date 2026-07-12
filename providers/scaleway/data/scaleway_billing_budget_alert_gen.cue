package data

scaleway_billing_budget_alert: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_billing_budget_alert")
	close({
		// The ID of the budget alert to retrieve.
		alert_id!: string

		// The ID of the budget. If not provided, it will be retrieved from the alert.
		budget_id?: string

		// The date and time of budget alert creation
		created_at?: string

		// The ID of the budget alert
		id?: string

		// The organization ID. If not provided, the default organization configured in
		// the provider is used.
		organization_id?: string

		// Threshold percentage above which the alert is sent
		threshold?: number

		// The date and time when the budget alert was last updated
		updated_at?: string
	})
}
