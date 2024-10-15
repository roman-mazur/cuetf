package data

#aws_ebs_default_kms_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ebs_default_kms_key")
	id?:       string
	key_arn?:  string
	timeouts?: #timeouts

	#timeouts: read?: string
}
