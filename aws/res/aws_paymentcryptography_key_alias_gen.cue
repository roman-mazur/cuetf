package res

#aws_paymentcryptography_key_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_paymentcryptography_key_alias")
	alias_name!: string
	id?:         string
	key_arn?:    string
}
