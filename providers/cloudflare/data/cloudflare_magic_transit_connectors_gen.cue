package data

#cloudflare_magic_transit_connectors: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_magic_transit_connectors")
	close({
		// Account identifier
		account_id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			activated?: bool
			id?:        string

			// Allowed days of the week for upgrades. Default is all days.
			interrupt_window_days_of_week?: [...string]
			interrupt_window_duration_hours?: number

			// List of dates (YYYY-MM-DD) when upgrades are blocked.
			interrupt_window_embargo_dates?: [...string]
			interrupt_window_hour_of_day?: number
			last_heartbeat?:               string
			last_seen_version?:            string
			last_updated?:                 string
			license_key?:                  string
			notes?:                        string
			timezone?:                     string
			device?: close({
				id?:            string
				serial_number?: string
			})
		}), [...close({
			activated?: bool
			id?:        string

			// Allowed days of the week for upgrades. Default is all days.
			interrupt_window_days_of_week?: [...string]
			interrupt_window_duration_hours?: number

			// List of dates (YYYY-MM-DD) when upgrades are blocked.
			interrupt_window_embargo_dates?: [...string]
			interrupt_window_hour_of_day?: number
			last_heartbeat?:               string
			last_seen_version?:            string
			last_updated?:                 string
			license_key?:                  string
			notes?:                        string
			timezone?:                     string
			device?: close({
				id?:            string
				serial_number?: string
			})
		})]])
	})
}
