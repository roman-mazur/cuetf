package data

#aws_ssoadmin_application_assignments: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_application_assignments")
	application_arn!: string
	id?:              string
	application_assignments?: #application_assignments | [...#application_assignments]

	#application_assignments: {
		application_arn?: string
		principal_id?:    string
		principal_type?:  string
	}
}
