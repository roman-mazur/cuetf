package res

import "list"

#aws_s3_bucket_intelligent_tiering_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_intelligent_tiering_configuration")
	close({
		filter?: matchN(1, [#filter, list.MaxItems(1) & [...#filter]])
		bucket!: string
		id?:     string
		name!:   string
		region?: string
		status?: string
		tiering?: matchN(1, [#tiering, [_, ...] & [...#tiering]])
	})

	#filter: close({
		prefix?: string
		tags?: [string]: string
	})

	#tiering: close({
		access_tier!: string
		days!:        number
	})
}
