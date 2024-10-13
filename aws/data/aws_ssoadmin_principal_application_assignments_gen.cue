package data

#aws_ssoadmin_principal_application_assignments: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssoadmin_principal_application_assignments")
	id?:             string
	instance_arn!:   string
	principal_id!:   string
	principal_type!: string
	application_assignments?: #application_assignments | [...#application_assignments]

	#application_assignments: {
		application_arn?: string
		principal_id?:    string
		principal_type?:  string
	}
}
