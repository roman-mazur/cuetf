package res

#aws_cognito_user_pool_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_user_pool_domain")
	close({
		aws_account_id?:                  string
		certificate_arn?:                 string
		cloudfront_distribution?:         string
		cloudfront_distribution_arn?:     string
		cloudfront_distribution_zone_id?: string
		domain!:                          string
		id?:                              string
		managed_login_version?:           number
		region?:                          string
		s3_bucket?:                       string
		user_pool_id!:                    string
		version?:                         string
	})
}
