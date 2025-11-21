package res

#cloudflare_magic_transit_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_transit_connector")
	close({
		device!: close({
			id?: string

			// Set to true to provision a license key for this connector. Only
			// used during resource creation. This is a write-only field that
			// will not be stored in state.
			provision_license?: bool
			serial_number?:     string
		})

		// Account identifier
		account_id!:                      string
		activated?:                       bool
		id?:                              string
		interrupt_window_duration_hours?: number
		interrupt_window_hour_of_day?:    number

		// License key for the connector. This is only returned on
		// creation and will not be available in subsequent reads.
		license_key?: string
		notes?:       string
		timezone?:    string
	})
}
