package res

cloudflare_zero_trust_cws_workload: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_cws_workload")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string
		created_at?: string

		// Optional free-form description.
		description?: string

		// Filter expression selecting the requests this workload matches. Maximum 4096 UTF-8 bytes.
		filter!: string

		// Server-assigned UUID
		id?: string

		// Human-readable handle; unique per account.
		name!: string

		// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
		tags?: [string]: string
		updated_at?: string
	})
}
