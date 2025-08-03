package res

#aws_ssoadmin_application_assignment_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_application_assignment_configuration")
	close({
		application_arn!:     string
		assignment_required!: bool
		region?:              string
	})
}
