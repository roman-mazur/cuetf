package res

#aws_verifiedpermissions_policy_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_verifiedpermissions_policy_template")
	created_date?:       string
	description?:        string
	id?:                 string
	policy_store_id!:    string
	policy_template_id?: string
	statement!:          string
}
