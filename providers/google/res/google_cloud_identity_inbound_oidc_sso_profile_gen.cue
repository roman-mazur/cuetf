package res

import "list"

google_cloud_identity_inbound_oidc_sso_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_cloud_identity_inbound_oidc_sso_profile")
	close({
		idp_config!: matchN(1, [#idp_config, list.MaxItems(1) & [_, ...] & [...#idp_config]])
		rp_config?: matchN(1, [#rp_config, list.MaxItems(1) & [...#rp_config]])
		timeouts?: #timeouts

		// The customer. For example: 'customers/C0123abc'. If omitted, the customer of the caller is used.
		customer?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Human-readable name of the OIDC SSO profile.
		display_name?: string
		id?:           string

		// The server-assigned ID of the OIDC SSO profile (the last segment of 'name').
		inbound_oidc_sso_profile_id?: string

		// Resource name of the OIDC SSO profile, in the format
		// 'inboundOidcSsoProfiles/{inbound_oidc_sso_profile_id}'.
		name?: string
	})

	#idp_config: close({
		// The **Change Password URL** of the identity provider. Users will be sent to this URL
		// when changing their passwords at 'myaccount.google.com'. This takes precedence over
		// the change password URL configured at customer-level. Must use 'HTTPS'.
		change_password_uri?: string

		// The Issuer identifier for the IdP. Must be a URL. The discovery URL will be derived
		// from this as described in Section 4 of the OIDC specification.
		issuer_uri!: string
	})

	#rp_config: close({
		// OAuth2 client ID for OIDC. Must be set together with 'client_secret'.
		client_id?: string

		// Input only. OAuth2 client secret for OIDC. Must be set together with 'client_id'.
		client_secret?: string

		// The URL(s) that this client may use in authentication requests.
		redirect_uris?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
