package res

import "list"

google_cloud_identity_inbound_saml_sso_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_cloud_identity_inbound_saml_sso_profile")
	close({
		idp_config!: matchN(1, [#idp_config, list.MaxItems(1) & [_, ...] & [...#idp_config]])
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

		// Human-readable name of the SAML SSO profile.
		display_name?: string
		id?:           string

		// The server-assigned ID of the SAML SSO profile (the last segment of
		// 'name').
		inbound_saml_sso_profile_id?: string

		// Resource name of the SAML SSO profile, assigned by the server.
		// Format: 'inboundSamlSsoProfiles/{inbound_saml_sso_profile_id}'.
		name?: string

		// SAML service provider configuration for this SAML SSO profile. These are the service
		// provider details provided by Google that should be configured on the corresponding
		// identity provider.
		sp_config?: [...close({
			assertion_consumer_service_uri?: string
			entity_id?:                      string
		})]
	})

	#idp_config: close({
		// The **Change Password URL** of the identity provider. Users will be sent to this URL
		// when changing their passwords at 'myaccount.google.com'. This takes precedence over
		// the change password URL configured at customer-level. Must use 'HTTPS'.
		change_password_uri?: string

		// The SAML **Entity ID** of the identity provider.
		entity_id!: string

		// The **Logout Redirect URL** (sign-out page URL) of the identity provider. When a user
		// clicks the sign-out link on a Google page, they will be redirected to this URL. This is
		// a pure redirect with no attached SAML 'LogoutRequest' i.e. SAML single logout is not
		// supported. Must use 'HTTPS'.
		logout_redirect_uri?: string

		// The 'SingleSignOnService' endpoint location (sign-in page URL) of the identity provider.
		// This is the URL where the 'AuthnRequest' will be sent. Must use 'HTTPS'.
		// Assumed to accept the 'HTTP-Redirect' binding.
		single_sign_on_service_uri!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
