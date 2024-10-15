package res

#cloudflare_access_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_access_tag")
	account_id?: string
	app_count?:  number
	id?:         string
	name!:       string
	zone_id?:    string
}
