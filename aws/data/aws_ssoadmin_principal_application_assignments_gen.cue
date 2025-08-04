package data

#aws_ssoadmin_principal_application_assignments: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_principal_application_assignments")
	close({
		application_assignments?: matchN(1, [#application_assignments, [...#application_assignments]])
		id?:             string
		instance_arn!:   string
		principal_id!:   string
		principal_type!: string
		region?:         string
	})

	#application_assignments: close({
		application_arn?: string
		principal_id?:    string
		principal_type?:  string
	})
}
