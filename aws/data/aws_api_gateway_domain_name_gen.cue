package data

#aws_api_gateway_domain_name: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_domain_name")
	close({
		arn?:                     string
		certificate_arn?:         string
		certificate_name?:        string
		certificate_upload_date?: string
		cloudfront_domain_name?:  string
		cloudfront_zone_id?:      string
		domain_name!:             string
		domain_name_id?:          string
		endpoint_configuration?: [...close({
			ip_address_type?: string
			types?: [...string]
		})]
		id?:                        string
		policy?:                    string
		region?:                    string
		regional_certificate_arn?:  string
		regional_certificate_name?: string
		regional_domain_name?:      string
		regional_zone_id?:          string
		security_policy?:           string
		tags?: [string]: string
	})
}
