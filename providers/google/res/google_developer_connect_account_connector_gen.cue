package res

import "list"

#google_developer_connect_account_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_developer_connect_account_connector")
	close({
		custom_oauth_config?: matchN(1, [#custom_oauth_config, list.MaxItems(1) & [...#custom_oauth_config]])
		provider_oauth_config?: matchN(1, [#provider_oauth_config, list.MaxItems(1) & [...#provider_oauth_config]])
		proxy_config?: matchN(1, [#proxy_config, list.MaxItems(1) & [...#proxy_config]])
		timeouts?: #timeouts

		// The ID to use for the AccountConnector, which will become the
		// final
		// component of the AccountConnector's resource name. Its format
		// should adhere
		// to https://google.aip.dev/122#resource-id-segments Names must
		// be unique
		// per-project per-location.
		account_connector_id!: string

		// Allows users to store small amounts of arbitrary data.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// The timestamp when the accountConnector was created.
		create_time?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// This checksum is computed by the server based on the value of
		// other
		// fields, and may be sent on update and delete requests to ensure
		// the
		// client has an up-to-date value before proceeding.
		etag?: string
		id?:   string

		// Labels as key value pairs
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. The resource name of the accountConnector, in the
		// format
		// 'projects/{project}/locations/{location}/accountConnectors/{account_connector_id}'.
		name?: string

		// Start OAuth flow by clicking on this URL.
		oauth_start_uri?: string
		project?:         string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp when the accountConnector was updated.
		update_time?: string
	})

	#custom_oauth_config: close({
		service_directory_config?: matchN(1, [_#defs."/$defs/custom_oauth_config/$defs/service_directory_config", list.MaxItems(1) & [..._#defs."/$defs/custom_oauth_config/$defs/service_directory_config"]])

		// The OAuth2 authrization server URL.
		auth_uri!: string

		// The client ID of the OAuth application.
		client_id!: string

		// Input only. The client secret of the OAuth application.
		// It will be provided as plain text, but encrypted and stored in
		// developer
		// connect. As INPUT_ONLY field, it will not be included in the
		// output.
		client_secret!: string

		// The host URI of the OAuth application.
		host_uri!: string

		// Disable PKCE for this OAuth config. PKCE is enabled by default.
		pkce_disabled?: bool

		// The type of the SCM provider.
		// Possible values:
		// SCM_PROVIDER_UNKNOWN
		// GITHUB_ENTERPRISE
		// GITLAB_ENTERPRISE
		// BITBUCKET_DATA_CENTER
		scm_provider!: string

		// The scopes to be requested during OAuth.
		scopes!: [...string]

		// SCM server version installed at the host URI.
		server_version?: string

		// SSL certificate to use for requests to a private service.
		ssl_ca_certificate?: string

		// The OAuth2 token request URL.
		token_uri!: string
	})

	#provider_oauth_config: close({
		// User selected scopes to apply to the Oauth config
		// In the event of changing scopes, user records under
		// AccountConnector will
		// be deleted and users will re-auth again.
		scopes!: [...string]

		// Possible values:
		// GITHUB
		// GITLAB
		// GOOGLE
		// SENTRY
		// ROVO
		// NEW_RELIC
		// DATASTAX
		// DYNATRACE
		system_provider_id?: string
	})

	#proxy_config: close({
		// Setting this to true allows the git and http proxies to perform
		// actions on
		// behalf of the user configured under the account connector.
		enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/custom_oauth_config/$defs/service_directory_config": close({
		// The Service Directory service name.
		// Format:
		// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
		service!: string
	})
}
