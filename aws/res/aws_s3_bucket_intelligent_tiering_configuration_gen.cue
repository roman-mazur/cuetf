package res

import "list"

#aws_s3_bucket_intelligent_tiering_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3_bucket_intelligent_tiering_configuration")
	bucket:   string
	id?:      string
	name:     string
	status?:  string
	filter?:  #filter | list.MaxItems(1) & [...#filter]
	tiering?: #tiering | [_, ...] & [...#tiering]

	#filter: {
		prefix?: string
		tags?: [string]: string
	}

	#tiering: {
		access_tier: string
		days:        number
	}
}
