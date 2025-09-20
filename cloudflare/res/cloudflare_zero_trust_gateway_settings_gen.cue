package res

#cloudflare_zero_trust_gateway_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_settings")
	close({
		account_id!: string
		created_at?: string
		id?:         string

		// Account settings.
		settings?: close({
			// Activity log settings.
			activity_log?: close({
				// Enable activity logging.
				enabled?: bool
			})

			// Anti-virus settings.
			antivirus?: close({
				// Enable anti-virus scanning on downloads.
				enabled_download_phase?: bool

				// Enable anti-virus scanning on uploads.
				enabled_upload_phase?: bool

				// Configure a message to display on the user's device when an
				// antivirus search is performed.
				notification_settings?: close({
					// Set notification on.
					enabled?: bool

					// If true, context information will be passed as query
					// parameters.
					include_context?: bool

					// Customize the message shown in the notification.
					msg?: string

					// Optional URL to direct users to additional information. If not
					// set, the notification will open a block page.
					support_url?: string
				})

				// Block requests for files that cannot be scanned.
				fail_closed?: bool
			})

			// Block page layout settings.
			block_page?: close({
				// If mode is customized_block_page: block page background color
				// in #rrggbb format.
				background_color?: string

				// Enable only cipher suites and TLS versions compliant with FIPS.
				// 140-2.
				enabled?: bool

				// If mode is customized_block_page: block page footer text.
				footer_text?: string

				// If mode is customized_block_page: block page header text.
				header_text?: string

				// If mode is redirect_uri: when enabled, context will be appended
				// to target_uri as query parameters.
				include_context?: bool

				// If mode is customized_block_page: full URL to the logo file.
				logo_path?: string

				// If mode is customized_block_page: admin email for users to
				// contact.
				mailto_address?: string

				// If mode is customized_block_page: subject line for emails
				// created from block page.
				mailto_subject?: string

				// Controls whether the user is redirected to a Cloudflare-hosted
				// block page or to a customer-provided URI.
				// Available values: "", "customized_block_page", "redirect_uri".
				mode?: string

				// If mode is customized_block_page: block page title.
				name?: string

				// This setting was shared via the Orgs API and cannot be edited
				// by the current account.
				read_only?: bool

				// Account tag of account that shared this setting.
				source_account?: string

				// If mode is customized_block_page: suppress detailed info at the
				// bottom of the block page.
				suppress_footer?: bool

				// If mode is redirect_uri: URI to which the user should be
				// redirected.
				target_uri?: string

				// Version number of the setting.
				version?: number
			})

			// DLP body scanning settings.
			body_scanning?: close({
				// Set the inspection mode to either `deep` or `shallow`.
				// Available values: "deep", "shallow".
				inspection_mode?: string
			})

			// Browser isolation settings.
			browser_isolation?: close({
				// Enable non-identity onramp support for Browser Isolation.
				non_identity_enabled?: bool

				// Enable Clientless Browser Isolation.
				url_browser_isolation_enabled?: bool
			})

			// Certificate settings for Gateway TLS interception. If not
			// specified, the Cloudflare Root CA will be used.
			certificate?: close({
				// UUID of certificate to be used for interception. Certificate
				// must be available (previously called 'active') on the edge. A
				// nil UUID will indicate the Cloudflare Root CA should be used.
				id!: string
			})

			// Extended e-mail matching settings.
			extended_email_matching?: close({
				// Enable matching all variants of user emails (with + or .
				// modifiers) used as criteria in Firewall policies.
				enabled?: bool

				// This setting was shared via the Orgs API and cannot be edited
				// by the current account.
				read_only?: bool

				// Account tag of account that shared this setting.
				source_account?: string

				// Version number of the setting.
				version?: number
			})

			// FIPS settings.
			fips?: close({
				// Enable only cipher suites and TLS versions compliant with FIPS.
				// 140-2.
				tls?: bool
			})

			// Setting to enable host selector in egress policies.
			host_selector?: close({
				// Enable filtering via hosts for egress policies.
				enabled?: bool
			})

			// Setting to define inspection settings.
			inspection?: close({
				// Defines the mode of inspection the proxy will use.
				// - static: Gateway will use static inspection to inspect HTTP on
				// TCP(80). If TLS decryption is on, Gateway will inspect HTTPS
				// traffic on TCP(443) & UDP(443).
				// - dynamic: Gateway will use protocol detection to dynamically
				// inspect HTTP and HTTPS traffic on any port. TLS decryption
				// must be on to inspect HTTPS traffic.
				// Available values: "static", "dynamic".
				mode?: string
			})

			// Protocol Detection settings.
			protocol_detection?: close({
				// Enable detecting protocol on initial bytes of client traffic.
				enabled?: bool
			})

			// Sandbox settings.
			sandbox?: close({
				// Enable sandbox.
				enabled?: bool

				// Action to take when the file cannot be scanned.
				// Available values: "allow", "block".
				fallback_action?: string
			})

			// TLS interception settings.
			tls_decrypt?: close({
				// Enable inspecting encrypted HTTP traffic.
				enabled?: bool
			})
		})
		updated_at?: string
	})
}
