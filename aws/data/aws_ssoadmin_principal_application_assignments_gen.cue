package data

#aws_ssoadmin_principal_application_assignments: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_principal_application_assignments")
	close({
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		instance_arn!:   string
		principal_id!:   string
		principal_type!: string
		application_assignments?: matchN(1, [#application_assignments, [...#application_assignments]])
	})

	#application_assignments: close({
		application_arn?: string
		principal_id?:    string
		principal_type?:  string
	})
}
