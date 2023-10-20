package res

import "list"

#aws_ecr_registry_scanning_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecr_registry_scanning_configuration")
	id?:          string
	registry_id?: string
	scan_type:    string
	rule?:        #rule | list.MaxItems(100) & [...#rule]

	#rule: {
		scan_frequency:     string
		repository_filter?: #rule.#repository_filter | [_, ...] & [...#rule.#repository_filter]

		#repository_filter: {
			filter:      string
			filter_type: string
		}
	}
}
