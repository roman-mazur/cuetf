package res

import "list"

#aws_api_gateway_domain_name: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_api_gateway_domain_name")
	close({
		arn?:                     string
		certificate_arn?:         string
		certificate_body?:        string
		certificate_chain?:       string
		certificate_name?:        string
		certificate_private_key?: string
		certificate_upload_date?: string
		cloudfront_domain_name?:  string
		cloudfront_zone_id?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		domain_name!:    string
		domain_name_id?: string
		endpoint_configuration?: matchN(1, [#endpoint_configuration, list.MaxItems(1) & [...#endpoint_configuration]])
		mutual_tls_authentication?: matchN(1, [#mutual_tls_authentication, list.MaxItems(1) & [...#mutual_tls_authentication]])
		id?:                                     string
		ownership_verification_certificate_arn?: string
		policy?:                                 string
		regional_certificate_arn?:               string
		regional_certificate_name?:              string
		regional_domain_name?:                   string
		regional_zone_id?:                       string
		security_policy?:                        string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#endpoint_configuration: close({
		ip_address_type?: string
		types!: [...string]
	})

	#mutual_tls_authentication: close({
		truststore_uri!:     string
		truststore_version?: string
	})
}
