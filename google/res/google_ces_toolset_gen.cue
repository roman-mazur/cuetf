package res

import "list"

#google_ces_toolset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_ces_toolset")
	close({
		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		app!: string

		// Timestamp when the toolset was created.
		create_time?: string

		// The description of the toolset.
		description?: string

		// The display name of the toolset. Must be unique within the same
		// app.
		display_name?: string

		// ETag used to ensure the object hasn't changed during a
		// read-modify-write
		// operation. If the etag is empty, the update will overwrite any
		// concurrent
		// changes.
		etag?: string

		// Possible values:
		// SYNCHRONOUS
		// ASYNCHRONOUS
		execution_type?: string
		id?:             string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string
		mcp_toolset?: matchN(1, [#mcp_toolset, list.MaxItems(1) & [...#mcp_toolset]])
		open_api_toolset?: matchN(1, [#open_api_toolset, list.MaxItems(1) & [...#open_api_toolset]])
		timeouts?: #timeouts

		// Identifier. The unique identifier of the toolset.
		// Format:
		// 'projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}'
		name?:    string
		project?: string

		// The ID to use for the toolset, which will become the final
		// component of
		// the toolset's resource name. If not provided, a unique ID will
		// be
		// automatically assigned for the toolset.
		toolset_id!: string

		// Timestamp when the toolset was last updated.
		update_time?: string
	})

	#mcp_toolset: close({
		api_authentication?: matchN(1, [_#defs."/$defs/mcp_toolset/$defs/api_authentication", list.MaxItems(1) & [..._#defs."/$defs/mcp_toolset/$defs/api_authentication"]])
		service_directory_config?: matchN(1, [_#defs."/$defs/mcp_toolset/$defs/service_directory_config", list.MaxItems(1) & [..._#defs."/$defs/mcp_toolset/$defs/service_directory_config"]])
		tls_config?: matchN(1, [_#defs."/$defs/mcp_toolset/$defs/tls_config", list.MaxItems(1) & [..._#defs."/$defs/mcp_toolset/$defs/tls_config"]])

		// The address of the MCP server, for example,
		// "https://example.com/mcp/". If
		// the server is built with the MCP SDK, the url should be
		// suffixed with
		// "/mcp/". Only Streamable HTTP transport based servers are
		// supported. See
		// https://modelcontextprotocol.io/specification/2025-03-26/basic/transports#streamable-http
		// for more details.
		server_address!: string
	})

	#open_api_toolset: close({
		// If true, the agent will ignore unknown fields in the API
		// response for all
		// operations defined in the OpenAPI schema.
		ignore_unknown_fields?: bool
		api_authentication?: matchN(1, [_#defs."/$defs/open_api_toolset/$defs/api_authentication", list.MaxItems(1) & [..._#defs."/$defs/open_api_toolset/$defs/api_authentication"]])

		// The OpenAPI schema of the toolset.
		open_api_schema!: string

		// The server URL of the Open API schema.
		// This field is only set in toolsets in the environment
		// dependencies
		// during the export process if the schema contains a server url.
		// During the import process, if this url is present in the
		// environment dependencies
		// and the schema has the $env_var placeholder,
		// it will replace the placeholder in the schema.
		url?: string
		service_directory_config?: matchN(1, [_#defs."/$defs/open_api_toolset/$defs/service_directory_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_toolset/$defs/service_directory_config"]])
		tls_config?: matchN(1, [_#defs."/$defs/open_api_toolset/$defs/tls_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_toolset/$defs/tls_config"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/mcp_toolset/$defs/api_authentication": close({
		api_key_config?: matchN(1, [_#defs."/$defs/mcp_toolset/$defs/api_authentication/$defs/api_key_config", list.MaxItems(1) & [..._#defs."/$defs/mcp_toolset/$defs/api_authentication/$defs/api_key_config"]])
		bearer_token_config?: matchN(1, [_#defs."/$defs/mcp_toolset/$defs/api_authentication/$defs/bearer_token_config", list.MaxItems(1) & [..._#defs."/$defs/mcp_toolset/$defs/api_authentication/$defs/bearer_token_config"]])
		oauth_config?: matchN(1, [_#defs."/$defs/mcp_toolset/$defs/api_authentication/$defs/oauth_config", list.MaxItems(1) & [..._#defs."/$defs/mcp_toolset/$defs/api_authentication/$defs/oauth_config"]])
		service_account_auth_config?: matchN(1, [_#defs."/$defs/mcp_toolset/$defs/api_authentication/$defs/service_account_auth_config", list.MaxItems(1) & [..._#defs."/$defs/mcp_toolset/$defs/api_authentication/$defs/service_account_auth_config"]])
		service_agent_id_token_auth_config?: matchN(1, [_#defs."/$defs/mcp_toolset/$defs/api_authentication/$defs/service_agent_id_token_auth_config", list.MaxItems(1) & [..._#defs."/$defs/mcp_toolset/$defs/api_authentication/$defs/service_agent_id_token_auth_config"]])
	})

	_#defs: "/$defs/mcp_toolset/$defs/api_authentication/$defs/api_key_config": close({
		// The name of the SecretManager secret version resource storing
		// the API key.
		// Format:
		// 'projects/{project}/secrets/{secret}/versions/{version}'
		// Note: You should grant 'roles/secretmanager.secretAccessor'
		// role to the CES
		// service agent
		// 'service-@gcp-sa-ces.iam.gserviceaccount.com'.
		api_key_secret_version!: string

		// The parameter name or the header name of the API key.
		// E.g., If the API request is
		// "https://example.com/act?X-Api-Key=", "X-Api-Key" would be the
		// parameter name.
		key_name!: string

		// Key location in the request. For API key auth on MCP toolsets,
		// the API key can only be sent in the request header.
		// Possible values:
		// HEADER
		request_location!: string
	})

	_#defs: "/$defs/mcp_toolset/$defs/api_authentication/$defs/bearer_token_config": close({
		token?: string
	})

	_#defs: "/$defs/mcp_toolset/$defs/api_authentication/$defs/oauth_config": close({
		// The client ID from the OAuth provider.
		client_id!: string

		// The name of the SecretManager secret version resource storing
		// the
		// client secret.
		// Format:
		// 'projects/{project}/secrets/{secret}/versions/{version}'
		//
		// Note: You should grant 'roles/secretmanager.secretAccessor'
		// role to the CES
		// service agent
		// 'service-@gcp-sa-ces.iam.gserviceaccount.com'.
		client_secret_version!: string

		// OAuth grant types.
		// Possible values:
		// CLIENT_CREDENTIAL
		oauth_grant_type!: string

		// The OAuth scopes to grant.
		scopes?: [...string]

		// The token endpoint in the OAuth provider to exchange for an
		// access token.
		token_endpoint!: string
	})

	_#defs: "/$defs/mcp_toolset/$defs/api_authentication/$defs/service_account_auth_config": close({
		// The email address of the service account used for
		// authenticatation. CES
		// uses this service account to exchange an access token and the
		// access token
		// is then sent in the 'Authorization' header of the request.
		//
		// The service account must have the
		// 'roles/iam.serviceAccountTokenCreator' role granted to the
		// CES service agent
		// 'service-@gcp-sa-ces.iam.gserviceaccount.com'.
		service_account!: string
	})

	_#defs: "/$defs/mcp_toolset/$defs/api_authentication/$defs/service_agent_id_token_auth_config": close({})

	_#defs: "/$defs/mcp_toolset/$defs/service_directory_config": close({
		// The name of [Service
		// Directory](https://cloud.google.com/service-directory) service.
		// Format:
		// 'projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}'.
		// Location of the service directory must be the same as the
		// location of the
		// app.
		service!: string
	})

	_#defs: "/$defs/mcp_toolset/$defs/tls_config": close({
		ca_certs!: matchN(1, [_#defs."/$defs/mcp_toolset/$defs/tls_config/$defs/ca_certs", [_, ...] & [..._#defs."/$defs/mcp_toolset/$defs/tls_config/$defs/ca_certs"]])
	})

	_#defs: "/$defs/mcp_toolset/$defs/tls_config/$defs/ca_certs": close({
		// The allowed custom CA certificates (in DER format) for
		// HTTPS verification. This overrides the default SSL trust store.
		// If this
		// is empty or unspecified, CES will use Google's default trust
		// store to verify certificates. N.B. Make sure the HTTPS server
		// certificates are signed with "subject alt name". For instance a
		// certificate can be self-signed using the following command,
		// openssl x509 -req -days 200 -in example.com.csr \
		// -signkey example.com.key \
		// -out example.com.crt \
		// -extfile <(printf "\nsubjectAltName='DNS:www.example.com'")
		cert!: string

		// The name of the allowed custom CA certificates. This
		// can be used to disambiguate the custom CA certificates.
		display_name!: string
	})

	_#defs: "/$defs/open_api_toolset/$defs/api_authentication": close({
		api_key_config?: matchN(1, [_#defs."/$defs/open_api_toolset/$defs/api_authentication/$defs/api_key_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_toolset/$defs/api_authentication/$defs/api_key_config"]])
		bearer_token_config?: matchN(1, [_#defs."/$defs/open_api_toolset/$defs/api_authentication/$defs/bearer_token_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_toolset/$defs/api_authentication/$defs/bearer_token_config"]])
		oauth_config?: matchN(1, [_#defs."/$defs/open_api_toolset/$defs/api_authentication/$defs/oauth_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_toolset/$defs/api_authentication/$defs/oauth_config"]])
		service_account_auth_config?: matchN(1, [_#defs."/$defs/open_api_toolset/$defs/api_authentication/$defs/service_account_auth_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_toolset/$defs/api_authentication/$defs/service_account_auth_config"]])
		service_agent_id_token_auth_config?: matchN(1, [_#defs."/$defs/open_api_toolset/$defs/api_authentication/$defs/service_agent_id_token_auth_config", list.MaxItems(1) & [..._#defs."/$defs/open_api_toolset/$defs/api_authentication/$defs/service_agent_id_token_auth_config"]])
	})

	_#defs: "/$defs/open_api_toolset/$defs/api_authentication/$defs/api_key_config": close({
		// The name of the SecretManager secret version resource storing
		// the API key.
		// Format:
		// 'projects/{project}/secrets/{secret}/versions/{version}'
		// Note: You should grant 'roles/secretmanager.secretAccessor'
		// role to the CES
		// service agent
		// 'service-@gcp-sa-ces.iam.gserviceaccount.com'.
		api_key_secret_version!: string

		// The parameter name or the header name of the API key.
		// E.g., If the API request is
		// "https://example.com/act?X-Api-Key=", "X-Api-Key" would be the
		// parameter name.
		key_name!: string

		// Key location in the request.
		// Possible values:
		// HEADER
		// QUERY_STRING
		request_location!: string
	})

	_#defs: "/$defs/open_api_toolset/$defs/api_authentication/$defs/bearer_token_config": close({
		token?: string
	})

	_#defs: "/$defs/open_api_toolset/$defs/api_authentication/$defs/oauth_config": close({
		// The client ID from the OAuth provider.
		client_id!: string

		// The name of the SecretManager secret version resource storing
		// the
		// client secret.
		// Format:
		// 'projects/{project}/secrets/{secret}/versions/{version}'
		//
		// Note: You should grant 'roles/secretmanager.secretAccessor'
		// role to the CES
		// service agent
		// 'service-@gcp-sa-ces.iam.gserviceaccount.com'.
		client_secret_version!: string

		// OAuth grant types.
		// Possible values:
		// CLIENT_CREDENTIAL
		oauth_grant_type!: string

		// The OAuth scopes to grant.
		scopes?: [...string]

		// The token endpoint in the OAuth provider to exchange for an
		// access token.
		token_endpoint!: string
	})

	_#defs: "/$defs/open_api_toolset/$defs/api_authentication/$defs/service_account_auth_config": close({
		// The email address of the service account used for
		// authenticatation. CES
		// uses this service account to exchange an access token and the
		// access token
		// is then sent in the 'Authorization' header of the request.
		//
		// The service account must have the
		// 'roles/iam.serviceAccountTokenCreator' role granted to the
		// CES service agent
		// 'service-@gcp-sa-ces.iam.gserviceaccount.com'.
		service_account!: string
	})

	_#defs: "/$defs/open_api_toolset/$defs/api_authentication/$defs/service_agent_id_token_auth_config": close({})

	_#defs: "/$defs/open_api_toolset/$defs/service_directory_config": close({
		// The name of [Service
		// Directory](https://cloud.google.com/service-directory) service.
		// Format:
		// 'projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}'.
		// Location of the service directory must be the same as the
		// location of the
		// app.
		service!: string
	})

	_#defs: "/$defs/open_api_toolset/$defs/tls_config": close({
		ca_certs!: matchN(1, [_#defs."/$defs/open_api_toolset/$defs/tls_config/$defs/ca_certs", [_, ...] & [..._#defs."/$defs/open_api_toolset/$defs/tls_config/$defs/ca_certs"]])
	})

	_#defs: "/$defs/open_api_toolset/$defs/tls_config/$defs/ca_certs": close({
		// The allowed custom CA certificates (in DER format) for
		// HTTPS verification. This overrides the default SSL trust store.
		// If this
		// is empty or unspecified, CES will use Google's default trust
		// store to verify certificates. N.B. Make sure the HTTPS server
		// certificates are signed with "subject alt name". For instance a
		// certificate can be self-signed using the following command,
		// openssl x509 -req -days 200 -in example.com.csr \
		// -signkey example.com.key \
		// -out example.com.crt \
		// -extfile <(printf "\nsubjectAltName='DNS:www.example.com'")
		cert!: string

		// The name of the allowed custom CA certificates. This
		// can be used to disambiguate the custom CA certificates.
		display_name!: string
	})
}
