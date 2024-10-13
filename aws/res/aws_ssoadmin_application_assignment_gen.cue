package res

#aws_ssoadmin_application_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssoadmin_application_assignment")
	application_arn!: string
	id?:              string
	principal_id!:    string
	principal_type!:  string
}
