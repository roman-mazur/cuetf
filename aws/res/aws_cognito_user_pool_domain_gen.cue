package res

#aws_cognito_user_pool_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cognito_user_pool_domain")
	close({
		aws_account_id?:                  string
		certificate_arn?:                 string
		cloudfront_distribution?:         string
		cloudfront_distribution_arn?:     string
		cloudfront_distribution_zone_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		domain!:                string
		id?:                    string
		managed_login_version?: number
		s3_bucket?:             string
		user_pool_id!:          string
		version?:               string
	})
}
