package data

#aws_s3_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_s3_bucket")
	close({
		arn?:                string
		bucket!:             string
		bucket_domain_name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                      string
		bucket_region?:               string
		bucket_regional_domain_name?: string
		hosted_zone_id?:              string
		id?:                          string
		website_domain?:              string
		website_endpoint?:            string
	})
}
