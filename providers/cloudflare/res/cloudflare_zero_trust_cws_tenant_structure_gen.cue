package res

cloudflare_zero_trust_cws_tenant_structure: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_cws_tenant_structure")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string

		// Platform this structure models. Immutable after creation.
		// Available values: "aws", "cloudflare".
		application!: string
		created_at?:  string

		// Server-assigned UUID
		id?: string

		// Optional unique Rego mount path in the form tenant.<application>.<name>;
		// application must match. Omit to leave unmounted.
		import_path?: string

		// Human-readable name; unique per account
		name!:       string
		updated_at?: string
	})
}
