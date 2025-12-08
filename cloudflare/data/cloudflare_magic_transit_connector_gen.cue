package data

#cloudflare_magic_transit_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_magic_transit_connector")
	close({
		// Account identifier
		account_id!:                      string
		activated?:                       bool
		connector_id!:                    string
		id?:                              string
		interrupt_window_duration_hours?: number
		interrupt_window_hour_of_day?:    number
		last_heartbeat?:                  string
		last_seen_version?:               string
		last_updated?:                    string
		license_key?:                     string
		notes?:                           string
		device?: close({
			id?:            string
			serial_number?: string
		})
		timezone?: string
	})
}
