package data

import "list"

#aws_identitystore_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_identitystore_group")
	description?:  string
	display_name?: string
	external_ids?: [...{
		id?:     string
		issuer?: string
	}]
	group_id?:             string
	id?:                   string
	identity_store_id:     string
	alternate_identifier?: #alternate_identifier | list.MaxItems(1) & [...#alternate_identifier]
	filter?:               #filter | list.MaxItems(1) & [...#filter]

	#alternate_identifier: {
		external_id?:      #alternate_identifier.#external_id | list.MaxItems(1) & [...#alternate_identifier.#external_id]
		unique_attribute?: #alternate_identifier.#unique_attribute | list.MaxItems(1) & [...#alternate_identifier.#unique_attribute]

		#external_id: {
			id:     string
			issuer: string
		}

		#unique_attribute: {
			attribute_path:  string
			attribute_value: string
		}
	}

	#filter: {
		attribute_path:  string
		attribute_value: string
	}
}
