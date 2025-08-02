package data

#aws_rds_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_certificate")
	close({
		arn?:                          string
		certificate_type?:             string
		customer_override?:            bool
		customer_override_valid_till?: string
		default_for_new_launches?:     bool
		id?:                           string
		latest_valid_till?:            bool
		region?:                       string
		thumbprint?:                   string
		valid_from?:                   string
		valid_till?:                   string
	})
}
