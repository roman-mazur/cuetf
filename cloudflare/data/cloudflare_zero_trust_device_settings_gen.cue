package data

#cloudflare_zero_trust_device_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_device_settings")
	close({
		// Sets the time limit, in seconds, that a user can use an
		// override code to bypass WARP.
		disable_for_time?: number
		account_id!:       string

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
