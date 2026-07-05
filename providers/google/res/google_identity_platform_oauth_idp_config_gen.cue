package res

import "list"

google_identity_platform_oauth_idp_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_identity_platform_oauth_idp_config")
	close({
		response_type?: matchN(1, [#response_type, list.MaxItems(1) & [...#response_type]])
		timeouts?: #timeouts

		// The client id of an OAuth client.
		client_id!: string

		// The client secret of the OAuth client, to enable OIDC code flow.
		client_secret?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Human friendly display name.
		display_name?: string

		// If this config allows users to sign in with the provider.
		enabled?: bool
		id?:      string

		// For OIDC Idps, the issuer identifier.
		issuer!: string

		// The name of the OauthIdpConfig. Must start with 'oidc.'.
		name!:    string
		project?: string
	})

	#response_type: close({
		// If true, authorization code is returned from IdP's authorization endpoint.
		code?: bool

		// If true, ID token is returned from IdP's authorization endpoint.
		id_token?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
