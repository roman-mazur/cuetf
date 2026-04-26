package data

#cloudflare_zero_trust_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_organization")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// When set to true, users can authenticate via WARP for any
		// application in your organization. Application settings will
		// take precedence over this value.
		allow_authenticate_via_warp?: bool

		// The unique subdomain assigned to your Zero Trust organization.
		auth_domain?: string

		// When set to `true`, users skip the identity provider selection
		// step during login.
		auto_redirect_to_identity?: bool

		// Determines whether to deny all requests to Cloudflare-protected
		// resources that lack an associated Access application. If
		// enabled, you must explicitly configure an Access application
		// and policy to allow traffic to your Cloudflare-protected
		// resources. For domains you want to be public across all
		// subdomains, add the domain to the
		// `deny_unmatched_requests_exempted_zone_names` array.
		deny_unmatched_requests?: bool

		// Contains zone names to exempt from the
		// `deny_unmatched_requests` feature. Requests to a subdomain in
		// an exempted zone will block unauthenticated traffic by default
		// if there is a configured Access application and policy that
		// matches the request.
		deny_unmatched_requests_exempted_zone_names?: [...string]

		// Lock all settings as Read-Only in the Dashboard, regardless of
		// user permission. Updates may only be made via the API or
		// Terraform for this account when enabled.
		is_ui_read_only?: bool

		// Determines whether global MFA settings apply to applications by
		// default. The organization must have MFA enabled with at least
		// one authentication method and a session duration configured.
		mfa_required_for_all_apps?: bool

		// The name of your Zero Trust organization.
		name?: string

		// The amount of time that tokens issued for applications will be
		// valid. Must be in the format `300ms` or `2h45m`. Valid time
		// units are: ns, us (or µs), ms, s, m, h.
		session_duration?: string

		// A description of the reason why the UI read only field is being
		// toggled.
		ui_read_only_toggle_reason?: string

		// The amount of time a user seat is inactive before it expires.
		// When the user seat exceeds the set time of inactivity, the
		// user is removed as an active seat and no longer counts against
		// your Teams seat count. Minimum value for this setting is 1
		// month (730h). Must be in the format `300ms` or `2h45m`. Valid
		// time units are: `ns`, `us` (or `µs`), `ms`, `s`, `m`, `h`.
		user_seat_expiration_inactive_time?: string

		// The amount of time that tokens issued for applications will be
		// valid. Must be in the format `30m` or `2h45m`. Valid time
		// units are: m, h.
		warp_auth_session_duration?: string

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string

		// Configures multi-factor authentication (MFA) settings for an
		// organization.
		mfa_config?: close({
			// Lists the MFA methods that users can authenticate with.
			allowed_authenticators?: [...string]

			// Allows a user to skip MFA via Authentication Method Reference
			// (AMR) matching when the AMR claim provided by the IdP the user
			// used to authenticate contains "mfa". Must be in minutes (m) or
			// hours (h). Minimum: 0m. Maximum: 720h (30 days).
			amr_matching_session_duration?: string

			// Specifies a Cloudflare List of required FIDO2 authenticator
			// device AAGUIDs.
			required_aaguids?: string

			// Defines the duration of an MFA session. Must be in minutes (m)
			// or hours (h). Minimum: 0m. Maximum: 720h (30 days).
			// Examples:`5m` or `24h`.
			session_duration?: string
		})

		// Configures SSH PIV key requirements for MFA using hardware
		// security keys.
		mfa_ssh_piv_key_requirements?: close({
			// Defines when a PIN is required to use the SSH key. Valid
			// values: `never` (no PIN required), `once` (PIN required once
			// per session), `always` (PIN required for each use).
			// Available values: "never", "once", "always".
			pin_policy?: string

			// Requires the SSH PIV key to be stored on a FIPS 140-2 Level 1
			// or higher validated device.
			require_fips_device?: bool

			// Specifies the allowed SSH key sizes in bits. Valid sizes depend
			// on key type. Ed25519 has a fixed key size and does not accept
			// this parameter.
			ssh_key_size?: [...number]

			// Specifies the allowed SSH key types. Valid values are `ecdsa`,
			// `ed25519`, and `rsa`.
			ssh_key_type?: [...string]

			// Defines when physical touch is required to use the SSH key.
			// Valid values: `never` (no touch required), `always` (touch
			// required for each use), `cached` (touch cached for 15
			// seconds).
			// Available values: "never", "always", "cached".
			touch_policy?: string
		})
		custom_pages?: close({
			// The uid of the custom page to use when a user is denied access
			// after failing a non-identity rule.
			forbidden?: string

			// The uid of the custom page to use when a user is denied access.
			identity_denied?: string
		})
		login_design?: close({
			// The background color on your login page.
			background_color?: string

			// The text at the bottom of your login page.
			footer_text?: string

			// The text at the top of your login page.
			header_text?: string

			// The URL of the logo on your login page.
			logo_path?: string

			// The text color on your login page.
			text_color?: string
		})
	})
}
