package res

cloudflare_zero_trust_organization_trust_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_organization_trust_settings")
	close({
		// Identifier.
		account_id!: string

		// Whether all accounts in the organization are trusted to use this account's
		// cross-account Access resources.
		grant_trust_to_all_accounts_in_org!: bool

		// Identifier.
		id?: string

		// Explicit account IDs trusted to use this account's cross-account Access
		// resources. At most 100 unique valid account IDs are accepted. Omitted from
		// responses when empty.
		trusting_accounts?: [...string]
	})
}
