package res

cloudflare_zone_tracing_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zone_tracing_rules")
	close({
		// Specify the zone ID.
		id?: string

		// Trace rules in evaluation order.
		rules!: matchN(1, [close({
			// Available values: "set_trace_settings".
			action!: string
			action_parameters!: close({
				// The ratio of requests sampled for tracing, from 0 to 1.
				sampling_ratio!: number
			})
			description!: string

			// A Rules language expression that selects requests.
			expression!: string
			enabled!:    bool
		}), [...close({
			// Available values: "set_trace_settings".
			action!: string
			action_parameters!: close({
				// The ratio of requests sampled for tracing, from 0 to 1.
				sampling_ratio!: number
			})
			description!: string

			// A Rules language expression that selects requests.
			expression!: string
			enabled!:    bool
		})]])

		// Specify the zone ID.
		zone_id!: string
	})
}
