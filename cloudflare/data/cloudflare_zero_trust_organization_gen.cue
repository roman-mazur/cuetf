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

		// Lock all settings as Read-Only in the Dashboard, regardless of
		// user permission. Updates may only be made via the API or
		// Terraform for this account when enabled.
		is_ui_read_only?: bool

		// The name of your Zero Trust organization.
		name?: string

		// The amount of time that tokens issued for applications will be
		// valid. Must be in the format `300ms` or `2h45m`. Valid time
		// units are: ns, us (or µs), ms, s, m, h.
		session_duration?: string
		custom_pages?: close({
			// The uid of the custom page to use when a user is denied access
			// after failing a non-identity rule.
			forbidden?: string

			// The uid of the custom page to use when a user is denied access.
			identity_denied?: string
		})

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

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
