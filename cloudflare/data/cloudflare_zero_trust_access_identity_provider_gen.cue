package data

#cloudflare_zero_trust_access_identity_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_access_identity_provider")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// The configuration parameters for the identity provider. To view
		// the required parameters for a specific provider, refer to our
		// [developer
		// documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
		config?: close({
			// Your companies TLD
			apps_domain?: string

			// A list of SAML attribute names that will be added to your
			// signed JWT token and can be used in SAML policy rules.
			attributes?: [...string]

			// The authorization_endpoint URL of your IdP
			auth_url?: string

			// Your okta authorization server id
			authorization_server_id?: string

			// Your centrify account url
			centrify_account?: string

			// Your centrify app id
			centrify_app_id?: string

			// The jwks_uri endpoint of your IdP to allow the IdP keys to sign
			// the tokens
			certs_url?: string

			// Custom claims
			claims?: [...string]

			// Your OAuth Client ID
			client_id?: string

			// Your OAuth Client Secret
			client_secret?: string

			// Should Cloudflare try to load authentication contexts from your
			// account
			conditional_access_enabled?: bool

			// Your Azure directory uuid
			directory_id?: string

			// The attribute name for email in the SAML response.
			email_attribute_name?: string

			// The claim name for email in the id_token response.
			email_claim_name?: string

			// Add a list of attribute names that will be returned in the
			// response header from the Access callback.
			header_attributes?: matchN(1, [close({
				// attribute name from the IDP
				attribute_name?: string

				// header that will be added on the request to the origin
				header_name?: string
			}), [...close({
				// attribute name from the IDP
				attribute_name?: string

				// header that will be added on the request to the origin
				header_name?: string
			})]])

			// X509 certificate to verify the signature in the SAML
			// authentication response
			idp_public_certs?: [...string]

			// IdP Entity ID or Issuer URL
			issuer_url?: string

			// Your okta account url
			okta_account?: string

			// Your OneLogin account url
			onelogin_account?: string

			// Your PingOne environment identifier
			ping_env_id?: string

			// Enable Proof Key for Code Exchange (PKCE)
			pkce_enabled?: bool

			// Indicates the type of user interaction that is required.
			// prompt=login forces the user to enter their credentials on
			// that request, negating single-sign on. prompt=none is the
			// opposite. It ensures that the user isn't presented with any
			// interactive prompt. If the request can't be completed silently
			// by using single-sign on, the Microsoft identity platform
			// returns an interaction_required error. prompt=select_account
			// interrupts single sign-on providing account selection
			// experience listing all the accounts either in session or any
			// remembered account or an option to choose to use a different
			// account altogether.
			// Available values: "login", "select_account", "none".
			prompt?:       string
			redirect_url?: string

			// OAuth scopes
			scopes?: [...string]

			// Sign the SAML authentication request with Access credentials.
			// To verify the signature, use the public key from the Access
			// certs endpoints.
			sign_request?: bool

			// URL to send the SAML authentication requests to
			sso_target_url?: string

			// Should Cloudflare try to load groups from your account
			support_groups?: bool

			// The token_endpoint URL of your IdP
			token_url?: string
		})

		// UUID.
		id?: string

		// UUID.
		identity_provider_id?: string

		// The name of the identity provider, shown to users on the login
		// page.
		name?: string

		// The configuration settings for enabling a System for
		// Cross-Domain Identity Management (SCIM) with the identity
		// provider.
		scim_config?: close({
			// A flag to enable or disable SCIM for the identity provider.
			enabled?: bool

			// Indicates how a SCIM event updates a user identity used for
			// policy evaluation. Use "automatic" to automatically update a
			// user's identity and augment it with fields from the SCIM user
			// resource. Use "reauth" to force re-authentication on group
			// membership updates, user identity update will only occur after
			// successful re-authentication. With "reauth" identities will
			// not contain fields from the SCIM user resource. With
			// "no_action" identities will not be changed by SCIM updates in
			// any way and users will not be prompted to reauthenticate.
			// Available values: "automatic", "reauth", "no_action".
			identity_update_behavior?: string

			// The base URL of Cloudflare's SCIM V2.0 API endpoint.
			scim_base_url?: string

			// A flag to remove a user's seat in Zero Trust when they have
			// been deprovisioned in the Identity Provider. This cannot be
			// enabled unless user_deprovision is also enabled.
			seat_deprovision?: bool

			// A read-only token generated when the SCIM integration is
			// enabled for the first time. It is redacted on subsequent
			// requests. If you lose this you will need to refresh it at
			// /access/identity_providers/:idpID/refresh_scim_secret.
			secret?: string

			// A flag to enable revoking a user's session in Access and
			// Gateway when they have been deprovisioned in the Identity
			// Provider.
			user_deprovision?: bool
		})

		// The type of identity provider. To determine the value for a
		// specific provider, refer to our [developer
		// documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
		// Available values: "onetimepin", "azureAD", "saml", "centrify",
		// "facebook", "github", "google-apps", "google", "linkedin",
		// "oidc", "okta", "onelogin", "pingone", "yandex".
		type?: string
		filter?: close({
			// Indicates to Access to only retrieve identity providers that
			// have the System for Cross-Domain Identity Management (SCIM)
			// enabled.
			scim_enabled?: string
		})

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
