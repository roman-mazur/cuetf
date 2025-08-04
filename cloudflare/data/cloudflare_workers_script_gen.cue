package data

#cloudflare_workers_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_script")
	close({
		account_id!:  string
		script_name!: string
	})
}
