package res

#cloudflare_email_routing_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_email_routing_settings")
	created?:     string
	enabled:      bool
	id?:          string
	modified?:    string
	name?:        string
	skip_wizard?: bool
	status?:      string
	tag?:         string
	zone_id:      string
}
