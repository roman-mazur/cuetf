package res

#aws_s3_directory_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_directory_bucket")
	close({
		location?: matchN(1, [#location, [...#location]])
		arn?:             string
		bucket!:          string
		data_redundancy?: string
		force_destroy?:   bool
		region?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
	})

	#location: close({
		name!: string
		type?: string
	})
}
