package res

#aws_redshiftdata_statement: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshiftdata_statement")
	cluster_identifier?: string
	database:            string
	db_user?:            string
	id?:                 string
	secret_arn?:         string
	sql:                 string
	statement_name?:     string
	with_event?:         bool
	workgroup_name?:     string
	parameters?:         #parameters | [...#parameters]
	timeouts?:           #timeouts

	#parameters: {
		name:  string
		value: string
	}

	#timeouts: create?: string
}
