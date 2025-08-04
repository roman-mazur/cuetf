package data

#cloudflare_email_routing_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_routing_settings")
	close({
		created?:     string
		enabled?:     bool
		id?:          string
		modified?:    string
		name?:        string
		skip_wizard?: bool
		status?:      string
		zone_id!:     string
	})
}
