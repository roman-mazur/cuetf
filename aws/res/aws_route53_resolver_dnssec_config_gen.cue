package res

#aws_route53_resolver_dnssec_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_resolver_dnssec_config")
	arn?:               string
	id?:                string
	owner_id?:          string
	resource_id:        string
	validation_status?: string
}
