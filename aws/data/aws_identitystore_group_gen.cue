package data

import "list"

#aws_identitystore_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_identitystore_group")
	close({
		alternate_identifier?: matchN(1, [#alternate_identifier, list.MaxItems(1) & [...#alternate_identifier]])
		description?:  string
		display_name?: string
		external_ids?: [...close({
			id?:     string
			issuer?: string
		})]
		group_id?:          string
		id?:                string
		identity_store_id!: string
		region?:            string
	})

	#alternate_identifier: close({
		external_id?: matchN(1, [_#defs."/$defs/alternate_identifier/$defs/external_id", list.MaxItems(1) & [..._#defs."/$defs/alternate_identifier/$defs/external_id"]])
		unique_attribute?: matchN(1, [_#defs."/$defs/alternate_identifier/$defs/unique_attribute", list.MaxItems(1) & [..._#defs."/$defs/alternate_identifier/$defs/unique_attribute"]])
	})

	_#defs: "/$defs/alternate_identifier/$defs/external_id": close({
		id!:     string
		issuer!: string
	})

	_#defs: "/$defs/alternate_identifier/$defs/unique_attribute": close({
		attribute_path!:  string
		attribute_value!: string
	})
}
