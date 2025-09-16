package data

#cloudflare_zero_trust_device_default_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_device_default_profile")
	close({
		account_id!: string

		// Whether to allow the user to switch WARP between modes.
		allow_mode_switch?: bool

		// Whether to receive update notifications when a new version of
		// the client is available.
		allow_updates?: bool

		// Whether to allow devices to leave the organization.
		allowed_to_leave?: bool

		// The amount of time in seconds to reconnect after having been
		// disabled.
		auto_connect?: number

		// List of routes excluded in the WARP client's tunnel.
		exclude?: matchN(1, [close({
			// The address in CIDR format to exclude from the tunnel. If
			// `address` is present, `host` must not be present.
			address?: string

			// A description of the Split Tunnel item, displayed in the client
			// UI.
			description?: string

			// The domain name to exclude from the tunnel. If `host` is
			// present, `address` must not be present.
			host?: string
		}), [...close({
			// The address in CIDR format to exclude from the tunnel. If
			// `address` is present, `host` must not be present.
			address?: string

			// A description of the Split Tunnel item, displayed in the client
			// UI.
			description?: string

			// The domain name to exclude from the tunnel. If `host` is
			// present, `address` must not be present.
			host?: string
		})]])

		// Turn on the captive portal after the specified amount of time.
		captive_portal?: number

		// Whether the policy will be applied to matching devices.
		default?: bool
		fallback_domains?: matchN(1, [close({
			// A description of the fallback domain, displayed in the client
			// UI.
			description?: string

			// A list of IP addresses to handle domain resolution.
			dns_server?: [...string]

			// The domain suffix to match when resolving locally.
			suffix?: string
		}), [...close({
			// A description of the fallback domain, displayed in the client
			// UI.
			description?: string

			// A list of IP addresses to handle domain resolution.
			dns_server?: [...string]

			// The domain suffix to match when resolving locally.
			suffix?: string
		})]])

		// If the `dns_server` field of a fallback domain is not present,
		// the client will fall back to a best guess of the
		// default/system DNS resolvers unless this policy option is set
		// to `true`.
		disable_auto_fallback?: bool

		// List of routes included in the WARP client's tunnel.
		include?: matchN(1, [close({
			// The address in CIDR format to include in the tunnel. If
			// `address` is present, `host` must not be present.
			address?: string

			// A description of the Split Tunnel item, displayed in the client
			// UI.
			description?: string

			// The domain name to include in the tunnel. If `host` is present,
			// `address` must not be present.
			host?: string
		}), [...close({
			// The address in CIDR format to include in the tunnel. If
			// `address` is present, `host` must not be present.
			address?: string

			// A description of the Split Tunnel item, displayed in the client
			// UI.
			description?: string

			// The domain name to include in the tunnel. If `host` is present,
			// `address` must not be present.
			host?: string
		})]])

		// Whether the policy will be applied to matching devices.
		enabled?: bool

		// Whether to add Microsoft IPs to Split Tunnel exclusions.
		exclude_office_ips?: bool
		service_mode_v2?: close({
			// The mode to run the WARP client under.
			mode?: string

			// The port number when used with proxy mode.
			port?: number
		})
		gateway_unique_id?: string

		// Determines if the operating system will register WARP's local
		// interface IP with your on-premises DNS server.
		register_interface_ip_with_dns?: bool

		// Determines whether the WARP client indicates to SCCM that it is
		// inside a VPN boundary. (Windows only).
		sccm_vpn_boundary_support?: bool

		// The URL to launch when the Send Feedback button is clicked.
		support_url?: string

		// Whether to allow the user to turn off the WARP switch and
		// disconnect the client.
		switch_locked?: bool

		// Determines which tunnel protocol to use.
		tunnel_protocol?: string
	})
}
