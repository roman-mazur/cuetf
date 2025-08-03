package res

import "list"

#aws_apigatewayv2_authorizer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apigatewayv2_authorizer")
	close({
		api_id!:                     string
		authorizer_credentials_arn?: string
		jwt_configuration?: matchN(1, [#jwt_configuration, list.MaxItems(1) & [...#jwt_configuration]])
		authorizer_payload_format_version?: string
		authorizer_result_ttl_in_seconds?:  number
		authorizer_type!:                   string
		authorizer_uri?:                    string
		enable_simple_responses?:           bool
		timeouts?:                          #timeouts
		id?:                                string
		identity_sources?: [...string]
		name!:   string
		region?: string
	})

	#jwt_configuration: close({
		audience?: [...string]
		issuer?: string
	})

	#timeouts: close({
		delete?: string
	})
}
