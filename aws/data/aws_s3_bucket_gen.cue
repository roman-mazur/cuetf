package data

#aws_s3_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3_bucket")
	arn?:                         string
	bucket!:                      string
	bucket_domain_name?:          string
	bucket_regional_domain_name?: string
	hosted_zone_id?:              string
	id?:                          string
	region?:                      string
	website_domain?:              string
	website_endpoint?:            string
}
