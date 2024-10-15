package data

#aws_ecr_lifecycle_policy_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecr_lifecycle_policy_document")
	json?: string
	rule?: #rule | [...#rule]

	#rule: {
		description?: string
		priority!:    number
		action?: #rule.#action | [...#rule.#action]
		selection?: #rule.#selection | [...#rule.#selection]

		#action: type!: string

		#selection: {
			count_number!: number
			count_type!:   string
			count_unit?:   string
			tag_pattern_list?: [...string]
			tag_prefix_list?: [...string]
			tag_status!: string
		}
	}
}
