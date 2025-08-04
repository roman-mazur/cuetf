package res

import "list"

#aws_cloudfront_field_level_encryption_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_field_level_encryption_profile")
	close({
		encryption_entities?: matchN(1, [#encryption_entities, list.MaxItems(1) & [_, ...] & [...#encryption_entities]])
		arn?:              string
		caller_reference?: string
		comment?:          string
		etag?:             string
		id?:               string
		name!:             string
	})

	#encryption_entities: close({
		items?: matchN(1, [_#defs."/$defs/encryption_entities/$defs/items", [..._#defs."/$defs/encryption_entities/$defs/items"]])
	})

	_#defs: "/$defs/encryption_entities/$defs/items": close({
		field_patterns?: matchN(1, [_#defs."/$defs/encryption_entities/$defs/items/$defs/field_patterns", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encryption_entities/$defs/items/$defs/field_patterns"]])
		provider_id!:   string
		public_key_id!: string
	})

	_#defs: "/$defs/encryption_entities/$defs/items/$defs/field_patterns": close({
		items?: [...string]
	})
}
