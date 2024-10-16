package res

import "list"

#aws_s3_bucket_metric: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_metric")
	bucket!: string
	id?:     string
	name!:   string
	filter?: #filter | list.MaxItems(1) & [...#filter]

	#filter: {
		access_point?: string
		prefix?:       string
		tags?: [string]: string
	}
}
