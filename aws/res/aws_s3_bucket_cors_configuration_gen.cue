package res

import "list"

#aws_s3_bucket_cors_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_cors_configuration")
	close({
		bucket!:                string
		expected_bucket_owner?: string
		id?:                    string
		region?:                string
		cors_rule?: matchN(1, [#cors_rule, list.MaxItems(100) & [_, ...] & [...#cors_rule]])
	})

	#cors_rule: close({
		allowed_headers?: [...string]
		allowed_methods!: [...string]
		allowed_origins!: [...string]
		expose_headers?: [...string]
		id?:              string
		max_age_seconds?: number
	})
}
