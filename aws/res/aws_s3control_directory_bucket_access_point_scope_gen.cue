package res

#aws_s3control_directory_bucket_access_point_scope: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_directory_bucket_access_point_scope")
	close({
		account_id!: string
		name!:       string
		region?:     string
		scope?: matchN(1, [#scope, [...#scope]])
	})

	#scope: close({
		permissions?: [...string]
		prefixes?: [...string]
	})
}
