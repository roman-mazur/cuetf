package res

import "list"

#aws_codepipeline_custom_action_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codepipeline_custom_action_type")
	arn?:           string
	category!:      string
	id?:            string
	owner?:         string
	provider_name!: string
	tags?: [string]: string
	tags_all?: [string]: string
	version!: string
	configuration_property?: #configuration_property | list.MaxItems(10) & [...#configuration_property]
	input_artifact_details?: #input_artifact_details | list.MaxItems(1) & [_, ...] & [...#input_artifact_details]
	output_artifact_details?: #output_artifact_details | list.MaxItems(1) & [_, ...] & [...#output_artifact_details]
	settings?: #settings | list.MaxItems(1) & [...#settings]

	#configuration_property: {
		description?: string
		key!:         bool
		name!:        string
		queryable?:   bool
		required!:    bool
		secret!:      bool
		type?:        string
	}

	#input_artifact_details: {
		maximum_count!: number
		minimum_count!: number
	}

	#output_artifact_details: {
		maximum_count!: number
		minimum_count!: number
	}

	#settings: {
		entity_url_template?:           string
		execution_url_template?:        string
		revision_url_template?:         string
		third_party_configuration_url?: string
	}
}
