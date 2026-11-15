package res

cloudflare_zero_trust_cws_rego_module: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_cws_rego_module")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string
		created_at?: string

		// Server-assigned UUID
		id?: string

		// Name of the Rego module (unique per account)
		name!: string

		// Dotted path derived from rego_source. Begins with lib. and is unique per account.
		package_path?: string

		// Library Rego source with a package beginning with "lib." Maximum 16384 UTF-8 bytes.
		rego_source!: string
		updated_at?:  string
	})
}
