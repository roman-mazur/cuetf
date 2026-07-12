package data

scaleway_billing_budget: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_billing_budget")
	close({
		// The ID of the budget to retrieve.
		budget_id!: string

		// Cost limit for the budget in cents.
		consumption_limit?: number

		// The date and time of budget creation
		created_at?: string

		// Whether the budget is enabled or not.
		enabled?: bool

		// The ID of the budget
		id?: string

		// The organization ID. If not provided, the default organization configured in
		// the provider is used.
		organization_id?: string

		// The date and time when the budget was last updated
		updated_at?: string
	})
}
