package data

#cloudflare_zone_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_setting")
	close({
		editable?:       bool
		enabled?:        bool
		id?:             string
		modified_on?:    string
		setting_id!:     string
		time_remaining?: number
		value?:          string
		zone_id!:        string
	})
}
