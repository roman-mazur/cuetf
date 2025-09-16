package res

#cloudflare_zero_trust_tunnel_cloudflared_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_cloudflared_config")
	close({
		// Identifier.
		account_id!: string
		created_at?: string

		// UUID of the tunnel.
		id?: string

		// The tunnel configuration and ingress rules.
		config?: close({
			// List of public hostname definitions. At least one ingress rule
			// needs to be defined for the tunnel.
			ingress?: matchN(1, [close({
				// Public hostname for this service.
				hostname?: string

				// Requests with this path route to this public hostname.
				path?: string

				// Protocol and address of destination server. Supported
				// protocols: http://, https://, unix://, tcp://, ssh://, rdp://,
				// unix+tls://, smb://. Alternatively can return a HTTP status
				// code http_status:[code] e.g. 'http_status:404'.
				service!: string

				// Configuration parameters for the public hostname specific
				// connection settings between cloudflared and origin server.
				origin_request?: close({
					// For all L7 requests to this hostname, cloudflared will validate
					// each request's Cf-Access-Jwt-Assertion request header.
					access?: close({
						// Access applications that are allowed to reach this hostname for
						// this Tunnel. Audience tags can be identified in the dashboard
						// or via the List Access policies API.
						aud_tag!: [...string]

						// Deny traffic that has not fulfilled Access authorization.
						required?:  bool
						team_name!: string
					})

					// Path to the certificate authority (CA) for the certificate of
					// your origin. This option should be used only if your
					// certificate is not signed by Cloudflare.
					ca_pool?: string

					// Timeout for establishing a new TCP connection to your origin
					// server. This excludes the time taken to establish TLS, which
					// is controlled by tlsTimeout.
					connect_timeout?: number

					// Disables chunked transfer encoding. Useful if you are running a
					// WSGI server.
					disable_chunked_encoding?: bool

					// Attempt to connect to origin using HTTP2. Origin must be
					// configured as https.
					http2_origin?: bool

					// Sets the HTTP Host header on requests sent to the local
					// service.
					http_host_header?: string

					// Maximum number of idle keepalive connections between Tunnel and
					// your origin. This does not restrict the total number of
					// concurrent connections.
					keep_alive_connections?: number

					// Timeout after which an idle keepalive connection can be
					// discarded.
					keep_alive_timeout?: number

					// Disable the “happy eyeballs” algorithm for IPv4/IPv6 fallback
					// if your local network has misconfigured one of the protocols.
					no_happy_eyeballs?: bool

					// Disables TLS verification of the certificate presented by your
					// origin. Will allow any certificate from the origin to be
					// accepted.
					no_tls_verify?: bool

					// Hostname that cloudflared should expect from your origin server
					// certificate.
					origin_server_name?: string

					// cloudflared starts a proxy server to translate HTTP traffic
					// into TCP when proxying, for example, SSH or RDP. This
					// configures what type of proxy will be started. Valid options
					// are: "" for the regular proxy and "socks" for a SOCKS5 proxy.
					proxy_type?: string

					// The timeout after which a TCP keepalive packet is sent on a
					// connection between Tunnel and the origin server.
					tcp_keep_alive?: number

					// Timeout for completing a TLS handshake to your origin server,
					// if you have chosen to connect Tunnel to an HTTPS server.
					tls_timeout?: number
				})
			}), [...close({
				// Public hostname for this service.
				hostname?: string

				// Requests with this path route to this public hostname.
				path?: string

				// Protocol and address of destination server. Supported
				// protocols: http://, https://, unix://, tcp://, ssh://, rdp://,
				// unix+tls://, smb://. Alternatively can return a HTTP status
				// code http_status:[code] e.g. 'http_status:404'.
				service!: string

				// Configuration parameters for the public hostname specific
				// connection settings between cloudflared and origin server.
				origin_request?: close({
					// For all L7 requests to this hostname, cloudflared will validate
					// each request's Cf-Access-Jwt-Assertion request header.
					access?: close({
						// Access applications that are allowed to reach this hostname for
						// this Tunnel. Audience tags can be identified in the dashboard
						// or via the List Access policies API.
						aud_tag!: [...string]

						// Deny traffic that has not fulfilled Access authorization.
						required?:  bool
						team_name!: string
					})

					// Path to the certificate authority (CA) for the certificate of
					// your origin. This option should be used only if your
					// certificate is not signed by Cloudflare.
					ca_pool?: string

					// Timeout for establishing a new TCP connection to your origin
					// server. This excludes the time taken to establish TLS, which
					// is controlled by tlsTimeout.
					connect_timeout?: number

					// Disables chunked transfer encoding. Useful if you are running a
					// WSGI server.
					disable_chunked_encoding?: bool

					// Attempt to connect to origin using HTTP2. Origin must be
					// configured as https.
					http2_origin?: bool

					// Sets the HTTP Host header on requests sent to the local
					// service.
					http_host_header?: string

					// Maximum number of idle keepalive connections between Tunnel and
					// your origin. This does not restrict the total number of
					// concurrent connections.
					keep_alive_connections?: number

					// Timeout after which an idle keepalive connection can be
					// discarded.
					keep_alive_timeout?: number

					// Disable the “happy eyeballs” algorithm for IPv4/IPv6 fallback
					// if your local network has misconfigured one of the protocols.
					no_happy_eyeballs?: bool

					// Disables TLS verification of the certificate presented by your
					// origin. Will allow any certificate from the origin to be
					// accepted.
					no_tls_verify?: bool

					// Hostname that cloudflared should expect from your origin server
					// certificate.
					origin_server_name?: string

					// cloudflared starts a proxy server to translate HTTP traffic
					// into TCP when proxying, for example, SSH or RDP. This
					// configures what type of proxy will be started. Valid options
					// are: "" for the regular proxy and "socks" for a SOCKS5 proxy.
					proxy_type?: string

					// The timeout after which a TCP keepalive packet is sent on a
					// connection between Tunnel and the origin server.
					tcp_keep_alive?: number

					// Timeout for completing a TLS handshake to your origin server,
					// if you have chosen to connect Tunnel to an HTTPS server.
					tls_timeout?: number
				})
			})]])

			// Configuration parameters for the public hostname specific
			// connection settings between cloudflared and origin server.
			origin_request?: close({
				// For all L7 requests to this hostname, cloudflared will validate
				// each request's Cf-Access-Jwt-Assertion request header.
				access?: close({
					// Access applications that are allowed to reach this hostname for
					// this Tunnel. Audience tags can be identified in the dashboard
					// or via the List Access policies API.
					aud_tag!: [...string]

					// Deny traffic that has not fulfilled Access authorization.
					required?:  bool
					team_name!: string
				})

				// Path to the certificate authority (CA) for the certificate of
				// your origin. This option should be used only if your
				// certificate is not signed by Cloudflare.
				ca_pool?: string

				// Timeout for establishing a new TCP connection to your origin
				// server. This excludes the time taken to establish TLS, which
				// is controlled by tlsTimeout.
				connect_timeout?: number

				// Disables chunked transfer encoding. Useful if you are running a
				// WSGI server.
				disable_chunked_encoding?: bool

				// Attempt to connect to origin using HTTP2. Origin must be
				// configured as https.
				http2_origin?: bool

				// Sets the HTTP Host header on requests sent to the local
				// service.
				http_host_header?: string

				// Maximum number of idle keepalive connections between Tunnel and
				// your origin. This does not restrict the total number of
				// concurrent connections.
				keep_alive_connections?: number

				// Timeout after which an idle keepalive connection can be
				// discarded.
				keep_alive_timeout?: number

				// Disable the “happy eyeballs” algorithm for IPv4/IPv6 fallback
				// if your local network has misconfigured one of the protocols.
				no_happy_eyeballs?: bool

				// Disables TLS verification of the certificate presented by your
				// origin. Will allow any certificate from the origin to be
				// accepted.
				no_tls_verify?: bool

				// Hostname that cloudflared should expect from your origin server
				// certificate.
				origin_server_name?: string

				// cloudflared starts a proxy server to translate HTTP traffic
				// into TCP when proxying, for example, SSH or RDP. This
				// configures what type of proxy will be started. Valid options
				// are: "" for the regular proxy and "socks" for a SOCKS5 proxy.
				proxy_type?: string

				// The timeout after which a TCP keepalive packet is sent on a
				// connection between Tunnel and the origin server.
				tcp_keep_alive?: number

				// Timeout for completing a TLS handshake to your origin server,
				// if you have chosen to connect Tunnel to an HTTPS server.
				tls_timeout?: number
			})

			// Enable private network access from WARP users to private
			// network routes. This is enabled if the tunnel has an assigned
			// route.
			warp_routing?: close({
				enabled?: bool
			})
		})

		// Indicates if this is a locally or remotely configured tunnel.
		// If `local`, manage the tunnel using a YAML file on the origin
		// machine. If `cloudflare`, manage the tunnel's configuration on
		// the Zero Trust dashboard.
		// Available values: "local", "cloudflare".
		source?: string

		// UUID of the tunnel.
		tunnel_id!: string

		// The version of the Tunnel Configuration.
		version?: number
	})
}
