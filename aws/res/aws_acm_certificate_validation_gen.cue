package res

#aws_acm_certificate_validation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_acm_certificate_validation")
	certificate_arn: string
	id?:             string
	validation_record_fqdns?: [...string]
	timeouts?: #timeouts

	#timeouts: create?: string
}
