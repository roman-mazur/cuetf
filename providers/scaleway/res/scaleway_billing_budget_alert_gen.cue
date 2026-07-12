package res

scaleway_billing_budget_alert: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_billing_budget_alert")
	close({
		// The ID of the budget to create alert for.
		budget_id!: string

		// The date and time of budget alert creation
		created_at?: string

		// The ID of the budget alert
		id?: string

		// Threshold percentage above which the alert is sent (0-100).
		threshold!: number

		// The date and time when the budget alert was last updated
		updated_at?: string
	})
}
