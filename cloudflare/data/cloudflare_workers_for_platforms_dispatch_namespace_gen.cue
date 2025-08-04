package data

#cloudflare_workers_for_platforms_dispatch_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_for_platforms_dispatch_namespace")
	close({
		account_id!:         string
		created_by?:         string
		created_on?:         string
		dispatch_namespace?: string
		id?:                 string
		modified_by?:        string
		modified_on?:        string
		namespace_id?:       string
		namespace_name?:     string
		script_count?:       number
	})
}
