package res

#aws_securitylake_aws_log_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_securitylake_aws_log_source")
	id?: string
	source?: #source | [...#source]

	#source: {
		accounts?: [...string]
		regions!: [...string]
		source_name!:    string
		source_version?: string
	}
}
