package res

import "list"

#aws_s3_bucket_object_lock_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_object_lock_configuration")
	close({
		bucket!:                string
		expected_bucket_owner?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		id?:                  string
		object_lock_enabled?: string
		token?:               string
		rule?: matchN(1, [#rule, list.MaxItems(1) & [...#rule]])
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
