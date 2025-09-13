package data

import "list"

#aws_identitystore_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_identitystore_group")
	close({
		description?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		display_name?: string
		external_ids?: [...close({
			id?:     string
			issuer?: string
		})]
		group_id?:          string
		id?:                string
		identity_store_id!: string
		alternate_identifier?: matchN(1, [#alternate_identifier, list.MaxItems(1) & [...#alternate_identifier]])
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
