package res

#aws_ssoadmin_account_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_account_assignment")
	close({
		timeouts?:           #timeouts
		id?:                 string
		instance_arn!:       string
		permission_set_arn!: string
		principal_id!:       string
		principal_type!:     string
		region?:             string
		target_id!:          string
		target_type?:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
