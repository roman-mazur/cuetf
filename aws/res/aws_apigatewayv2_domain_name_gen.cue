package res

import "list"

#aws_apigatewayv2_domain_name: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_apigatewayv2_domain_name")
	api_mapping_selection_expression?: string
	arn?:                              string
	domain_name!:                      string
	id?:                               string
	tags?: [string]: string
	tags_all?: [string]: string
	domain_name_configuration?: #domain_name_configuration | list.MaxItems(1) & [_, ...] & [...#domain_name_configuration]
	mutual_tls_authentication?: #mutual_tls_authentication | list.MaxItems(1) & [...#mutual_tls_authentication]
	timeouts?: #timeouts

	#domain_name_configuration: {
		certificate_arn!:                        string
		endpoint_type!:                          string
		hosted_zone_id?:                         string
		ownership_verification_certificate_arn?: string
		security_policy!:                        string
		target_domain_name?:                     string
	}

	#mutual_tls_authentication: {
		truststore_uri!:     string
		truststore_version?: string
	}

	#timeouts: {
		create?: string
		update?: string
	}
}
