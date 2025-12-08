package res

#cloudflare_zone_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zone_setting")
	close({
		// Whether or not this setting can be modified for this zone
		// (based on your Cloudflare plan level).
		editable?: bool

		// ssl-recommender enrollment setting.
		enabled?: bool

		// Setting name
		id?: string

		// last time this setting was modified.
		modified_on?: string

		// Setting name
		setting_id!: string

		// Value of the zone setting.
		// Notes: The interval (in seconds) from when development mode
		// expires (positive integer) or last expired (negative integer)
		// for the domain. If development mode has never been enabled,
		// this value is false.
		time_remaining?: number

		// Current value of the zone setting.
		value!: _

		// Identifier
		zone_id!: string
	})
}
