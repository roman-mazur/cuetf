package data

cloudflare_zero_trust_dns_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dns_location")
	close({
		account_id?: string

		// Indicate whether this location is the default location.
		client_default?: bool
		created_at?:     string

		// Indicate the identifier of the pair of IPv4 addresses assigned to this location.
		dns_destination_ips_id?: string

		// Specify the UUID of the IPv6 block brought to the gateway so that this
		// location's IPv6 address is allocated from the Bring Your Own IPv6 (BYOIPv6)
		// block rather than the standard Cloudflare IPv6 block.
		dns_destination_ipv6_block_id?: string

		// Specify the DNS over HTTPS domain that receives DNS requests. Gateway
		// automatically generates this value.
		doh_subdomain?: string

		// Indicate whether the location must resolve EDNS queries.
		ecs_support?: bool

		// Configure the destination endpoints for this location.
		endpoints?: close({
			doh?: close({
				// Indicate whether the DOH endpoint is enabled for this location.
				enabled?: bool

				// Specify the list of allowed source IP network ranges for this endpoint. When
				// the list is empty, the endpoint allows all source IPs. The list takes effect
				// only if the endpoint is enabled for this location.
				networks?: matchN(1, [close({
					// Specify the IP address or IP CIDR.
					network?: string
				}), [...close({
					// Specify the IP address or IP CIDR.
					network?: string
				})]])

				// Specify whether the DOH endpoint requires user identity authentication.
				require_token?: bool
			})
			dot?: close({
				// Indicate whether the DOT endpoint is enabled for this location.
				enabled?: bool

				// Specify the list of allowed source IP network ranges for this endpoint. When
				// the list is empty, the endpoint allows all source IPs. The list takes effect
				// only if the endpoint is enabled for this location.
				networks?: matchN(1, [close({
					// Specify the IP address or IP CIDR.
					network?: string
				}), [...close({
					// Specify the IP address or IP CIDR.
					network?: string
				})]])
			})
			ipv4?: close({
				// Indicate whether the IPv4 endpoint is enabled for this location.
				enabled?: bool
			})
			ipv6?: close({
				// Indicate whether the IPV6 endpoint is enabled for this location.
				enabled?: bool

				// Specify the list of allowed source IPv6 network ranges for this endpoint.
				// When the list is empty, the endpoint allows all source IPs. The list takes
				// effect only if the endpoint is enabled for this location.
				networks?: matchN(1, [close({
					// Specify the IPv6 address or IPv6 CIDR.
					network?: string
				}), [...close({
					// Specify the IPv6 address or IPv6 CIDR.
					network?: string
				})]])
			})
		})
		filter?: close({
			// Sort direction. Only takes effect when `order_by` is also provided; it
			// is ignored otherwise. When `direction` is omitted the effective
			// direction is field-specific: `created_at` and `updated_at` default to
			// descending (newest first); `name` defaults to ascending.
			// * `asc` — ascending.
			// * `desc` — descending.
			// Available values: "asc", "desc".
			direction?: string

			// Filter the returned locations by one or more `field:value` pairs.
			// Repeat the parameter to apply multiple filters; they are combined with
			// logical AND (a location must satisfy every filter to be returned).
			//
			// Supported fields and their matching behaviour:
			// * `name` — case-insensitive substring match on the location name.
			// * `id` — substring match on the location ID (UUID), with or without dashes.
			// * `is_default` — whether it is the default for the account.
			//
			// Each entry must match one of the per-field patterns below:
			// * the field must be one of `name`, `id`, or `is_default`;
			// * `name`/`id` accept any value;
			// * `is_default` only accepts `true` or `false`; any other value returns `400`
			filter?: [...string]

			// Field to sort the returned locations by. When omitted, the order of
			// results is unspecified. Supported values:
			// * `name` — sort alphabetically by location name.
			// * `created_at` — sort by creation time; defaults to descending unless `direction` is set.
			// * `updated_at` — sort by last-modified time; defaults to descending unless `direction` is set.
			// Available values: "name", "created_at", "updated_at".
			order_by?: string

			// Case-insensitive substring match on the location name. When combined
			// with `filter`, both must match (logical AND).
			search?: string
		})
		id?: string

		// Defines the automatically generated IPv6 destination IP assigned to this
		// location. Gateway counts all DNS requests sent to this IP as requests under
		// this location.
		ip?: string

		// Show the primary destination IPv4 address from the pair identified
		// dns_destination_ips_id. This field read-only.
		ipv4_destination?: string

		// Show the backup destination IPv4 address from the pair identified
		// dns_destination_ips_id. This field read-only.
		ipv4_destination_backup?: string
		location_id?:             string

		// Controls how DNS response TTLs are capped for this location relative to the
		// account `max_ttl_secs` setting. Omitting `max_ttl` on update resets it to
		// `inherit`.
		max_ttl?: close({
			// `inherit` uses the account `max_ttl_secs`. `override` uses this location's
			// `ttl_secs`. `disabled` leaves returned TTLs unchanged.
			// Available values: "inherit", "override", "disabled".
			mode?: string

			// Location-specific cap on DNS response TTLs, in seconds. Required when `mode`
			// is `override`. Must be omitted when `mode` is `inherit` or `disabled`.
			ttl_secs?: number
		})

		// Specify the location name.
		name?: string

		// Specify the list of network ranges from which requests at this location
		// originate. The list takes effect only if it is non-empty and the IPv4
		// endpoint is enabled for this location.
		networks?: matchN(1, [close({
			// Specify the IPv4 address or IPv4 CIDR. Limit IPv4 CIDRs to a maximum of /24.
			network?: string
		}), [...close({
			// Specify the IPv4 address or IPv4 CIDR. Limit IPv4 CIDRs to a maximum of /24.
			network?: string
		})]])
		updated_at?: string
	})
}
