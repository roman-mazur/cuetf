package data

#google_dns_managed_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_dns_managed_zone")
	close({
		description?:     string
		dns_name?:        string
		id?:              string
		managed_zone_id?: number
		name!:            string
		name_servers?: [...string]
		project?:    string
		visibility?: string
	})
}
