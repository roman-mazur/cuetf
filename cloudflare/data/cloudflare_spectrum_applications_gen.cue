package data

#cloudflare_spectrum_applications: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_spectrum_applications")
	close({
		// Sets the direction by which results are ordered.
		// Available values: "asc", "desc".
		direction?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// The name and type of DNS record for the Spectrum application.
			dns?: close({
				// The name of the DNS record associated with the application.
				name?: string

				// The type of DNS record associated with the application.
				// Available values: "CNAME", "ADDRESS".
				type?: string
			})

			// The anycast edge IP configuration for the hostname of this
			// application.
			edge_ips?: close({
				// The IP versions supported for inbound connections on Spectrum
				// anycast IPs.
				// Available values: "all", "ipv4", "ipv6".
				connectivity?: string

				// The array of customer owned IPs we broadcast via anycast for
				// this hostname and application.
				ips?: [...string]

				// The type of edge IP configuration specified. Dynamically
				// allocated edge IPs use Spectrum anycast IPs in accordance with
				// the connectivity you specify. Only valid with CNAME DNS names.
				// Available values: "dynamic", "static".
				type?: string
			})

			// Enables Argo Smart Routing for this application.
			// Notes: Only available for TCP applications with traffic_type
			// set to "direct".
			argo_smart_routing?: bool

			// When the Application was created.
			created_on?: string

			// App identifier.
			id?: string

			// Enables IP Access Rules for this application.
			// Notes: Only available for TCP applications.
			ip_firewall?: bool

			// When the Application was last modified.
			modified_on?: string

			// List of origin IP addresses. Array may contain multiple IP
			// addresses for load balancing.
			origin_direct?: [...string]

			// The name and type of DNS record for the Spectrum application.
			origin_dns?: close({
				// The name of the DNS record associated with the origin.
				name?: string

				// The TTL of our resolution of your DNS record in seconds.
				ttl?: number

				// The type of DNS record associated with the origin. "" is used
				// to specify a combination of A/AAAA records.
				// Available values: "", "A", "AAAA", "SRV".
				type?: string
			})

			// The destination port at the origin. Only specified in
			// conjunction with origin_dns. May use an integer to specify a
			// single origin port, for example `1000`, or a string to specify
			// a range of origin ports, for example `"1000-2000"`.
			// Notes: If specifying a port range, the number of ports in the
			// range must match the number of ports specified in the
			// "protocol" field.
			origin_port?: _

			// The port configuration at Cloudflare's edge. May specify a
			// single port, for example `"tcp/1000"`, or a range of ports,
			// for example `"tcp/1000-2000"`.
			protocol?: string

			// Enables Proxy Protocol to the origin. Refer to [Enable Proxy
			// protocol](https://developers.cloudflare.com/spectrum/getting-started/proxy-protocol/)
			// for implementation details on PROXY Protocol V1, PROXY
			// Protocol V2, and Simple Proxy Protocol.
			// Available values: "off", "v1", "v2", "simple".
			proxy_protocol?: string

			// The type of TLS termination associated with the application.
			// Available values: "off", "flexible", "full", "strict".
			tls?: string

			// Determines how data travels from the edge to your origin. When
			// set to "direct", Spectrum will send traffic directly to your
			// origin, and the application's type is derived from the
			// `protocol`. When set to "http" or "https", Spectrum will apply
			// Cloudflare's HTTP/HTTPS features as it sends traffic to your
			// origin, and the application type matches this property
			// exactly.
			// Available values: "direct", "http", "https".
			traffic_type?: string
		}), [...close({
			// The name and type of DNS record for the Spectrum application.
			dns?: close({
				// The name of the DNS record associated with the application.
				name?: string

				// The type of DNS record associated with the application.
				// Available values: "CNAME", "ADDRESS".
				type?: string
			})

			// The anycast edge IP configuration for the hostname of this
			// application.
			edge_ips?: close({
				// The IP versions supported for inbound connections on Spectrum
				// anycast IPs.
				// Available values: "all", "ipv4", "ipv6".
				connectivity?: string

				// The array of customer owned IPs we broadcast via anycast for
				// this hostname and application.
				ips?: [...string]

				// The type of edge IP configuration specified. Dynamically
				// allocated edge IPs use Spectrum anycast IPs in accordance with
				// the connectivity you specify. Only valid with CNAME DNS names.
				// Available values: "dynamic", "static".
				type?: string
			})

			// Enables Argo Smart Routing for this application.
			// Notes: Only available for TCP applications with traffic_type
			// set to "direct".
			argo_smart_routing?: bool

			// When the Application was created.
			created_on?: string

			// App identifier.
			id?: string

			// Enables IP Access Rules for this application.
			// Notes: Only available for TCP applications.
			ip_firewall?: bool

			// When the Application was last modified.
			modified_on?: string

			// List of origin IP addresses. Array may contain multiple IP
			// addresses for load balancing.
			origin_direct?: [...string]

			// The name and type of DNS record for the Spectrum application.
			origin_dns?: close({
				// The name of the DNS record associated with the origin.
				name?: string

				// The TTL of our resolution of your DNS record in seconds.
				ttl?: number

				// The type of DNS record associated with the origin. "" is used
				// to specify a combination of A/AAAA records.
				// Available values: "", "A", "AAAA", "SRV".
				type?: string
			})

			// The destination port at the origin. Only specified in
			// conjunction with origin_dns. May use an integer to specify a
			// single origin port, for example `1000`, or a string to specify
			// a range of origin ports, for example `"1000-2000"`.
			// Notes: If specifying a port range, the number of ports in the
			// range must match the number of ports specified in the
			// "protocol" field.
			origin_port?: _

			// The port configuration at Cloudflare's edge. May specify a
			// single port, for example `"tcp/1000"`, or a range of ports,
			// for example `"tcp/1000-2000"`.
			protocol?: string

			// Enables Proxy Protocol to the origin. Refer to [Enable Proxy
			// protocol](https://developers.cloudflare.com/spectrum/getting-started/proxy-protocol/)
			// for implementation details on PROXY Protocol V1, PROXY
			// Protocol V2, and Simple Proxy Protocol.
			// Available values: "off", "v1", "v2", "simple".
			proxy_protocol?: string

			// The type of TLS termination associated with the application.
			// Available values: "off", "flexible", "full", "strict".
			tls?: string

			// Determines how data travels from the edge to your origin. When
			// set to "direct", Spectrum will send traffic directly to your
			// origin, and the application's type is derived from the
			// `protocol`. When set to "http" or "https", Spectrum will apply
			// Cloudflare's HTTP/HTTPS features as it sends traffic to your
			// origin, and the application type matches this property
			// exactly.
			// Available values: "direct", "http", "https".
			traffic_type?: string
		})]])

		// Max items to fetch, default: 1000
		max_items?: number

		// Application field by which results are ordered.
		// Available values: "protocol", "app_id", "created_on",
		// "modified_on", "dns".
		order?: string

		// Zone identifier.
		zone_id!: string
	})
}
