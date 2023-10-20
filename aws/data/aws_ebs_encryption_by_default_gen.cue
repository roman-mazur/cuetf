package data

#aws_ebs_encryption_by_default: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ebs_encryption_by_default")
	enabled?:  bool
	id?:       string
	timeouts?: #timeouts

	#timeouts: read?: string
}
