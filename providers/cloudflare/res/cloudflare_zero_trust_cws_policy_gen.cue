package res

cloudflare_zero_trust_cws_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_cws_policy")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string
		created_at?: string

		// Optional free-form description.
		description?: string

		// Non-function rule declared in rego_source. Evaluation uses data.<package_path>.<entrypoint>.
		entrypoint!: string

		// Filter expression that determines whether this policy applies. Maximum 4096 UTF-8 bytes.
		filter!: string

		// Server-assigned UUID
		id?: string

		// Name of the policy
		name!: string

		// Dotted path derived from rego_source. Begins with policy. and is unique per account.
		package_path?: string

		// Inline Rego source with a package beginning with "policy." Maximum 16384 UTF-8 bytes.
		rego_source!: string

		// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
		tags?: [string]: string
		updated_at?: string
	})
}
