package res

import "list"

#google_dialogflow_cx_tool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dialogflow_cx_tool")
	close({
		// High level description of the Tool and its usage.
		description!: string
		data_store_spec?: matchN(1, [#data_store_spec, list.MaxItems(1) & [...#data_store_spec]])

		// The human-readable name of the tool, unique within the agent.
		display_name!: string
		id?:           string
		function_spec?: matchN(1, [#function_spec, list.MaxItems(1) & [...#function_spec]])

		// The unique identifier of the Tool.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/tools/<Tool ID>.
		name?: string
		open_api_spec?: matchN(1, [#open_api_spec, list.MaxItems(1) & [...#open_api_spec]])
		timeouts?: #timeouts

		// The agent to create a Tool for.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>.
		parent?: string

		// The tool type.
		tool_type?: string
	})

	#data_store_spec: close({
		data_store_connections!: matchN(1, [_#defs."/$defs/data_store_spec/$defs/data_store_connections", [_, ...] & [..._#defs."/$defs/data_store_spec/$defs/data_store_connections"]])
		fallback_prompt!: matchN(1, [_#defs."/$defs/data_store_spec/$defs/fallback_prompt", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_store_spec/$defs/fallback_prompt"]])
	})

	#function_spec: close({
		// Optional. The JSON schema is encapsulated in a
		// [google.protobuf.Struct](https://protobuf.dev/reference/protobuf/google.protobuf/#struct)
		// to describe the input of the function.
		// This input is a JSON object that contains the function's
		// parameters as properties of the object
		input_schema?: string

		// Optional. The JSON schema is encapsulated in a
		// [google.protobuf.Struct](https://protobuf.dev/reference/protobuf/google.protobuf/#struct)
		// to describe the output of the function.
		// This output is a JSON object that contains the function's
		// parameters as properties of the object
		output_schema?: string
	})

	#open_api_spec: close({
		authentication?: matchN(1, [_#defs."/$defs/open_api_spec/$defs/authentication", list.MaxItems(1) & [..._#defs."/$defs/open_api_spec/$defs/authentication"]])
		service_directory_config?: matchN(1, [_#defs."/$defs/open_api_spec/$defs/service_directory_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_spec/$defs/service_directory_config"]])
		tls_config?: matchN(1, [_#defs."/$defs/open_api_spec/$defs/tls_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_spec/$defs/tls_config"]])

		// The OpenAPI schema specified as a text.
		// This field is part of a union field 'schema': only one of
		// 'textSchema' may be set.
		text_schema!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/data_store_spec/$defs/data_store_connections": close({
		// The full name of the referenced data store. Formats:
		// projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore}
		// projects/{project}/locations/{location}/dataStores/{dataStore}
		data_store?: string

		// The type of the connected data store.
		// See
		// [DataStoreType](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/DataStoreConnection#datastoretype)
		// for valid values.
		data_store_type?: string

		// The document processing mode for the data store connection.
		// Should only be set for PUBLIC_WEB and UNSTRUCTURED data
		// stores. If not set it is considered as DOCUMENTS, as this is
		// the legacy mode.
		// See
		// [DocumentProcessingMode](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/DataStoreConnection#documentprocessingmode)
		// for valid values.
		document_processing_mode?: string
	})

	_#defs: "/$defs/data_store_spec/$defs/fallback_prompt": close({})

	_#defs: "/$defs/open_api_spec/$defs/authentication": close({
		api_key_config?: matchN(1, [_#defs."/$defs/open_api_spec/$defs/authentication/$defs/api_key_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_spec/$defs/authentication/$defs/api_key_config"]])
		bearer_token_config?: matchN(1, [_#defs."/$defs/open_api_spec/$defs/authentication/$defs/bearer_token_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_spec/$defs/authentication/$defs/bearer_token_config"]])
		oauth_config?: matchN(1, [_#defs."/$defs/open_api_spec/$defs/authentication/$defs/oauth_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_spec/$defs/authentication/$defs/oauth_config"]])
		service_agent_auth_config?: matchN(1, [_#defs."/$defs/open_api_spec/$defs/authentication/$defs/service_agent_auth_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_spec/$defs/authentication/$defs/service_agent_auth_config"]])
	})

	_#defs: "/$defs/open_api_spec/$defs/authentication/$defs/api_key_config": close({
		// Optional. The API key. If the 'secretVersionForApiKey'' field
		// is set, this field will be ignored.
		api_key?: string

		// The parameter name or the header name of the API key.
		// E.g., If the API request is
		// "https://example.com/act?X-Api-Key=", "X-Api-Key" would be the
		// parameter name.
		key_name!: string

		// Key location in the request.
		// See
		// [RequestLocation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools#requestlocation)
		// for valid values.
		request_location!: string

		// Optional. The name of the SecretManager secret version resource
		// storing the API key.
		// If this field is set, the apiKey field will be ignored.
		// Format: projects/{project}/secrets/{secret}/versions/{version}
		secret_version_for_api_key?: string
	})

	_#defs: "/$defs/open_api_spec/$defs/authentication/$defs/bearer_token_config": close({
		// Optional. The name of the SecretManager secret version resource
		// storing the Bearer token. If this field is set, the 'token'
		// field will be ignored.
		// Format: projects/{project}/secrets/{secret}/versions/{version}
		secret_version_for_token?: string

		// Optional. The text token appended to the text Bearer to the
		// request Authorization header.
		// [Session parameters
		// reference](https://cloud.google.com/dialogflow/cx/docs/concept/parameter#session-ref)
		// can be used to pass the token dynamically, e.g.
		// '$session.params.parameter-id'.
		token?: string
	})

	_#defs: "/$defs/open_api_spec/$defs/authentication/$defs/oauth_config": close({
		// The client ID from the OAuth provider.
		client_id!: string

		// Optional. The client secret from the OAuth provider. If the
		// 'secretVersionForClientSecret' field is set, this field will
		// be ignored.
		client_secret?: string

		// OAuth grant types.
		// See
		// [OauthGrantType](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools#oauthgranttype)
		// for valid values
		oauth_grant_type!: string

		// Optional. The OAuth scopes to grant.
		scopes?: [...string]

		// Optional. The name of the SecretManager secret version resource
		// storing the client secret.
		// If this field is set, the clientSecret field will be ignored.
		// Format: projects/{project}/secrets/{secret}/versions/{version}
		secret_version_for_client_secret?: string

		// The token endpoint in the OAuth provider to exchange for an
		// access token.
		token_endpoint!: string
	})

	_#defs: "/$defs/open_api_spec/$defs/authentication/$defs/service_agent_auth_config": close({
		// Optional. Indicate the auth token type generated from the
		// Diglogflow service agent.
		// The generated token is sent in the Authorization header.
		// See
		// [ServiceAgentAuth](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools#serviceagentauth)
		// for valid values.
		service_agent_auth?: string
	})

	_#defs: "/$defs/open_api_spec/$defs/service_directory_config": close({
		// The name of [Service
		// Directory](https://cloud.google.com/service-directory/docs)
		// service.
		// Format:
		// projects/<ProjectID>/locations/<LocationID>/namespaces/<NamespaceID>/services/<ServiceID>.
		// LocationID of the service directory must be the same as the
		// location of the agent.
		service!: string
	})

	_#defs: "/$defs/open_api_spec/$defs/tls_config": close({
		ca_certs!: matchN(1, [_#defs."/$defs/open_api_spec/$defs/tls_config/$defs/ca_certs", [_, ...] & [..._#defs."/$defs/open_api_spec/$defs/tls_config/$defs/ca_certs"]])
	})

	_#defs: "/$defs/open_api_spec/$defs/tls_config/$defs/ca_certs": close({
		// The allowed custom CA certificates (in DER format) for HTTPS
		// verification. This overrides the default SSL trust store.
		// If this is empty or unspecified, Dialogflow will use Google's
		// default trust store to verify certificates.
		// N.B. Make sure the HTTPS server certificates are signed with
		// "subject alt name".
		// For instance a certificate can be self-signed using the
		// following command:
		// '''
		// openssl x509 -req -days 200 -in example.com.csr \
		// -signkey example.com.key \
		// -out example.com.crt \
		// -extfile <(printf "\nsubjectAltName='DNS:www.example.com'")
		// '''
		// A base64-encoded string.
		cert!: string

		// The name of the allowed custom CA certificates. This can be
		// used to disambiguate the custom CA certificates.
		display_name!: string
	})
}
