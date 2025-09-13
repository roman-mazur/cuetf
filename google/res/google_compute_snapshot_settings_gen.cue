package res

import "list"

#google_compute_snapshot_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_snapshot_settings")
	close({
		storage_location?: matchN(1, [#storage_location, list.MaxItems(1) & [_, ...] & [...#storage_location]])
		timeouts?: #timeouts
		id?:       string
		project?:  string
	})

	#storage_location: close({
		locations?: matchN(1, [_#defs."/$defs/storage_location/$defs/locations", [..._#defs."/$defs/storage_location/$defs/locations"]])

		// The chosen location policy Possible values:
		// ["NEAREST_MULTI_REGION", "LOCAL_REGION", "SPECIFIC_LOCATIONS"]
		policy!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/storage_location/$defs/locations": close({
		location!: string

		// Name of the location. It should be one of the Cloud Storage
		// buckets.
		// Only one location can be specified. (should match location)
		name!: string
	})
}
