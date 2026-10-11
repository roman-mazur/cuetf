package res

import "list"

google_dialogflow_tool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dialogflow_tool")
	close({
		connector_spec?: matchN(1, [#connector_spec, list.MaxItems(1) & [...#connector_spec]])
		function_spec?: matchN(1, [#function_spec, list.MaxItems(1) & [...#function_spec]])
		open_api_spec?: matchN(1, [#open_api_spec, list.MaxItems(1) & [...#open_api_spec]])
		timeouts?: #timeouts

		// Optional. Confirmation requirement for the actions. Each key is an action
		// name in the 'action_schemas'.
		// If an action's confirmation requirement is not specified (either the key is
		// not present, or its value is 'CONFIRMATION_REQUIREMENT_UNSPECIFIED'), a
		// default value will be populated depending on the action's method type: GET
		// actions default to 'NOT_REQUIRED', and other actions default to 'REQUIRED'.
		// Valid values are 'REQUIRED' and 'NOT_REQUIRED'.
		action_confirmation_requirement?: [string]: string

		// Output only. Creation time of this tool.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Optional. Human readable description of the tool.
		description?: string

		// Optional. The human-readable name of the tool, unique within the project and location.
		display_name?: string
		id?:           string

		// The location of the tool.
		location!: string

		// The resource name of the tool. Format: 'projects/<Project
		// ID>/locations/<Location ID>/tools/<Tool ID>'.
		name?: string

		// Output only. A read only boolean field reflecting Zone Isolation status of the tool.
		satisfies_pzi?: bool
		project?:       string

		// Output only. A read only boolean field reflecting Zone Separation status of the tool.
		satisfies_pzs?: bool

		// Optional. The ID to use for the tool, which will become the final component
		// of the tool's resource name.
		// The tool ID must be compliant with the regression formula
		// '[a-zA-Z][a-zA-Z0-9_-]*' with the characters length in range of [3,64].
		// If the field is not provided, an Id will be auto-generated.
		tool_id?: string

		// Required. A human readable short name of the tool, which should be unique
		// within the project. It should only contain letters, numbers, and
		// underscores, and it will be used by LLM to identify the tool.
		tool_key!: string

		// Output only. Update time of this tool.
		update_time?: string
	})

	#connector_spec: close({
		actions!: matchN(1, [_#defs."/$defs/connector_spec/$defs/actions", [_, ...] & [..._#defs."/$defs/connector_spec/$defs/actions"]])

		// The full resource name of the referenced Integration Connectors Connection.
		// Format: 'projects/*/locations/*/connections/*'
		name!: string
	})

	#function_spec: close({
		// Optional. The JSON schema is encapsulated in a
		// [google.protobuf.Struct](https://protobuf.dev/reference/protobuf/google.protobuf/#struct)
		// to describe the input of the function.
		// This input is a JSON object that contains the function's parameters as properties of the object.
		input_schema?: string

		// Optional. The method type of the function. If not specified, the default
		// value is GET. Possible values: ["GET", "POST", "PUT", "DELETE", "PATCH"]
		method_type?: string

		// Optional. The JSON schema is encapsulated in a
		// [google.protobuf.Struct](https://protobuf.dev/reference/protobuf/google.protobuf/#struct)
		// to describe the output of the function.
		// This output is a JSON object that contains the function's parameters as properties of the object.
		output_schema?: string
	})

	#open_api_spec: close({
		authentication?: matchN(1, [_#defs."/$defs/open_api_spec/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/open_api_spec/$defs/authentication"]])
		service_directory_config?: matchN(1, [_#defs."/$defs/open_api_spec/$defs/service_directory_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_spec/$defs/service_directory_config"]])
		tls_config?: matchN(1, [_#defs."/$defs/open_api_spec/$defs/tls_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_spec/$defs/tls_config"]])

		// Required. The OpenAPI schema specified as a text.
		// Note: Plays a role in linking the OpenAPI spec with the tool. The
		// 'info.title' field in the OpenAPI schema must match the 'toolKey' of the
		// tool, otherwise the API will overwrite 'info.title' with 'toolKey'.
		text_schema!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/connector_spec/$defs/actions": close({
		entity_operation?: matchN(1, [_#defs."/$defs/connector_spec/$defs/actions/$defs/entity_operation", list.MaxItems(1) & [..._#defs."/$defs/connector_spec/$defs/actions/$defs/entity_operation"]])

		// ID of a Connection action for the tool to use. This field is part of a
		// required union field 'action_spec'.
		connection_action_id?: string

		// Entity fields to use as inputs for the operation.
		// If no fields are specified, all fields of the Entity will be used.
		input_fields?: [...string]

		// Entity fields to return from the operation.
		// If no fields are specified, all fields of the Entity will be returned.
		output_fields?: [...string]
	})

	_#defs: "/$defs/connector_spec/$defs/actions/$defs/entity_operation": close({
		// ID of the entity.
		entity_id!: string

		// The operation to perform on the entity. Possible values: ["LIST", "GET",
		// "CREATE", "UPDATE", "DELETE"]
		operation!: string
	})

	_#defs: "/$defs/open_api_spec/$defs/authentication": close({
		api_key_config?: matchN(1, [_#defs."/$defs/open_api_spec/$defs/authentication/$defs/api_key_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_spec/$defs/authentication/$defs/api_key_config"]])
		bearer_token_config?: matchN(1, [_#defs."/$defs/open_api_spec/$defs/authentication/$defs/bearer_token_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_spec/$defs/authentication/$defs/bearer_token_config"]])
		oauth_config?: matchN(1, [_#defs."/$defs/open_api_spec/$defs/authentication/$defs/oauth_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_spec/$defs/authentication/$defs/oauth_config"]])
		service_agent_auth_config?: matchN(1, [_#defs."/$defs/open_api_spec/$defs/authentication/$defs/service_agent_auth_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_spec/$defs/authentication/$defs/service_agent_auth_config"]])
	})

	_#defs: "/$defs/open_api_spec/$defs/authentication/$defs/api_key_config": close({
		// Optional. The API key. If the 'secretVersionForApiKey' field is set, this field will be ignored.
		api_key?: string

		// The parameter name or the header name of the API key.
		// E.g., If the API request is "https://example.com/act?X-Api-Key=", "X-Api-Key"
		// would be the parameter name.
		key_name!: string

		// Key location in the request. Possible values: ["HEADER", "QUERY_STRING"]
		request_location!: string

		// Optional. The name of the SecretManager secret version resource storing the API key.
		// If this field is set, the 'apiKey' field will be ignored.
		// Format: 'projects/{project}/secrets/{secret}/versions/{version}'
		secret_version_for_api_key?: string
	})

	_#defs: "/$defs/open_api_spec/$defs/authentication/$defs/bearer_token_config": close({
		// Optional. The name of the SecretManager secret version resource storing the Bearer token.
		// If this field is set, the 'token' field will be ignored.
		// Format: 'projects/{project}/secrets/{secret}/versions/{version}'
		secret_version_for_token?: string

		// Optional. The text token appended to the text 'Bearer' to the request Authorization header.
		token?: string
	})

	_#defs: "/$defs/open_api_spec/$defs/authentication/$defs/oauth_config": close({
		// The client ID from the OAuth provider.
		client_id!: string

		// Optional. The client secret from the OAuth provider. If the
		// 'secretVersionForClientSecret' field is set, this field will be ignored.
		client_secret?: string

		// OAuth grant types. Possible values: ["CLIENT_CREDENTIAL"]
		oauth_grant_type!: string

		// Optional. The OAuth scopes to grant.
		scopes?: [...string]

		// Optional. The name of the SecretManager secret version resource storing the client secret.
		// If this field is set, the 'clientSecret' field will be ignored.
		// Format: 'projects/{project}/secrets/{secret}/versions/{version}'
		secret_version_for_client_secret?: string

		// The token endpoint in the OAuth provider to exchange for an access token.
		token_endpoint!: string
	})

	_#defs: "/$defs/open_api_spec/$defs/authentication/$defs/service_agent_auth_config": close({
		// Optional. Indicate the auth token type generated from the Dialogflow service agent.
		// The generated token is sent in the Authorization header. Possible values:
		// ["ID_TOKEN", "ACCESS_TOKEN"]
		service_agent_auth?: string
	})

	_#defs: "/$defs/open_api_spec/$defs/service_directory_config": close({
		// The name of [Service Directory](https://cloud.google.com/service-directory/docs) service.
		// Format:
		// 'projects/<ProjectID>/locations/<LocationID>/namespaces/<NamespaceID>/services/<ServiceID>'.
		// 'LocationID' of the service directory must be the same as the location of the tool.
		service!: string
	})

	_#defs: "/$defs/open_api_spec/$defs/tls_config": close({
		ca_certs!: matchN(1, [_#defs."/$defs/open_api_spec/$defs/tls_config/$defs/ca_certs", [_, ...] & [..._#defs."/$defs/open_api_spec/$defs/tls_config/$defs/ca_certs"]])
	})

	_#defs: "/$defs/open_api_spec/$defs/tls_config/$defs/ca_certs": close({
		// The allowed custom CA certificates (in DER format) for HTTPS verification.
		// This overrides the default SSL trust store.
		// If this is empty or unspecified, Dialogflow will use Google's default trust
		// store to verify certificates.
		// N.B. Make sure the HTTPS server certificates are signed with "subject alt name".
		// A base64-encoded string.
		cert!: string

		// The name of the allowed custom CA certificates. This can be used to
		// disambiguate the custom CA certificates.
		display_name!: string
	})
}
