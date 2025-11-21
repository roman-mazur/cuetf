package data

#cloudflare_zero_trust_gateway_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_settings")
	close({
		account_id!: string
		created_at?: string
		id?:         string

		// Specify account settings.
		settings?: close({
			// Specify activity log settings.
			activity_log?: close({
				// Specify whether to log activity.
				enabled?: bool
			})

			// Specify anti-virus settings.
			antivirus?: close({
				// Specify whether to enable anti-virus scanning on downloads.
				enabled_download_phase?: bool

				// Specify whether to enable anti-virus scanning on uploads.
				enabled_upload_phase?: bool

				// Configure the message the user's device shows during an
				// antivirus scan.
				notification_settings?: close({
					// Specify whether to enable notifications.
					enabled?: bool

					// Specify whether to include context information as query
					// parameters.
					include_context?: bool

					// Specify the message to show in the notification.
					msg?: string

					// Specify a URL that directs users to more information. If unset,
					// the notification opens a block page.
					support_url?: string
				})

				// Specify whether to block requests for unscannable files.
				fail_closed?: bool
			})

			// Specify block page layout settings.
			block_page?: close({
				// Specify the block page background color in `#rrggbb` format
				// when the mode is customized_block_page.
				background_color?: string

				// Specify whether to enable the custom block page.
				enabled?: bool

				// Specify the block page footer text when the mode is
				// customized_block_page.
				footer_text?: string

				// Specify the block page header text when the mode is
				// customized_block_page.
				header_text?: string

				// Specify whether to append context to target_uri as query
				// parameters. This applies only when the mode is redirect_uri.
				include_context?: bool

				// Specify the full URL to the logo file when the mode is
				// customized_block_page.
				logo_path?: string

				// Specify the admin email for users to contact when the mode is
				// customized_block_page.
				mailto_address?: string

				// Specify the subject line for emails created from the block page
				// when the mode is customized_block_page.
				mailto_subject?: string

				// Specify whether to redirect users to a Cloudflare-hosted block
				// page or a customer-provided URI.
				// Available values: "", "customized_block_page", "redirect_uri".
				mode?: string

				// Specify the block page title when the mode is
				// customized_block_page.
				name?: string

				// Indicate that this setting was shared via the Orgs API and read
				// only for the current account.
				read_only?: bool

				// Indicate the account tag of the account that shared this
				// setting.
				source_account?: string

				// Specify whether to suppress detailed information at the bottom
				// of the block page when the mode is customized_block_page.
				suppress_footer?: bool

				// Specify the URI to redirect users to when the mode is
				// redirect_uri.
				target_uri?: string

				// Indicate the version number of the setting.
				version?: number
			})

			// Specify the DLP inspection mode.
			body_scanning?: close({
				// Specify the inspection mode as either `deep` or `shallow`.
				// Available values: "deep", "shallow".
				inspection_mode?: string
			})

			// Specify Clientless Browser Isolation settings.
			browser_isolation?: close({
				// Specify whether to enable non-identity onramp support for
				// Browser Isolation.
				non_identity_enabled?: bool

				// Specify whether to enable Clientless Browser Isolation.
				url_browser_isolation_enabled?: bool
			})

			// Specify certificate settings for Gateway TLS interception. If
			// unset, the Cloudflare Root CA handles interception.
			certificate?: close({
				// Specify the UUID of the certificate used for interception.
				// Ensure the certificate is available at the edge(previously
				// called 'active'). A nil UUID directs Cloudflare to use the
				// Root CA.
				id?: string
			})

			// Configures user email settings for firewall policies. When you
			// enable this, the system standardizes email addresses in the
			// identity portion of the rule to match extended email variants
			// in firewall policies. When you disable this setting, the
			// system matches email addresses exactly as you provide them.
			// Enable this setting if your email uses `.` or `+` modifiers.
			extended_email_matching?: close({
				// Specify whether to match all variants of user emails (with + or
				// . modifiers) used as criteria in Firewall policies.
				enabled?: bool

				// Indicate that this setting was shared via the Orgs API and read
				// only for the current account.
				read_only?: bool

				// Indicate the account tag of the account that shared this
				// setting.
				source_account?: string

				// Indicate the version number of the setting.
				version?: number
			})

			// Specify FIPS settings.
			fips?: close({
				// Enforce cipher suites and TLS versions compliant with FIPS
				// 140-2.
				tls?: bool
			})

			// Enable host selection in egress policies.
			host_selector?: close({
				// Specify whether to enable filtering via hosts for egress
				// policies.
				enabled?: bool
			})

			// Define the proxy inspection mode.
			inspection?: close({
				// Define the proxy inspection mode. 1. static: Gateway applies
				// static inspection to HTTP on TCP(80). With TLS decryption on,
				// Gateway inspects HTTPS traffic on TCP(443) and UDP(443). 2.
				// dynamic: Gateway applies protocol detection to inspect HTTP
				// and HTTPS traffic on any port. TLS decryption must remain on
				// to inspect HTTPS traffic.
				// Available values: "static", "dynamic".
				mode?: string
			})

			// Specify whether to detect protocols from the initial bytes of
			// client traffic.
			protocol_detection?: close({
				// Specify whether to detect protocols from the initial bytes of
				// client traffic.
				enabled?: bool
			})

			// Specify whether to enable the sandbox.
			sandbox?: close({
				// Specify whether to enable the sandbox.
				enabled?: bool

				// Specify the action to take when the system cannot scan the
				// file.
				// Available values: "allow", "block".
				fallback_action?: string
			})

			// Specify whether to inspect encrypted HTTP traffic.
			tls_decrypt?: close({
				// Specify whether to inspect encrypted HTTP traffic.
				enabled?: bool
			})
		})
		updated_at?: string
	})
}
