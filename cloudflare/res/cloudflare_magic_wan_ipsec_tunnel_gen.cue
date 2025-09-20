package res

#cloudflare_magic_wan_ipsec_tunnel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_wan_ipsec_tunnel")
	close({
		// Identifier
		account_id!: string

		// When `true`, the tunnel can use a null-cipher (`ENCR_NULL`) in
		// the ESP tunnel (Phase 2).
		allow_null_cipher?: bool

		// The IP address assigned to the Cloudflare side of the IPsec
		// tunnel.
		cloudflare_endpoint!: string
		health_check?: close({
			// The destination address in a request type health check. After
			// the healthcheck is decapsulated at the customer end of the
			// tunnel, the ICMP echo will be forwarded to this address. This
			// field defaults to `customer_gre_endpoint address`. This field
			// is ignored for bidirectional healthchecks as the
			// interface_address (not assigned to the Cloudflare side of the
			// tunnel) is used as the target. Must be in object form if the
			// x-magic-new-hc-target header is set to true and string form if
			// x-magic-new-hc-target is absent or set to false.
			target?: close({
				// The effective health check target. If 'saved' is empty, then
				// this field will be populated with the calculated default value
				// on GET requests. Ignored in POST, PUT, and PATCH requests.
				effective?: string

				// The saved health check target. Setting the value to the empty
				// string indicates that the calculated default value will be
				// used.
				saved?: string
			})

			// The direction of the flow of the healthcheck. Either
			// unidirectional, where the probe comes to you via the tunnel
			// and the result comes back to Cloudflare via the open Internet,
			// or bidirectional where both the probe and result come and go
			// via the tunnel.
			// Available values: "unidirectional", "bidirectional".
			direction?: string

			// Determines whether to run healthchecks for a tunnel.
			enabled?: bool

			// How frequent the health check is run. The default value is
			// `mid`.
			// Available values: "low", "mid", "high".
			rate?: string

			// The type of healthcheck to run, reply or request. The default
			// value is `reply`.
			// Available values: "reply", "request".
			type?: string
		})

		// The date and time the tunnel was created.
		created_on?: string

		// The IP address assigned to the customer side of the IPsec
		// tunnel. Not required, but must be set for proactive
		// traceroutes to work.
		customer_endpoint?: string

		// An optional description forthe IPsec tunnel.
		description?: string

		// Identifier
		id?: string

		// The PSK metadata that includes when the PSK was generated.
		psk_metadata?: close({
			// The date and time the tunnel was last modified.
			last_generated_on?: string
		})

		// A 31-bit prefix (/31 in CIDR notation) supporting two hosts,
		// one for each side of the tunnel. Select the subnet from the
		// following private IP space: 10.0.0.0–10.255.255.255,
		// 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
		interface_address!: string

		// A 127 bit IPV6 prefix from within the virtual_subnet6 prefix
		// space with the address being the first IP of the subnet and
		// not same as the address of virtual_subnet6. Eg if
		// virtual_subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 ,
		// interface_address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
		interface_address6?: string

		// The date and time the tunnel was last modified.
		modified_on?: string

		// The name of the IPsec tunnel. The name cannot share a name with
		// other tunnels.
		name!: string

		// A randomly generated or provided string for use in the IPsec
		// tunnel.
		psk?: string

		// If `true`, then IPsec replay protection will be supported in
		// the Cloudflare-to-customer direction.
		replay_protection?: bool
	})
}
