package res

import "list"

#aws_codebuild_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codebuild_webhook")
	branch_filter?: string
	build_type?:    string
	id?:            string
	payload_url?:   string
	project_name!:  string
	secret?:        string
	url?:           string
	filter_group?: #filter_group | [...#filter_group]
	scope_configuration?: #scope_configuration | list.MaxItems(1) & [...#scope_configuration]

	#filter_group: {
		filter?: #filter_group.#filter | [...#filter_group.#filter]

		#filter: {
			exclude_matched_pattern?: bool
			pattern!:                 string
			type!:                    string
		}
	}

	#scope_configuration: {
		domain?: string
		name!:   string
		scope!:  string
	}
}
