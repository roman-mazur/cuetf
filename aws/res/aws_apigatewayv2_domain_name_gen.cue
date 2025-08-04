package res

import "list"

#aws_apigatewayv2_domain_name: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apigatewayv2_domain_name")
	close({
		api_mapping_selection_expression?: string
		domain_name_configuration?: matchN(1, [#domain_name_configuration, list.MaxItems(1) & [_, ...] & [...#domain_name_configuration]])
		arn?:         string
		domain_name!: string
		id?:          string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
		mutual_tls_authentication?: matchN(1, [#mutual_tls_authentication, list.MaxItems(1) & [...#mutual_tls_authentication]])
		timeouts?: #timeouts
	})

	#domain_name_configuration: close({
		certificate_arn!:                        string
		endpoint_type!:                          string
		hosted_zone_id?:                         string
		ip_address_type?:                        string
		ownership_verification_certificate_arn?: string
		security_policy!:                        string
		target_domain_name?:                     string
	})

	#mutual_tls_authentication: close({
		truststore_uri!:     string
		truststore_version?: string
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
