package data

#scaleway_billing_invoices: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_billing_invoices")
	close({
		id?: string

		// The invoice type. It can either be `periodic` or `purchase`
		invoice_type?: string

		// List of invoices
		invoices?: [...close({
			billing_period?:    string
			due_date?:          string
			id?:                string
			invoice_type?:      string
			issued_date?:       string
			"number"?:          number
			organization_name?: string
			seller_name?:       string
			start_date?:        string
			state?:             string
			stop_date?:         string
			total_discount?:    string
			total_tax?:         string
			total_taxed?:       string
			total_undiscount?:  string
			total_untaxed?:     string
		})]

		// The organization_id you want to attach the resource to
		organization_id?: string

		// Invoice's start date is greater or equal to `started_after`
		started_after?: string

		// Invoice's start date precedes `started_before`
		started_before?: string
	})
}
