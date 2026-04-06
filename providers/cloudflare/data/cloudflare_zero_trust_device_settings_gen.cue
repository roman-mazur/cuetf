package data

#cloudflare_zero_trust_device_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_device_settings")
	close({
		account_id!: string

		// Sets the time limit, in seconds, that a user can use an
		// override code to bypass WARP.
		disable_for_time?: number

		// Controls whether the external emergency disconnect feature is
		// enabled.
		external_emergency_signal_enabled?: bool

		// The SHA256 fingerprint (64 hexadecimal characters) of the HTTPS
		// server certificate for the external_emergency_signal_url. If
		// provided, the WARP client will use this value to verify the
		// server's identity. The device will ignore any response if the
		// server's certificate fingerprint does not exactly match this
		// value.
		external_emergency_signal_fingerprint?: string

		// The interval at which the WARP client fetches the emergency
		// disconnect signal, formatted as a duration string (e.g., "5m",
		// "2m30s", "1h"). Minimum 30 seconds.
		external_emergency_signal_interval?: string

		// The HTTPS URL from which to fetch the emergency disconnect
		// signal. Must use HTTPS and have an IPv4 or IPv6 address as the
		// host.
		external_emergency_signal_url?: string

		// Enable gateway proxy filtering on TCP.
		gateway_proxy_enabled?: bool

		// Enable gateway proxy filtering on UDP.
		gateway_udp_proxy_enabled?: bool

		// Enable installation of cloudflare managed root certificate.
		root_certificate_installation_enabled?: bool

		// Enable using CGNAT virtual IPv4.
		use_zt_virtual_ip?: bool
	})
}
