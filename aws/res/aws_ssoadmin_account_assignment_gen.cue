package res

#aws_ssoadmin_account_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_account_assignment")
	close({
		id?:                 string
		instance_arn!:       string
		permission_set_arn!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		principal_id!:   string
		principal_type!: string
		target_id!:      string
		target_type?:    string
		timeouts?:       #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
