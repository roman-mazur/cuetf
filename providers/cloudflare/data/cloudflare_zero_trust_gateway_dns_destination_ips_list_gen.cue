package data

cloudflare_zero_trust_gateway_dns_destination_ips_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_gateway_dns_destination_ips_list")
	close({
		// Specify the Cloudflare account identifier.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			backup_ip?: string

			// Specify whether the pair shared across multiple accounts (shared) or
			// available exclusively to this account. Non-shared pairs can contain
			// Cloudflare-owned IPs (dedicated) or customer-provided IPs (byoip).
			// Available values: "shared", "dedicated", "byoip".
			pair_type?:  string
			id?:         string
			primary_ip?: string
		}), [...close({
			backup_ip?: string

			// Specify whether the pair shared across multiple accounts (shared) or
			// available exclusively to this account. Non-shared pairs can contain
			// Cloudflare-owned IPs (dedicated) or customer-provided IPs (byoip).
			// Available values: "shared", "dedicated", "byoip".
			pair_type?:  string
			id?:         string
			primary_ip?: string
		})]])
	})
}
