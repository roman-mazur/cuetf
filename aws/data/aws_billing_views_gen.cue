package data

#aws_billing_views: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_billing_views")
	close({
		billing_view?: [...close({
			arn?:               string
			billing_view_type?: string
			description?:       string
			name?:              string
			owner_account_id?:  string
		})]
		billing_view_types?: [...string]
	})
}
