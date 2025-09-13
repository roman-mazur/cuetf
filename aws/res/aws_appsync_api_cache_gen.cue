package res

#aws_appsync_api_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appsync_api_cache")
	close({
		api_caching_behavior!:       string
		api_id!:                     string
		at_rest_encryption_enabled?: bool
		id?:                         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		transit_encryption_enabled?: bool
		ttl!:                        number
		type!:                       string
	})
}
