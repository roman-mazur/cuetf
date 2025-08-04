package res

#cloudflare_stream_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_stream_key")
	close({
		account_id!: string
		created?:    string
		id?:         string
		jwk?:        string
		pem?:        string
	})
}
