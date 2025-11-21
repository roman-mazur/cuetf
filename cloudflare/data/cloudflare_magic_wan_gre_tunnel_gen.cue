package data

#cloudflare_magic_wan_gre_tunnel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_wan_gre_tunnel")
	close({
		// Identifier
		account_id!: string

		// Identifier
		gre_tunnel_id!: string

		// Identifier
		id?: string
		gre_tunnel?: close({
			// True if automatic stateful return routing should be enabled for
			// a tunnel, false otherwise.
			automatic_return_routing?: bool

			// The IP address assigned to the Cloudflare side of the GRE
			// tunnel.
			cloudflare_gre_endpoint?: string

			// The date and time the tunnel was created.
			created_on?: string

			// The IP address assigned to the customer side of the GRE tunnel.
			customer_gre_endpoint?: string

			// An optional description of the GRE tunnel.
			description?: string

			// Identifier
			id?: string

			// A 31-bit prefix (/31 in CIDR notation) supporting two hosts,
			// one for each side of the tunnel. Select the subnet from the
			// following private IP space: 10.0.0.0–10.255.255.255,
			// 172.16.0.0–172.31.255.255, 192.168.0.0–192.168.255.255.
			interface_address?: string

			// A 127 bit IPV6 prefix from within the virtual_subnet6 prefix
			// space with the address being the first IP of the subnet and
			// not same as the address of virtual_subnet6. Eg if
			// virtual_subnet6 is 2606:54c1:7:0:a9fe:12d2::/127 ,
			// interface_address6 could be 2606:54c1:7:0:a9fe:12d2:1:200/127
			interface_address6?: string

			// The date and time the tunnel was last modified.
			modified_on?: string

			// Maximum Transmission Unit (MTU) in bytes for the GRE tunnel.
			// The minimum value is 576.
			mtu?: number
			bgp?: close({
				// ASN used on the customer end of the BGP session
				customer_asn?: number

				// Prefixes in this list will be advertised to the customer
				// device, in addition to the routes in the Magic routing table.
				extra_prefixes?: [...string]

				// MD5 key to use for session authentication.
				//
				// Note that *this is not a security measure*. MD5 is not a valid
				// security mechanism, and the
				// key is not treated as a secret value. This is *only* supported
				// for preventing
				// misconfiguration, not for defending against malicious attacks.
				//
				// The MD5 key, if set, must be of non-zero length and consist
				// only of the following types of
				// character:
				//
				// * ASCII alphanumerics: `[a-zA-Z0-9]`
				// * Special characters in the set `'!@#$%^&*()+[]{}<>/.,;:_-~`=
				// \|`
				//
				// In other words, MD5 keys may contain any printable ASCII
				// character aside from newline (0x0A),
				// quotation mark (`"`), vertical tab (0x0B), carriage return
				// (0x0D), tab (0x09), form feed
				// (0x0C), and the question mark (`?`). Requests specifying an MD5
				// key with one or more of
				// these disallowed characters will be rejected.
				md5_key?: string
			})
			bgp_status?: close({
				bgp_state?:       string
				cf_speaker_ip?:   string
				cf_speaker_port?: number

				// Available values: "BGP_DOWN", "BGP_UP", "BGP_ESTABLISHING".
				state?:                 string
				customer_speaker_ip?:   string
				customer_speaker_port?: number
				tcp_established?:       bool
				updated_at?:            string
			})

			// The name of the tunnel. The name cannot contain spaces or
			// special characters, must be 15 characters or less, and cannot
			// share a name with another GRE tunnel.
			name?: string
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

			// Time To Live (TTL) in number of hops of the GRE tunnel.
			ttl?: number
		})
	})
}
