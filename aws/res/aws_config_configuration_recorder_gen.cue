package res

import "list"

#aws_config_configuration_recorder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_config_configuration_recorder")
	id?:       string
	name?:     string
	role_arn!: string
	recording_group?: #recording_group | list.MaxItems(1) & [...#recording_group]
	recording_mode?: #recording_mode | list.MaxItems(1) & [...#recording_mode]

	#recording_group: {
		all_supported?:                 bool
		include_global_resource_types?: bool
		resource_types?: [...string]
		exclusion_by_resource_types?: #recording_group.#exclusion_by_resource_types | [...#recording_group.#exclusion_by_resource_types]
		recording_strategy?: #recording_group.#recording_strategy | [...#recording_group.#recording_strategy]

		#exclusion_by_resource_types: resource_types?: [...string]

		#recording_strategy: use_only?: string
	}

	#recording_mode: {
		recording_frequency?: string
		recording_mode_override?: #recording_mode.#recording_mode_override | list.MaxItems(1) & [...#recording_mode.#recording_mode_override]

		#recording_mode_override: {
			description?:         string
			recording_frequency!: string
			resource_types!: [...string]
		}
	}
}
