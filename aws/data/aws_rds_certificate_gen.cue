package data

#aws_rds_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_certificate")
	arn?:                          string
	certificate_type?:             string
	customer_override?:            bool
	customer_override_valid_till?: string
	id?:                           string
	latest_valid_till?:            bool
	thumbprint?:                   string
	valid_from?:                   string
	valid_till?:                   string
}
