package res

#aws_ssoadmin_managed_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_managed_policy_attachment")
	id?:                  string
	instance_arn!:        string
	managed_policy_arn!:  string
	managed_policy_name?: string
	permission_set_arn!:  string
	timeouts?:            #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
