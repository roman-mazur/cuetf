package res

import "list"

#aws_api_gateway_domain_name: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_domain_name")
	arn?:                                    string
	certificate_arn?:                        string
	certificate_body?:                       string
	certificate_chain?:                      string
	certificate_name?:                       string
	certificate_private_key?:                string
	certificate_upload_date?:                string
	cloudfront_domain_name?:                 string
	cloudfront_zone_id?:                     string
	domain_name!:                            string
	id?:                                     string
	ownership_verification_certificate_arn?: string
	regional_certificate_arn?:               string
	regional_certificate_name?:              string
	regional_domain_name?:                   string
	regional_zone_id?:                       string
	security_policy?:                        string
	tags?: [string]: string
	tags_all?: [string]: string
	endpoint_configuration?: #endpoint_configuration | list.MaxItems(1) & [...#endpoint_configuration]
	mutual_tls_authentication?: #mutual_tls_authentication | list.MaxItems(1) & [...#mutual_tls_authentication]

	#endpoint_configuration: types!: [...string]

	#mutual_tls_authentication: {
		truststore_uri!:     string
		truststore_version?: string
	}
}
