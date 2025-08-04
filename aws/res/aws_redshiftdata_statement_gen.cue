package res

#aws_redshiftdata_statement: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshiftdata_statement")
	close({
		cluster_identifier?: string
		database!:           string
		db_user?:            string
		id?:                 string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		secret_arn?: string
		parameters?: matchN(1, [#parameters, [...#parameters]])
		timeouts?:       #timeouts
		sql!:            string
		statement_name?: string
		with_event?:     bool
		workgroup_name?: string
	})

	#parameters: close({
		name!:  string
		value!: string
	})

	#timeouts: close({
		create?: string
	})
}
