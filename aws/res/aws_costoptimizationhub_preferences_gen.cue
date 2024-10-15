package res

#aws_costoptimizationhub_preferences: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_costoptimizationhub_preferences")
	id?:                                 string
	member_account_discount_visibility?: string
	savings_estimation_mode?:            string
}
