package res

#aws_costoptimizationhub_enrollment_status: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_costoptimizationhub_enrollment_status")
	close({
		id?:                      string
		include_member_accounts?: bool
		status?:                  string
	})
}
