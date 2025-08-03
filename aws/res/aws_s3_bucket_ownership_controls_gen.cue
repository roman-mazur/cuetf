package res

import "list"

#aws_s3_bucket_ownership_controls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_ownership_controls")
	close({
		bucket!: string
		id?:     string
		region?: string
		rule?: matchN(1, [#rule, list.MaxItems(1) & [_, ...] & [...#rule]])
	})

	#rule: close({
		object_ownership!: string
	})
}
