package res

import "list"

#aws_evidently_feature: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_evidently_feature")
	arn?:               string
	created_time?:      string
	default_variation?: string
	description?:       string
	entity_overrides?: [string]: string
	evaluation_rules?: [...{
		name?: string
		type?: string
	}]
	evaluation_strategy?: string
	id?:                  string
	last_updated_time?:   string
	name:                 string
	project:              string
	status?:              string
	tags?: [string]: string
	tags_all?: [string]: string
	value_type?: string
	timeouts?:   #timeouts
	variations?: #variations | list.MaxItems(5) & [_, ...] & [...#variations]

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#variations: {
		name:   string
		value?: #variations.#value | list.MaxItems(1) & [_, ...] & [...#variations.#value]

		#value: {
			bool_value?:   string
			double_value?: string
			long_value?:   string
			string_value?: string
		}
	}
}
