package data

#aws_api_gateway_rest_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_rest_api")
	close({
		api_key_source?: string
		arn?:            string
		binary_media_types?: [...string]
		description?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		endpoint_configuration?: [...close({
			ip_address_type?: string
			types?: [...string]
			vpc_endpoint_ids?: [...string]
		})]
		execution_arn?:            string
		id?:                       string
		minimum_compression_size?: string
		name!:                     string
		policy?:                   string
		root_resource_id?:         string
		tags?: [string]: string
	})
}
