package res

#aws_securityhub_configuration_policy_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_configuration_policy_association")
	close({
		id?:        string
		policy_id!: string
		region?:    string
		target_id!: string
		timeouts?:  #timeouts
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
