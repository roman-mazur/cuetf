package res

#cloudflare_workers_kv: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_kv")
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

		// Associates arbitrary JSON data with a key/value pair.
		metadata?: string

		// Namespace identifier tag.
		namespace_id!: string

		// A byte sequence to be stored, up to 25 MiB in length.
		value!: string
	})
}
