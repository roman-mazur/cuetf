package res

#aws_codeartifact_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codeartifact_domain")
	close({
		arn?:              string
		asset_size_bytes?: string
		created_time?:     string
		domain!:           string
		encryption_key?:   string
		id?:               string
		owner?:            string
		region?:           string
		repository_count?: number
		s3_bucket_arn?:    string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
