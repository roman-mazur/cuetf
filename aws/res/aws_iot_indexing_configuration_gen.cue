package res

import "list"

#aws_iot_indexing_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iot_indexing_configuration")
	id?: string
	thing_group_indexing_configuration?: #thing_group_indexing_configuration | list.MaxItems(1) & [...#thing_group_indexing_configuration]
	thing_indexing_configuration?: #thing_indexing_configuration | list.MaxItems(1) & [...#thing_indexing_configuration]

	#thing_group_indexing_configuration: {
		thing_group_indexing_mode!: string
		custom_field?: #thing_group_indexing_configuration.#custom_field | [...#thing_group_indexing_configuration.#custom_field]
		managed_field?: #thing_group_indexing_configuration.#managed_field | [...#thing_group_indexing_configuration.#managed_field]

		#custom_field: {
			name?: string
			type?: string
		}

		#managed_field: {
			name?: string
			type?: string
		}
	}

	#thing_indexing_configuration: {
		device_defender_indexing_mode?:    string
		named_shadow_indexing_mode?:       string
		thing_connectivity_indexing_mode?: string
		thing_indexing_mode!:              string
		custom_field?: #thing_indexing_configuration.#custom_field | [...#thing_indexing_configuration.#custom_field]
		filter?: #thing_indexing_configuration.#filter | list.MaxItems(1) & [...#thing_indexing_configuration.#filter]
		managed_field?: #thing_indexing_configuration.#managed_field | [...#thing_indexing_configuration.#managed_field]

		#custom_field: {
			name?: string
			type?: string
		}

		#filter: named_shadow_names?: [...string]

		#managed_field: {
			name?: string
			type?: string
		}
	}
}
