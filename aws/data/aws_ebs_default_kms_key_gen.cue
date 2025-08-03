package data

#aws_ebs_default_kms_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ebs_default_kms_key")
	close({
		id?:       string
		key_arn?:  string
		region?:   string
		timeouts?: #timeouts
	})

	#timeouts: close({
		read?: string
	})
}
