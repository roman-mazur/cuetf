package res

import "list"

#aws_codepipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codepipeline")
	arn?:     string
	id?:      string
	name:     string
	role_arn: string
	tags?: [string]:     string
	tags_all?: [string]: string
	artifact_store?: #artifact_store | [_, ...] & [...#artifact_store]
	stage?: #stage | [_, _, ...] & [...#stage]

	#artifact_store: {
		location: string
		region?:  string
		type:     string
		encryption_key?: #artifact_store.#encryption_key | list.MaxItems(1) & [...#artifact_store.#encryption_key]

		#encryption_key: {
			id:   string
			type: string
		}
	}

	#stage: {
		name: string
		action?: #stage.#action | [_, ...] & [...#stage.#action]

		#action: {
			category: string
			configuration?: [string]: string
			input_artifacts?: [...string]
			name:       string
			namespace?: string
			output_artifacts?: [...string]
			owner:      string
			provider:   string
			region?:    string
			role_arn?:  string
			run_order?: number
			version:    string
		}
	}
}
