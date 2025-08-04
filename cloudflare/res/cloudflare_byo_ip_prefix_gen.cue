package res

#cloudflare_byo_ip_prefix: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_byo_ip_prefix")
	close({
		// Identifier of a Cloudflare account.
		account_id!: string

		// Prefix advertisement status to the Internet. This field is only
		// not 'null' if on demand is enabled.
		advertised?: bool

		// Last time the advertisement status was changed. This field is
		// only not 'null' if on demand is enabled.
		advertised_modified_at?: string

		// Approval state of the prefix (P = pending, V = active).
		approved?: string

		// Autonomous System Number (ASN) the prefix will be advertised
		// under.
		asn!: number

		// IP Prefix in Classless Inter-Domain Routing format.
		cidr!:       string
		created_at?: string

		// Description of the prefix.
		description?: string

		// Identifier of an IP Prefix.
		id?: string

		// Identifier for the uploaded LOA document.
		loa_document_id!: string
		modified_at?:     string

		// Whether advertisement of the prefix to the Internet may be
		// dynamically enabled or disabled.
		on_demand_enabled?: bool

		// Whether advertisement status of the prefix is locked, meaning
		// it cannot be changed.
		on_demand_locked?: bool
	})
}
