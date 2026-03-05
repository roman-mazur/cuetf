package data

#scaleway_billing_consumptions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_billing_consumptions")
	close({
		// List of the consumptions.
		consumptions?: [...close({
			billed_quantity?: string
			category_name?:   string
			product_name?:    string
			project_id?:      string
			sku?:             string
			unit?:            string
			value?:           string
		})]
		id?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// Date and time when the consumption was updated
		updated_at?: string
	})
}
