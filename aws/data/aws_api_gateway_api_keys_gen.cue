package data

#aws_api_gateway_api_keys: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_api_keys")
	close({
		customer_id?:    string
		id?:             string
		include_values?: bool
		items?: [...close({
			created_date?:      string
			customer_id?:       string
			description?:       string
			enabled?:           bool
			id?:                string
			last_updated_date?: string
			name?:              string
			stage_keys?: [...string]
			tags?: [string]: string
			value?: string
		})]
		region?: string
	})
}
