package res

#cloudflare_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_filter")
	description?: string
	expression!:  string
	id?:          string
	paused?:      bool
	ref?:         string
	zone_id!:     string
}
