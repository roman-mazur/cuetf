package res

#aws_ssoadmin_permission_set_inline_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_permission_set_inline_policy")
	id?:                 string
	inline_policy!:      string
	instance_arn!:       string
	permission_set_arn!: string
	timeouts?:           #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
