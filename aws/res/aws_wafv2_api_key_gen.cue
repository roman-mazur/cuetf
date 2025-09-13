package res

#aws_wafv2_api_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafv2_api_key")
	close({
		// The API key value. This is sensitive and not included in
		// responses.
		api_key?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Specifies whether this is for an AWS CloudFront distribution or
		// for a regional application. Valid values are CLOUDFRONT or
		// REGIONAL.
		scope!: string

		// The domains that you want to be able to use the API key with,
		// for example example.com. Maximum of 5 domains.
		token_domains!: [...string]
	})
}
