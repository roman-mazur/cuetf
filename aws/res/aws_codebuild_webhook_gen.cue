package res

#aws_codebuild_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codebuild_webhook")
	branch_filter?: string
	build_type?:    string
	id?:            string
	payload_url?:   string
	project_name:   string
	secret?:        string
	url?:           string
	filter_group?:  #filter_group | [...#filter_group]

	#filter_group: {
		filter?: #filter_group.#filter | [...#filter_group.#filter]

		#filter: {
			exclude_matched_pattern?: bool
			pattern:                  string
			type:                     string
		}
	}
}
