package res

import "list"

#aws_s3_bucket_object_lock_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_object_lock_configuration")
	close({
		rule?: matchN(1, [#rule, list.MaxItems(1) & [...#rule]])
		bucket!:                string
		expected_bucket_owner?: string
		id?:                    string
		object_lock_enabled?:   string
		region?:                string
		token?:                 string
	})

	#rule: close({
		default_retention?: matchN(1, [_#defs."/$defs/rule/$defs/default_retention", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule/$defs/default_retention"]])
	})

	_#defs: "/$defs/rule/$defs/default_retention": close({
		days?:  number
		mode?:  string
		years?: number
	})
}
