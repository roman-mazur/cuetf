package res

#aws_redshiftdata_statement: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshiftdata_statement")
	close({
		cluster_identifier?: string
		database!:           string
		parameters?: matchN(1, [#parameters, [...#parameters]])
		timeouts?:       #timeouts
		db_user?:        string
		id?:             string
		region?:         string
		secret_arn?:     string
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
