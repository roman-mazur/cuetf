package res

import "list"

google_agent_identity_auth_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_agent_identity_auth_provider")
	close({
		auth_provider_type_params!: matchN(1, [#auth_provider_type_params, list.MaxItems(1) & [_, ...] & [...#auth_provider_type_params]])
		timeouts?: #timeouts

		// List of scopes that are allowed to be requested for this auth_provider.
		// If this list is non-empty, only scopes within this list may be requested.
		// If this list is empty, all scopes may be requested.
		// Scopes appearing in 'blocked_scopes' are disallowed even if they appear in
		// 'allowed_scopes'.
		// The number of allowed scopes is limited to 200.
		allowed_scopes?: [...string]

		// The ID to use for the AuthProvider, which will become the final segment
		// of the AuthProvider's resource name.
		// This value should be 1-63 characters, and valid characters
		// are /a-z-/. The first character must be a lowercase letter, and the
		// last character must be a lowercase letter or a number.
		auth_provider_id!: string

		// List of scopes that are blocked from being requested for this
		// auth_provider. If a scope appears in this list, it will not be requested,
		// even if it also appears in 'allowed_scopes'. 'blocked_scopes' takes
		// precedence over 'allowed_scopes'. The number of blocked scopes is limited
		// to 200.
		blocked_scopes?: [...string]

		// [Output only] Create time stamp
		create_time?: string

		// This is set to true if the auth_provider is deleted.
		deleted?: bool

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Description of the resource.
		// Must be less than 256 characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// The time when the auth_provider will expire.
		expire_time?: string
		id?:          string

		// Labels as key value pairs
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Identifier. The full resource name of the auth_provider. Format:
		// projects/{project}/locations/{location}/authProviders/{auth_provider}
		name?: string

		// The state of the auth_provider.
		// Possible values:
		// ENABLED
		// DISABLED
		state?:   string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// [Output only] Update time stamp
		update_time?: string

		// Input only. Represents the workload identity in IAM 'principal://' format of the
		// agent(s) that will use this AuthProvider. Example:
		// 'principal://agents.global.org-${ORG_ID}.system.id.goog/resources/aiplatform/projects/{PROJECT_ID}/locations/{LOCATIONS}/reasoningEngines/{ID}'
		workload_ids?: [...string]
	})

	#auth_provider_type_params: close({
		api_key?: matchN(1, [_#defs."/$defs/auth_provider_type_params/$defs/api_key", list.MaxItems(1) & [..._#defs."/$defs/auth_provider_type_params/$defs/api_key"]])
		three_legged_oauth?: matchN(1, [_#defs."/$defs/auth_provider_type_params/$defs/three_legged_oauth", list.MaxItems(1) & [..._#defs."/$defs/auth_provider_type_params/$defs/three_legged_oauth"]])
		two_legged_oauth?: matchN(1, [_#defs."/$defs/auth_provider_type_params/$defs/two_legged_oauth", list.MaxItems(1) & [..._#defs."/$defs/auth_provider_type_params/$defs/two_legged_oauth"]])

		// Message describing GeminiEnterpriseAuthProviderParams object.
		// Since GeminiEnterpriseAuthProviderParams currently takes no subfields,
		// defining this empty block selects the ge_auth_provider type.
		ge_auth_provider?: [...close({})]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/auth_provider_type_params/$defs/api_key": close({
		// Input only. The API key for this auth_provider.
		api_key?: string
	})

	_#defs: "/$defs/auth_provider_type_params/$defs/three_legged_oauth": close({
		// The authorization endpoint to send users to for consenting to delegate
		// to the agent.
		// eg. "https://auth.atlassian.com/authorize"
		authorization_url?: string

		// The client ID of the OAuth client.
		client_id?: string

		// Input only. The client secret of the OAuth client.
		client_secret?: string

		// Input only. The client secret of the OAuth client.
		client_secret_wo?: string

		// Triggers update of 'client_secret_wo' write-only. Increment this value when
		// an update to 'client_secret_wo' is needed. For more info see [updating
		// write-only
		// arguments](/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
		client_secret_wo_version?: string

		// The default continue URI for 3LO flow and it will be used when no continue
		// URI is provided in the RetrieveCredentials request.
		default_continue_uri?: string

		// Enables Proof Key for Code Exchange (PKCE) for the OAuth flow to prevent
		// authorization code interception attacks.
		enable_pkce?: bool

		// The redirect URL this auth_provider uses for the OAuth exchange.
		// This is deterministic based on the name of the auth_provider.
		redirect_url?: string

		// The token endpoint for requesting tokens on behalf of an end user.
		// eg. "https://auth.atlassian.com/oauth/token"
		token_url?: string
	})

	_#defs: "/$defs/auth_provider_type_params/$defs/two_legged_oauth": close({
		// The client ID of the OAuth client.
		client_id?: string

		// Input only. The client secret of the OAuth client.
		client_secret?: string

		// Input only. The client secret of the OAuth client.
		client_secret_wo?: string

		// Triggers update of 'client_secret_wo' write-only. Increment this value when
		// an update to 'client_secret_wo' is needed. For more info see [updating
		// write-only
		// arguments](/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
		client_secret_wo_version?: string

		// The token endpoint of the OAuth client.
		token_url?: string
	})
}
