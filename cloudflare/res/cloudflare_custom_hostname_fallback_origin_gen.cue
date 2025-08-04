package res

#cloudflare_custom_hostname_fallback_origin: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_custom_hostname_fallback_origin")
	close({
		created_at?: string
		errors?: [...string]
		id?:         string
		origin!:     string
		status?:     string
		updated_at?: string
		zone_id!:    string
	})
}
