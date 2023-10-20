package res

#aws_lightsail_bucket_access_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lightsail_bucket_access_key")
	access_key_id?:     string
	bucket_name:        string
	created_at?:        string
	id?:                string
	secret_access_key?: string
	status?:            string
}
