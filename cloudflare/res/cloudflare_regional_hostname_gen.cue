package res

#cloudflare_regional_hostname: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_regional_hostname")
	created_on?: string
	hostname:    string
	id?:         string
	region_key:  string
	zone_id:     string
	timeouts?:   #timeouts

	#timeouts: {
		create?: string
		update?: string
	}
}
