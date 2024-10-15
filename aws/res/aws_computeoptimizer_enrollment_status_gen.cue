package res

#aws_computeoptimizer_enrollment_status: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_computeoptimizer_enrollment_status")
	id?:                                 string
	include_member_accounts?:            bool
	number_of_member_accounts_opted_in?: number
	status!:                             string
	timeouts?:                           #timeouts

	#timeouts: {
		create?: string
		update?: string
	}
}
