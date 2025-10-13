package data

#cloudflare_byo_ip_prefixes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_byo_ip_prefixes")
	close({
		// Identifier of a Cloudflare account.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Identifier of a Cloudflare account.
			account_id?: string

			// Approval state of the prefix (P = pending, V = active).
			approved?: string

			// Autonomous System Number (ASN) the prefix will be advertised
			// under.
			asn?: number

			// IP Prefix in Classless Inter-Domain Routing format.
			cidr?: string

			// Description of the prefix.
			description?: string
			created_at?:  string

			// Identifier of an IP Prefix.
			id?: string

			// Identifier for the uploaded LOA document.
			loa_document_id?: string
			modified_at?:     string
		}), [...close({
			// Identifier of a Cloudflare account.
			account_id?: string

			// Approval state of the prefix (P = pending, V = active).
			approved?: string

			// Autonomous System Number (ASN) the prefix will be advertised
			// under.
			asn?: number

			// IP Prefix in Classless Inter-Domain Routing format.
			cidr?: string

			// Description of the prefix.
			description?: string
			created_at?:  string

			// Identifier of an IP Prefix.
			id?: string

			// Identifier for the uploaded LOA document.
			loa_document_id?: string
			modified_at?:     string
		})]])
	})
}
