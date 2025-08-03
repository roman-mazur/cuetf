package res

#aws_securitylake_aws_log_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securitylake_aws_log_source")
	close({
		id?:     string
		region?: string
		source?: matchN(1, [#source, [...#source]])
	})

	#source: close({
		accounts?: [...string]
		regions!: [...string]
		source_name!:    string
		source_version?: string
	})
}
