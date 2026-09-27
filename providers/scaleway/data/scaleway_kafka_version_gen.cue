package data

scaleway_kafka_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_kafka_version")
	close({
		// The cluster configuration settings available for clusters running this version.
		available_settings?: matchN(1, [close({
			// Boolean property, if the setting is a boolean.
			bool_property?: close({
				// The default value of the setting.
				default_value?: bool
			})

			// The setting description.
			description?: string

			// Float property, if the setting is a float.
			float_property?: close({
				// The default value of the setting.
				default_value?: number

				// The maximum value of the setting.
				max?: number

				// The minimum value of the setting.
				min?: number

				// The unit of the setting.
				unit?: string
			})

			// Whether the setting can be applied without a restart.
			hot_configurable?: bool

			// Integer property, if the setting is an integer.
			int_property?: close({
				// The default value of the setting.
				default_value?: number

				// The maximum value of the setting.
				max?: number

				// The minimum value of the setting.
				min?: number

				// The unit of the setting.
				unit?: string
			})

			// The setting name.
			name?: string

			// String property, if the setting is a string.
			string_property?: close({
				// The default value of the setting.
				default_value?: string

				// The string constraint of the setting (e.g. a regex).
				string_constraint?: string
			})
		}), [...close({
			// Boolean property, if the setting is a boolean.
			bool_property?: close({
				// The default value of the setting.
				default_value?: bool
			})

			// The setting description.
			description?: string

			// Float property, if the setting is a float.
			float_property?: close({
				// The default value of the setting.
				default_value?: number

				// The maximum value of the setting.
				max?: number

				// The minimum value of the setting.
				min?: number

				// The unit of the setting.
				unit?: string
			})

			// Whether the setting can be applied without a restart.
			hot_configurable?: bool

			// Integer property, if the setting is an integer.
			int_property?: close({
				// The default value of the setting.
				default_value?: number

				// The maximum value of the setting.
				max?: number

				// The minimum value of the setting.
				min?: number

				// The unit of the setting.
				unit?: string
			})

			// The setting name.
			name?: string

			// String property, if the setting is a string.
			string_property?: close({
				// The default value of the setting.
				default_value?: string

				// The string constraint of the setting (e.g. a regex).
				string_constraint?: string
			})
		})]])

		// The end-of-life date of the version (RFC 3339 format).
		end_of_life_at?: string

		// The ID of the version, in the `{region}/{version}` format.
		id?: string

		// The Kafka version name. Use `latest` to retrieve the most recent available version.
		name!: string

		// The region the Kafka version is available in.
		region?: string
	})
}
