package res

#cloudflare_zero_trust_access_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_zero_trust_access_organization")
	account_id?:                         string
	allow_authenticate_via_warp?:        bool
	auth_domain!:                        string
	auto_redirect_to_identity?:          bool
	id?:                                 string
	is_ui_read_only?:                    bool
	name!:                               string
	session_duration?:                   string
	ui_read_only_toggle_reason?:         string
	user_seat_expiration_inactive_time?: string
	warp_auth_session_duration?:         string
	zone_id?:                            string
	custom_pages?: #custom_pages | [...#custom_pages]
	login_design?: #login_design | [...#login_design]

	#custom_pages: {
		forbidden?:       string
		identity_denied?: string
	}

	#login_design: {
		background_color?: string
		footer_text?:      string
		header_text?:      string
		logo_path?:        string
		text_color?:       string
	}
}
