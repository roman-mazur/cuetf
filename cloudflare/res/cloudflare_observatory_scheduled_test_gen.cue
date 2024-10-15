package res

#cloudflare_observatory_scheduled_test: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_observatory_scheduled_test")
	frequency!: string
	id?:        string
	region!:    string
	url!:       string
	zone_id!:   string
	timeouts?:  #timeouts

	#timeouts: create?: string
}
