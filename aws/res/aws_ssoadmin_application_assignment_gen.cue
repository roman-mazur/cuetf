package res

#aws_ssoadmin_application_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_application_assignment")
	close({
		application_arn!: string
		id?:              string
		principal_id!:    string
		principal_type!:  string
		region?:          string
	})
}
