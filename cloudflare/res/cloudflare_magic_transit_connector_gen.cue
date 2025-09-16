package res

#cloudflare_magic_transit_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_transit_connector")
	close({
		// Account identifier
		account_id!: string
		device!: close({
			id?:            string
			serial_number?: string
		})
		activated?:                       bool
		id?:                              string
		interrupt_window_duration_hours?: number
		interrupt_window_hour_of_day?:    number
		notes?:                           string
		timezone?:                        string
	})
}
