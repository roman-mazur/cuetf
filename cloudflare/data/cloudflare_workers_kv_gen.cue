package data

#cloudflare_workers_kv: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_workers_kv")
	close({
		// Identifier.
		account_id!: string

		// A key's name. The name may be at most 512 bytes. All printable,
		// non-whitespace characters are valid. Use percent-encoding to
		// define key names as part of a URL.
		id?: string

		// A key's name. The name may be at most 512 bytes. All printable,
		// non-whitespace characters are valid. Use percent-encoding to
		// define key names as part of a URL.
		key_name!: string

		// Namespace identifier tag.
		namespace_id!: string
	})
}
