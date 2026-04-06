package res

import "list"

#scaleway_object_bucket_server_side_encryption_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_object_bucket_server_side_encryption_configuration")
	close({
		rule!: matchN(1, [#rule, [_, ...] & [...#rule]])

		// The bucket's name or regional ID.
		bucket!: string
		id?:     string
	})

	#rule: close({
		apply_server_side_encryption_by_default?: matchN(1, [_#defs."/$defs/rule/$defs/apply_server_side_encryption_by_default", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/apply_server_side_encryption_by_default"]])
	})

	_#defs: "/$defs/rule/$defs/apply_server_side_encryption_by_default": close({
		// Server-side encryption algorithm to use. Valid values are
		// AES256
		sse_algorithm!: string
	})
}
