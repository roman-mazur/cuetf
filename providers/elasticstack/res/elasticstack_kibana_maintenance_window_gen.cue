package res

#elasticstack_kibana_maintenance_window: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_maintenance_window")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// A set schedule over which the maintenance window applies.
		custom_schedule!: close({
			// The duration of the schedule. It allows values in
			// `<integer><unit>` format. `<unit>` is one of `d`, `h`, `m`, or
			// `s` for days, hours, minutes, seconds. For example: `1d`,
			// `5h`, `30m`, `5000s`.
			duration!: string

			// The start date and time of the schedule, provided in ISO 8601
			// format and set to the UTC timezone. For example:
			// `2025-03-12T12:00:00.000Z`.
			start!: string

			// The timezone of the schedule. The default timezone is UTC.
			timezone?: string

			// A set schedule over which the maintenance window applies.
			recurring!: close({
				// The end date and time of the schedule, provided in ISO 8601
				// format and set to the UTC timezone. For example:
				// `2025-03-12T12:00:00.000Z`.
				end?: string

				// The duration of the schedule. It allows values in
				// `<integer><unit>` format. `<unit>` is one of `d`, `h`, `m`, or
				// `s` for days, hours, minutes, seconds. For example: `1d`,
				// `5h`, `30m`, `5000s`.
				every?: string

				// The total number of recurrences of the schedule.
				occurrences?: number

				// The specific months for a recurring schedule. Valid values are
				// 1-12.
				on_month?: [...number]

				// The specific days of the month for a recurring schedule. Valid
				// values are 1-31.
				on_month_day?: [...number]

				// The specific days of the week (`[MO,TU,WE,TH,FR,SA,SU]`) or nth
				// day of month (`[+1MO, -3FR, +2WE, -4SA, -5SU]`) for a
				// recurring schedule.
				on_week_day?: [...string]
			})
		})

		// Whether the current maintenance window is enabled.
		enabled?: bool

		// Generated ID for the maintenance window.
		id?: string

		// An object that narrows the scope of what is affected by this
		// maintenance window.
		scope?: close({
			// A set schedule over which the maintenance window applies.
			alerting!: close({
				// A filter written in Kibana Query Language (KQL).
				kql!: string
			})
		})

		// An identifier for the space. If space_id is not provided, the
		// default space is used.
		space_id?: string

		// The name of the maintenance window.
		title!: string
	})

	#kibana_connection: close({
		// API Key to use for authentication to Kibana
		api_key?: string

		// Bearer Token to use for authentication to Kibana
		bearer_token?: string

		// A list of paths to CA certificates to validate the certificate
		// presented by the Kibana server.
		ca_certs?: [...string]

		// A comma-separated list of endpoints where the terraform
		// provider will point to, this must include the http(s) schema
		// and port number.
		endpoints?: [...string]

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Kibana.
		password?: string

		// Username to use for API authentication to Kibana.
		username?: string
	})
}
