package res

#aws_ssoadmin_permission_set_inline_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_permission_set_inline_policy")
	close({
		timeouts?:           #timeouts
		id?:                 string
		inline_policy!:      string
		instance_arn!:       string
		permission_set_arn!: string
		region?:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
