package data

#cloudflare_zero_trust_dns_locations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dns_locations")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Indicate whether this location is the default location.
			client_default?: bool
			created_at?:     string

			// Indicate the identifier of the pair of IPv4 addresses assigned
			// to this location.
			dns_destination_ips_id?: string

			// Specify the UUID of the IPv6 block brought to the gateway so
			// that this location's IPv6 address is allocated from the Bring
			// Your Own IPv6 (BYOIPv6) block rather than the standard
			// Cloudflare IPv6 block.
			dns_destination_ipv6_block_id?: string

			// Configure the destination endpoints for this location.
			endpoints?: close({
				doh?: close({
					// Specify the list of allowed source IP network ranges for this
					// endpoint. When the list is empty, the endpoint allows all
					// source IPs. The list takes effect only if the endpoint is
					// enabled for this location.
					networks?: matchN(1, [close({
						// Specify the IP address or IP CIDR.
						network?: string
					}), [...close({
						// Specify the IP address or IP CIDR.
						network?: string
					})]])

					// Indicate whether the DOH endpoint is enabled for this location.
					enabled?: bool

					// Specify whether the DOH endpoint requires user identity
					// authentication.
					require_token?: bool
				})
				dot?: close({
					// Indicate whether the DOT endpoint is enabled for this location.
					enabled?: bool

					// Specify the list of allowed source IP network ranges for this
					// endpoint. When the list is empty, the endpoint allows all
					// source IPs. The list takes effect only if the endpoint is
					// enabled for this location.
					networks?: matchN(1, [close({
						// Specify the IP address or IP CIDR.
						network?: string
					}), [...close({
						// Specify the IP address or IP CIDR.
						network?: string
					})]])
				})
				ipv4?: close({
					// Indicate whether the IPv4 endpoint is enabled for this
					// location.
					enabled?: bool
				})
				ipv6?: close({
					// Indicate whether the IPV6 endpoint is enabled for this
					// location.
					enabled?: bool

					// Specify the list of allowed source IPv6 network ranges for this
					// endpoint. When the list is empty, the endpoint allows all
					// source IPs. The list takes effect only if the endpoint is
					// enabled for this location.
					networks?: matchN(1, [close({
						// Specify the IPv6 address or IPv6 CIDR.
						network?: string
					}), [...close({
						// Specify the IPv6 address or IPv6 CIDR.
						network?: string
					})]])
				})
			})

			// Specify the DNS over HTTPS domain that receives DNS requests.
			// Gateway automatically generates this value.
			doh_subdomain?: string

			// Indicate whether the location must resolve EDNS queries.
			ecs_support?: bool
			id?:          string

			// Defines the automatically generated IPv6 destination IP
			// assigned to this location. Gateway counts all DNS requests
			// sent to this IP as requests under this location.
			ip?: string

			// Specify the list of network ranges from which requests at this
			// location originate. The list takes effect only if it is
			// non-empty and the IPv4 endpoint is enabled for this location.
			networks?: matchN(1, [close({
				// Specify the IPv4 address or IPv4 CIDR. Limit IPv4 CIDRs to a
				// maximum of /24.
				network?: string
			}), [...close({
				// Specify the IPv4 address or IPv4 CIDR. Limit IPv4 CIDRs to a
				// maximum of /24.
				network?: string
			})]])

			// Show the primary destination IPv4 address from the pair
			// identified dns_destination_ips_id. This field read-only.
			ipv4_destination?: string

			// Show the backup destination IPv4 address from the pair
			// identified dns_destination_ips_id. This field read-only.
			ipv4_destination_backup?: string

			// Specify the location name.
			name?:       string
			updated_at?: string
		}), [...close({
			// Indicate whether this location is the default location.
			client_default?: bool
			created_at?:     string

			// Indicate the identifier of the pair of IPv4 addresses assigned
			// to this location.
			dns_destination_ips_id?: string

			// Specify the UUID of the IPv6 block brought to the gateway so
			// that this location's IPv6 address is allocated from the Bring
			// Your Own IPv6 (BYOIPv6) block rather than the standard
			// Cloudflare IPv6 block.
			dns_destination_ipv6_block_id?: string

			// Configure the destination endpoints for this location.
			endpoints?: close({
				doh?: close({
					// Specify the list of allowed source IP network ranges for this
					// endpoint. When the list is empty, the endpoint allows all
					// source IPs. The list takes effect only if the endpoint is
					// enabled for this location.
					networks?: matchN(1, [close({
						// Specify the IP address or IP CIDR.
						network?: string
					}), [...close({
						// Specify the IP address or IP CIDR.
						network?: string
					})]])

					// Indicate whether the DOH endpoint is enabled for this location.
					enabled?: bool

					// Specify whether the DOH endpoint requires user identity
					// authentication.
					require_token?: bool
				})
				dot?: close({
					// Indicate whether the DOT endpoint is enabled for this location.
					enabled?: bool

					// Specify the list of allowed source IP network ranges for this
					// endpoint. When the list is empty, the endpoint allows all
					// source IPs. The list takes effect only if the endpoint is
					// enabled for this location.
					networks?: matchN(1, [close({
						// Specify the IP address or IP CIDR.
						network?: string
					}), [...close({
						// Specify the IP address or IP CIDR.
						network?: string
					})]])
				})
				ipv4?: close({
					// Indicate whether the IPv4 endpoint is enabled for this
					// location.
					enabled?: bool
				})
				ipv6?: close({
					// Indicate whether the IPV6 endpoint is enabled for this
					// location.
					enabled?: bool

					// Specify the list of allowed source IPv6 network ranges for this
					// endpoint. When the list is empty, the endpoint allows all
					// source IPs. The list takes effect only if the endpoint is
					// enabled for this location.
					networks?: matchN(1, [close({
						// Specify the IPv6 address or IPv6 CIDR.
						network?: string
					}), [...close({
						// Specify the IPv6 address or IPv6 CIDR.
						network?: string
					})]])
				})
			})

			// Specify the DNS over HTTPS domain that receives DNS requests.
			// Gateway automatically generates this value.
			doh_subdomain?: string

			// Indicate whether the location must resolve EDNS queries.
			ecs_support?: bool
			id?:          string

			// Defines the automatically generated IPv6 destination IP
			// assigned to this location. Gateway counts all DNS requests
			// sent to this IP as requests under this location.
			ip?: string

			// Specify the list of network ranges from which requests at this
			// location originate. The list takes effect only if it is
			// non-empty and the IPv4 endpoint is enabled for this location.
			networks?: matchN(1, [close({
				// Specify the IPv4 address or IPv4 CIDR. Limit IPv4 CIDRs to a
				// maximum of /24.
				network?: string
			}), [...close({
				// Specify the IPv4 address or IPv4 CIDR. Limit IPv4 CIDRs to a
				// maximum of /24.
				network?: string
			})]])

			// Show the primary destination IPv4 address from the pair
			// identified dns_destination_ips_id. This field read-only.
			ipv4_destination?: string

			// Show the backup destination IPv4 address from the pair
			// identified dns_destination_ips_id. This field read-only.
			ipv4_destination_backup?: string

			// Specify the location name.
			name?:       string
			updated_at?: string
		})]])
	})
}
