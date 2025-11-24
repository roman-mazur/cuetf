package res

import "list"

#google_dialogflow_cx_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dialogflow_cx_webhook")
	close({
		// Indicates whether the webhook is disabled.
		disabled?: bool

		// The human-readable name of the webhook, unique within the
		// agent.
		display_name!: string

		// Deprecated. Indicates if automatic spell correction is enabled
		// in detect intent requests.
		enable_spell_correction?: bool

		// Deprecated. Determines whether this agent should log
		// conversation queries.
		enable_stackdriver_logging?: bool
		id?:                         string

		// The unique identifier of the webhook.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/webhooks/<Webhook ID>.
		name?: string

		// The agent to create a webhook for.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>.
		parent?: string
		generic_web_service?: matchN(1, [#generic_web_service, list.MaxItems(1) & [...#generic_web_service]])
		service_directory?: matchN(1, [#service_directory, list.MaxItems(1) & [...#service_directory]])
		timeouts?: #timeouts

		// Deprecated. Name of the SecuritySettings reference for the
		// agent. Format: projects/<Project ID>/locations/<Location
		// ID>/securitySettings/<Security Settings ID>.
		security_settings?: string

		// Deprecated. Name of the start flow in this agent. A start flow
		// will be automatically created when the agent is created, and
		// can only be deleted by deleting the agent. Format:
		// projects/<Project ID>/locations/<Location ID>/agents/<Agent
		// ID>/flows/<Flow ID>.
		start_flow?: string

		// Webhook execution timeout.
		timeout?: string
	})

	#generic_web_service: close({
		// Specifies a list of allowed custom CA certificates (in DER
		// format) for
		// HTTPS verification. This overrides the default SSL trust store.
		// If this
		// is empty or unspecified, Dialogflow will use Google's default
		// trust store
		// to verify certificates.
		// N.B. Make sure the HTTPS server certificates are signed with
		// "subject alt
		// name". For instance a certificate can be self-signed using the
		// following
		// command,
		// openssl x509 -req -days 200 -in example.com.csr \
		// -signkey example.com.key \
		// -out example.com.crt \
		// -extfile <(printf "\nsubjectAltName='DNS:www.example.com'")
		allowed_ca_certs?: [...string]

		// HTTP method for the flexible webhook calls. Standard webhook
		// always uses
		// POST. Possible values: ["POST", "GET", "HEAD", "PUT", "DELETE",
		// "PATCH", "OPTIONS"]
		http_method?: string

		// Maps the values extracted from specific fields of the flexible
		// webhook
		// response into session parameters.
		// - Key: session parameter name
		// - Value: field path in the webhook response
		parameter_mapping?: [string]: string

		// Defines a custom JSON object as request body to send to
		// flexible webhook.
		request_body?: string

		// The HTTP request headers to send together with webhook
		// requests.
		request_headers?: [string]: string

		// The SecretManager secret version resource storing the
		// username:password
		// pair for HTTP Basic authentication.
		// Format:
		// 'projects/{project}/secrets/{secret}/versions/{version}'
		secret_version_for_username_password?: string
		oauth_config?: matchN(1, [_#defs."/$defs/generic_web_service/$defs/oauth_config", list.MaxItems(1) & [..._#defs."/$defs/generic_web_service/$defs/oauth_config"]])
		secret_versions_for_request_headers?: matchN(1, [_#defs."/$defs/generic_web_service/$defs/secret_versions_for_request_headers", [..._#defs."/$defs/generic_web_service/$defs/secret_versions_for_request_headers"]])

		// Indicate the auth token type generated from the [Diglogflow
		// service
		// agent](https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent).
		// The generated token is sent in the Authorization header.
		// Possible values: ["NONE", "ID_TOKEN", "ACCESS_TOKEN"]
		service_agent_auth?: string

		// The webhook URI for receiving POST requests. It must use https
		// protocol.
		uri!: string

		// Type of the webhook. Possible values: ["STANDARD", "FLEXIBLE"]
		webhook_type?: string
	})

	#service_directory: close({
		generic_web_service?: matchN(1, [_#defs."/$defs/service_directory/$defs/generic_web_service", list.MaxItems(1) & [..._#defs."/$defs/service_directory/$defs/generic_web_service"]])

		// The name of Service Directory service.
		service!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/generic_web_service/$defs/oauth_config": close({
		// The client ID provided by the 3rd party platform.
		client_id!: string

		// The client secret provided by the 3rd party platform. If the
		// 'secret_version_for_client_secret' field is set, this field
		// will be
		// ignored.
		client_secret?: string

		// The OAuth scopes to grant.
		scopes?: [...string]

		// The name of the SecretManager secret version resource storing
		// the
		// client secret. If this field is set, the 'client_secret' field
		// will be
		// ignored.
		// Format:
		// 'projects/{project}/secrets/{secret}/versions/{version}'
		secret_version_for_client_secret?: string

		// The token endpoint provided by the 3rd party platform to
		// exchange an
		// access token.
		token_endpoint!: string
	})

	_#defs: "/$defs/generic_web_service/$defs/secret_versions_for_request_headers": close({
		key!: string

		// The SecretManager secret version resource storing the header
		// value.
		// Format:
		// 'projects/{project}/secrets/{secret}/versions/{version}'
		secret_version!: string
	})

	_#defs: "/$defs/service_directory/$defs/generic_web_service": close({
		// Specifies a list of allowed custom CA certificates (in DER
		// format) for
		// HTTPS verification. This overrides the default SSL trust store.
		// If this
		// is empty or unspecified, Dialogflow will use Google's default
		// trust store
		// to verify certificates.
		// N.B. Make sure the HTTPS server certificates are signed with
		// "subject alt
		// name". For instance a certificate can be self-signed using the
		// following
		// command,
		// openssl x509 -req -days 200 -in example.com.csr \
		// -signkey example.com.key \
		// -out example.com.crt \
		// -extfile <(printf "\nsubjectAltName='DNS:www.example.com'")
		allowed_ca_certs?: [...string]

		// HTTP method for the flexible webhook calls. Standard webhook
		// always uses
		// POST. Possible values: ["POST", "GET", "HEAD", "PUT", "DELETE",
		// "PATCH", "OPTIONS"]
		http_method?: string

		// Maps the values extracted from specific fields of the flexible
		// webhook
		// response into session parameters.
		// - Key: session parameter name
		// - Value: field path in the webhook response
		parameter_mapping?: [string]: string

		// Defines a custom JSON object as request body to send to
		// flexible webhook.
		request_body?: string

		// The HTTP request headers to send together with webhook
		// requests.
		request_headers?: [string]: string

		// The SecretManager secret version resource storing the
		// username:password
		// pair for HTTP Basic authentication.
		// Format:
		// 'projects/{project}/secrets/{secret}/versions/{version}'
		secret_version_for_username_password?: string
		oauth_config?: matchN(1, [_#defs."/$defs/service_directory/$defs/generic_web_service/$defs/oauth_config", list.MaxItems(1) & [..._#defs."/$defs/service_directory/$defs/generic_web_service/$defs/oauth_config"]])
		secret_versions_for_request_headers?: matchN(1, [_#defs."/$defs/service_directory/$defs/generic_web_service/$defs/secret_versions_for_request_headers", [..._#defs."/$defs/service_directory/$defs/generic_web_service/$defs/secret_versions_for_request_headers"]])

		// Indicate the auth token type generated from the [Diglogflow
		// service
		// agent](https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent).
		// The generated token is sent in the Authorization header.
		// Possible values: ["NONE", "ID_TOKEN", "ACCESS_TOKEN"]
		service_agent_auth?: string

		// The webhook URI for receiving POST requests. It must use https
		// protocol.
		uri!: string

		// Type of the webhook. Possible values: ["STANDARD", "FLEXIBLE"]
		webhook_type?: string
	})

	_#defs: "/$defs/service_directory/$defs/generic_web_service/$defs/oauth_config": close({
		// The client ID provided by the 3rd party platform.
		client_id!: string

		// The client secret provided by the 3rd party platform. If the
		// 'secret_version_for_client_secret' field is set, this field
		// will be
		// ignored.
		client_secret?: string

		// The OAuth scopes to grant.
		scopes?: [...string]

		// The name of the SecretManager secret version resource storing
		// the
		// client secret. If this field is set, the 'client_secret' field
		// will be
		// ignored.
		// Format:
		// 'projects/{project}/secrets/{secret}/versions/{version}'
		secret_version_for_client_secret?: string

		// The token endpoint provided by the 3rd party platform to
		// exchange an
		// access token.
		token_endpoint!: string
	})

	_#defs: "/$defs/service_directory/$defs/generic_web_service/$defs/secret_versions_for_request_headers": close({
		key!: string

		// The SecretManager secret version resource storing the header
		// value.
		// Format:
		// 'projects/{project}/secrets/{secret}/versions/{version}'
		secret_version!: string
	})
}
