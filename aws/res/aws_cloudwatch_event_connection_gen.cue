package res

import "list"

#aws_cloudwatch_event_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_event_connection")
	close({
		arn?:                string
		authorization_type!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		description?:        string
		id?:                 string
		kms_key_identifier?: string
		name!:               string
		secret_arn?:         string
		auth_parameters?: matchN(1, [#auth_parameters, list.MaxItems(1) & [_, ...] & [...#auth_parameters]])
		invocation_connectivity_parameters?: matchN(1, [#invocation_connectivity_parameters, list.MaxItems(1) & [...#invocation_connectivity_parameters]])
	})

	#auth_parameters: close({
		api_key?: matchN(1, [_#defs."/$defs/auth_parameters/$defs/api_key", list.MaxItems(1) & [..._#defs."/$defs/auth_parameters/$defs/api_key"]])
		basic?: matchN(1, [_#defs."/$defs/auth_parameters/$defs/basic", list.MaxItems(1) & [..._#defs."/$defs/auth_parameters/$defs/basic"]])
		invocation_http_parameters?: matchN(1, [_#defs."/$defs/auth_parameters/$defs/invocation_http_parameters", list.MaxItems(1) & [..._#defs."/$defs/auth_parameters/$defs/invocation_http_parameters"]])
		oauth?: matchN(1, [_#defs."/$defs/auth_parameters/$defs/oauth", list.MaxItems(1) & [..._#defs."/$defs/auth_parameters/$defs/oauth"]])
	})

	#invocation_connectivity_parameters: close({
		resource_parameters?: matchN(1, [_#defs."/$defs/invocation_connectivity_parameters/$defs/resource_parameters", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/invocation_connectivity_parameters/$defs/resource_parameters"]])
	})

	_#defs: "/$defs/auth_parameters/$defs/api_key": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/auth_parameters/$defs/basic": close({
		password!: string
		username!: string
	})

	_#defs: "/$defs/auth_parameters/$defs/invocation_http_parameters": close({
		body?: matchN(1, [_#defs."/$defs/auth_parameters/$defs/invocation_http_parameters/$defs/body", [..._#defs."/$defs/auth_parameters/$defs/invocation_http_parameters/$defs/body"]])
		header?: matchN(1, [_#defs."/$defs/auth_parameters/$defs/invocation_http_parameters/$defs/header", [..._#defs."/$defs/auth_parameters/$defs/invocation_http_parameters/$defs/header"]])
		query_string?: matchN(1, [_#defs."/$defs/auth_parameters/$defs/invocation_http_parameters/$defs/query_string", [..._#defs."/$defs/auth_parameters/$defs/invocation_http_parameters/$defs/query_string"]])
	})

	_#defs: "/$defs/auth_parameters/$defs/invocation_http_parameters/$defs/body": close({
		is_value_secret?: bool
		key?:             string
		value?:           string
	})

	_#defs: "/$defs/auth_parameters/$defs/invocation_http_parameters/$defs/header": close({
		is_value_secret?: bool
		key?:             string
		value?:           string
	})

	_#defs: "/$defs/auth_parameters/$defs/invocation_http_parameters/$defs/query_string": close({
		is_value_secret?: bool
		key?:             string
		value?:           string
	})

	_#defs: "/$defs/auth_parameters/$defs/oauth": close({
		client_parameters?: matchN(1, [_#defs."/$defs/auth_parameters/$defs/oauth/$defs/client_parameters", list.MaxItems(1) & [..._#defs."/$defs/auth_parameters/$defs/oauth/$defs/client_parameters"]])
		oauth_http_parameters?: matchN(1, [_#defs."/$defs/auth_parameters/$defs/oauth/$defs/oauth_http_parameters", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/auth_parameters/$defs/oauth/$defs/oauth_http_parameters"]])
		authorization_endpoint!: string
		http_method!:            string
	})

	_#defs: "/$defs/auth_parameters/$defs/oauth/$defs/client_parameters": close({
		client_id!:     string
		client_secret!: string
	})

	_#defs: "/$defs/auth_parameters/$defs/oauth/$defs/oauth_http_parameters": close({
		body?: matchN(1, [_#defs."/$defs/auth_parameters/$defs/oauth/$defs/oauth_http_parameters/$defs/body", [..._#defs."/$defs/auth_parameters/$defs/oauth/$defs/oauth_http_parameters/$defs/body"]])
		header?: matchN(1, [_#defs."/$defs/auth_parameters/$defs/oauth/$defs/oauth_http_parameters/$defs/header", [..._#defs."/$defs/auth_parameters/$defs/oauth/$defs/oauth_http_parameters/$defs/header"]])
		query_string?: matchN(1, [_#defs."/$defs/auth_parameters/$defs/oauth/$defs/oauth_http_parameters/$defs/query_string", [..._#defs."/$defs/auth_parameters/$defs/oauth/$defs/oauth_http_parameters/$defs/query_string"]])
	})

	_#defs: "/$defs/auth_parameters/$defs/oauth/$defs/oauth_http_parameters/$defs/body": close({
		is_value_secret?: bool
		key?:             string
		value?:           string
	})

	_#defs: "/$defs/auth_parameters/$defs/oauth/$defs/oauth_http_parameters/$defs/header": close({
		is_value_secret?: bool
		key?:             string
		value?:           string
	})

	_#defs: "/$defs/auth_parameters/$defs/oauth/$defs/oauth_http_parameters/$defs/query_string": close({
		is_value_secret?: bool
		key?:             string
		value?:           string
	})

	_#defs: "/$defs/invocation_connectivity_parameters/$defs/resource_parameters": close({
		resource_association_arn?:   string
		resource_configuration_arn!: string
	})
}
