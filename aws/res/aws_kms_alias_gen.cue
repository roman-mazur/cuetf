package res

#aws_kms_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kms_alias")
	arn?:            string
	id?:             string
	name?:           string
	name_prefix?:    string
	target_key_arn?: string
	target_key_id!:  string
}
