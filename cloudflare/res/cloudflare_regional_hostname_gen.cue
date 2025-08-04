package res

#cloudflare_regional_hostname: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_regional_hostname")
	close({
		created_on?: string
		hostname!:   string
		id?:         string
		region_key!: string
		routing?:    string
		zone_id!:    string
	})
}
