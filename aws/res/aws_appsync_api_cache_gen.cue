package res

#aws_appsync_api_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appsync_api_cache")
	api_caching_behavior:        string
	api_id:                      string
	at_rest_encryption_enabled?: bool
	id?:                         string
	transit_encryption_enabled?: bool
	ttl:                         number
	type:                        string
}
