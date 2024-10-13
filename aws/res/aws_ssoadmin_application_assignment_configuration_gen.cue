package res

#aws_ssoadmin_application_assignment_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssoadmin_application_assignment_configuration")
	application_arn!:     string
	assignment_required!: bool
	id?:                  string
}
