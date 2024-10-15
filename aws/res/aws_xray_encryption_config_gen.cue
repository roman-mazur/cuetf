package res

#aws_xray_encryption_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_xray_encryption_config")
	id?:     string
	key_id?: string
	type!:   string
}
