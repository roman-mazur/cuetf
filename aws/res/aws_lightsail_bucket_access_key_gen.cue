package res

#aws_lightsail_bucket_access_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_bucket_access_key")
	close({
		access_key_id?:     string
		bucket_name!:       string
		created_at?:        string
		id?:                string
		region?:            string
		secret_access_key?: string
		status?:            string
	})
}
