package res

#aws_ssoadmin_account_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssoadmin_account_assignment")
	id?:                 string
	instance_arn!:       string
	permission_set_arn!: string
	principal_id!:       string
	principal_type!:     string
	target_id!:          string
	target_type?:        string
	timeouts?:           #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
