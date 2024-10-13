package res

#aws_ebs_default_kms_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ebs_default_kms_key")
	id?:      string
	key_arn!: string
}
