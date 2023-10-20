package res

#aws_opsworks_permission: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_opsworks_permission")
	allow_ssh?:  bool
	allow_sudo?: bool
	id?:         string
	level?:      string
	stack_id:    string
	user_arn:    string
}
