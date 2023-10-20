package data

#aws_api_gateway_domain_name: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_domain_name")
	arn?:                     string
	certificate_arn?:         string
	certificate_name?:        string
	certificate_upload_date?: string
	cloudfront_domain_name?:  string
	cloudfront_zone_id?:      string
	domain_name:              string
	endpoint_configuration?: [...{
		types?: [...string]
	}]
	id?:                        string
	regional_certificate_arn?:  string
	regional_certificate_name?: string
	regional_domain_name?:      string
	regional_zone_id?:          string
	security_policy?:           string
	tags?: [string]: string
}
