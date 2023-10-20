package res

import "list"

#aws_config_config_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_config_config_rule")
	arn?:                         string
	description?:                 string
	id?:                          string
	input_parameters?:            string
	maximum_execution_frequency?: string
	name:                         string
	rule_id?:                     string
	tags?: [string]: string
	tags_all?: [string]: string
	scope?:  #scope | list.MaxItems(1) & [...#scope]
	source?: #source | list.MaxItems(1) & [_, ...] & [...#source]

	#scope: {
		compliance_resource_id?: string
		compliance_resource_types?: [...string]
		tag_key?:   string
		tag_value?: string
	}

	#source: {
		owner:                  string
		source_identifier?:     string
		custom_policy_details?: #source.#custom_policy_details | list.MaxItems(1) & [...#source.#custom_policy_details]
		source_detail?:         #source.#source_detail | list.MaxItems(25) & [...#source.#source_detail]

		#custom_policy_details: {
			enable_debug_log_delivery?: bool
			policy_runtime:             string
			policy_text:                string
		}

		#source_detail: {
			event_source?:                string
			maximum_execution_frequency?: string
			message_type?:                string
		}
	}
}
