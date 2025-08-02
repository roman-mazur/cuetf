package res

#aws_appsync_api_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appsync_api_cache")
	close({
		api_caching_behavior!:       string
		api_id!:                     string
		at_rest_encryption_enabled?: bool
		id?:                         string
		region?:                     string
		transit_encryption_enabled?: bool
		ttl!:                        number
		type!:                       string
	})
}
