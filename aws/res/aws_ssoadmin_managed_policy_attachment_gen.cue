package res

#aws_ssoadmin_managed_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_managed_policy_attachment")
	close({
		id?:                  string
		timeouts?:            #timeouts
		instance_arn!:        string
		managed_policy_arn!:  string
		managed_policy_name?: string
		permission_set_arn!:  string
		region?:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
