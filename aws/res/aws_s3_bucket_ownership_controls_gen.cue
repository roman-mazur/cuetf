package res

import "list"

#aws_s3_bucket_ownership_controls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3_bucket_ownership_controls")
	bucket!: string
	id?:     string
	rule?: #rule | list.MaxItems(1) & [_, ...] & [...#rule]

	#rule: object_ownership!: string
}
