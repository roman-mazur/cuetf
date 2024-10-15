package res

#aws_s3_directory_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_directory_bucket")
	arn?:             string
	bucket!:          string
	data_redundancy?: string
	force_destroy?:   bool
	id?:              string
	type?:            string
	location?: #location | [...#location]

	#location: {
		name!: string
		type?: string
	}
}
