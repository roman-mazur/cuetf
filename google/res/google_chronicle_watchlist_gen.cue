package res

import "list"

#google_chronicle_watchlist: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_watchlist")
	close({
		// Output only. Time the watchlist was created.
		create_time?: string

		// Optional. Description of the watchlist.
		description?: string

		// Required. Display name of the watchlist.
		// Note that it must be at least one character and less than 63
		// characters
		// (https://google.aip.dev/148).
		display_name!: string

		// Count of different types of entities in the watchlist.
		entity_count?: [...close({
			asset?: number
			user?:  number
		})]
		id?: string

		// The unique identifier for the Chronicle instance, which is the
		// same as the customer ID.
		instance!: string

		// The location of the resource. This is the geographical region
		// where the Chronicle instance resides, such as "us" or
		// "europe-west2".
		location!: string

		// Optional. Weight applied to the risk score for entities
		// in this watchlist.
		// The default is 1.0 if it is not specified.
		multiplying_factor?: number

		// Identifier. Resource name of the watchlist. This unique
		// identifier is generated using values provided for the URL
		// parameters.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/watchlists/{watchlist}
		name?: string
		entity_population_mechanism!: matchN(1, [#entity_population_mechanism, list.MaxItems(1) & [_, ...] & [...#entity_population_mechanism]])
		timeouts?: #timeouts
		watchlist_user_preferences?: matchN(1, [#watchlist_user_preferences, list.MaxItems(1) & [...#watchlist_user_preferences]])
		project?: string

		// Output only. Time the watchlist was last updated.
		update_time?: string

		// Optional. The ID to use for the watchlist,
		// which will become the final component of the watchlist's
		// resource name.
		// This value should be 4-63 characters, and valid characters
		// are /a-z-/.
		watchlist_id?: string
	})

	#entity_population_mechanism: close({
		manual?: matchN(1, [_#defs."/$defs/entity_population_mechanism/$defs/manual", list.MaxItems(1) & [..._#defs."/$defs/entity_population_mechanism/$defs/manual"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#watchlist_user_preferences: close({
		// Optional. Whether the watchlist is pinned on the dashboard.
		pinned?: bool
	})

	_#defs: "/$defs/entity_population_mechanism/$defs/manual": close({})
}
