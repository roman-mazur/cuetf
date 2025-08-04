package data

#cloudflare_zero_trust_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_organization")
	close({
		custom_pages?: close({
			forbidden?:       string
			identity_denied?: string
		})
		account_id?:                  string
		allow_authenticate_via_warp?: bool
		auth_domain?:                 string
		auto_redirect_to_identity?:   bool
		created_at?:                  string
		is_ui_read_only?:             bool
		name?:                        string
		session_duration?:            string
		login_design?: close({
			background_color?: string
			footer_text?:      string
			header_text?:      string
			logo_path?:        string
			text_color?:       string
		})
		ui_read_only_toggle_reason?:         string
		updated_at?:                         string
		user_seat_expiration_inactive_time?: string
		warp_auth_session_duration?:         string
		zone_id?:                            string
	})
}
