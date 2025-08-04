package res

#cloudflare_snippets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_snippets")
	close({
		created_on?: string
		files!: [...string]
		modified_on?:  string
		snippet_name!: string
		metadata!: close({
			main_module!: string
		})
		zone_id!: string
	})
}
