package data

cloudflare_byo_ip_prefix: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_byo_ip_prefix")
	close({
		// Identifier of a Cloudflare account.
		account_id?: string

		// Approval state of the prefix (P = pending, V = approved). Approval does not
		// advertise the prefix or activate traffic.
		approved?: string

		// Autonomous System Number (ASN) the prefix will be advertised under. Use 13335
		// for Cloudflare's ASN, or your own ASN as an integer without the AS prefix.
		// The IRR route and RPKI ROA must authorize this ASN.
		asn?: number

		// State of ASN ownership validation for a customer-owned Autonomous System
		// Number (ASN). Returned when an ASN ownership validation result exists.
		// Omitted when validation does not apply, such as for Cloudflare-owned ASNs.
		// Verification is reused for prefixes with the same account and ASN. Refer to
		// [ASN ownership validation
		// states](https://developers.cloudflare.com/byoip/troubleshooting/prefix-validation/#asn-ownership-validation)
		// for state meanings and resolutions.
		// Available values: "pending", "valid", "missing", "invalid".
		asn_ownership_validation_state?: string

		// State of Autonomous System Provider Authorization (ASPA) validation for a
		// customer-owned ASN. Returned when an ASPA validation result exists.
		// Publishing an ASPA is optional. A published ASPA must authorize AS13335 as a
		// provider. An invalid result blocks approval. If omitted, no ASPA validation
		// result is available. Omission does not indicate successful validation or
		// confirm that no ASPA exists. Refer to [ASPA validation
		// states](https://developers.cloudflare.com/byoip/troubleshooting/prefix-validation/#aspa-validation)
		// for state meanings and resolutions, and [ASPA
		// authorization](https://developers.cloudflare.com/byoip/concepts/route-filtering-rpki/#aspa-authorization)
		// for publication guidance.
		// Available values: "pending", "valid", "invalid".
		aspa_validation_state?: string

		// IP Prefix in Classless Inter-Domain Routing format.
		cidr?:       string
		created_at?: string

		// Whether Cloudflare is allowed to generate the LOA document on behalf of the prefix owner.
		delegate_loa_creation?: bool

		// Description of the prefix.
		description?: string

		// Identifier of an IP Prefix.
		id?: string

		// State of one kind of validation for an IP prefix.
		irr_validation_state?: string

		// Identifier for the uploaded LOA document.
		loa_document_id?: string
		modified_at?:     string

		// State of one kind of validation for an IP prefix.
		ownership_validation_state?: string

		// Token used to verify ownership of the prefix and, when applicable, its ASN.
		// Use the same token for both checks. Refer to the [BYOIP onboarding
		// guide](https://developers.cloudflare.com/byoip/get-started/) for
		// verification instructions.
		ownership_validation_token?: string

		// Identifier of an IP Prefix.
		prefix_id!: string

		// State of one kind of validation for an IP prefix.
		rpki_validation_state?: string
	})
}
