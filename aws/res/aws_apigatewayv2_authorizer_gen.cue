package res

import "list"

#aws_apigatewayv2_authorizer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apigatewayv2_authorizer")
	api_id!:                            string
	authorizer_credentials_arn?:        string
	authorizer_payload_format_version?: string
	authorizer_result_ttl_in_seconds?:  number
	authorizer_type!:                   string
	authorizer_uri?:                    string
	enable_simple_responses?:           bool
	id?:                                string
	identity_sources?: [...string]
	name!: string
	jwt_configuration?: #jwt_configuration | list.MaxItems(1) & [...#jwt_configuration]
	timeouts?: #timeouts

	#jwt_configuration: {
		audience?: [...string]
		issuer?: string
	}

	#timeouts: delete?: string
}
