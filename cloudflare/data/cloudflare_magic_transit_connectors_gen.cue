package data

#cloudflare_magic_transit_connectors: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_transit_connectors")
	close({
		// Account identifier
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			activated?:                       bool
			id?:                              string
			interrupt_window_duration_hours?: number
			interrupt_window_hour_of_day?:    number
			last_heartbeat?:                  string
			last_seen_version?:               string
			last_updated?:                    string
			license_key?:                     string
			notes?:                           string
			timezone?:                        string
			device?: close({
				id?:            string
				serial_number?: string
			})
		}), [...close({
			activated?:                       bool
			id?:                              string
			interrupt_window_duration_hours?: number
			interrupt_window_hour_of_day?:    number
			last_heartbeat?:                  string
			last_seen_version?:               string
			last_updated?:                    string
			license_key?:                     string
			notes?:                           string
			timezone?:                        string
			device?: close({
				id?:            string
				serial_number?: string
			})
		})]])
	})
}
