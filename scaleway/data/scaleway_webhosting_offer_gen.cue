package data

#scaleway_webhosting_offer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_webhosting_offer")
	close({
		// Billing operation path
		billing_operation_path?: string

		// Name of the control panel.(Cpanel or Plesk)
		control_panel?: string
		id?:            string

		// Exact name of the desired offer
		name?: string

		// The offer details of the hosting
		offer?: [...close({
			available?:              bool
			billing_operation_path?: string
			control_panel_name?:     string
			end_of_life?:            bool
			id?:                     string
			name?:                   string
			options?: [...close({
				billing_operation_path?: string
				current_value?:          number
				id?:                     string
				max_value?:              number
				min_value?:              number
				name?:                   string
				price?:                  string
				quota_warning?:          string
			})]
			price?:         string
			quota_warning?: string
		})]

		// ID of the desired offer
		offer_id?: string

		// Price of the offer.
		price?: string

		// The region you want to attach the resource to
		region?: string
	})
}
