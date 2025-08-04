package res

#aws_computeoptimizer_enrollment_status: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_computeoptimizer_enrollment_status")
	close({
		timeouts?:                           #timeouts
		id?:                                 string
		include_member_accounts?:            bool
		number_of_member_accounts_opted_in?: number
		region?:                             string
		status!:                             string
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
