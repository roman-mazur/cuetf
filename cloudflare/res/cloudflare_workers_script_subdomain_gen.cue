package res

#cloudflare_workers_script_subdomain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_script_subdomain")
	close({
		account_id!:       string
		enabled!:          bool
		previews_enabled?: bool
		script_name!:      string
	})
}
