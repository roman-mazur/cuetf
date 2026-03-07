package res

import "list"

#google_compute_instance_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_instance_settings")
	close({
		metadata?: matchN(1, [#metadata, list.MaxItems(1) & [...#metadata]])
		timeouts?: #timeouts

		// The fingerprint used for optimistic locking of this resource.
		// Used
		// internally during updates.
		fingerprint?: string
		id?:          string
		project?:     string

		// A reference to the zone where the machine resides.
		zone!: string
	})

	#metadata: close({
		// A metadata key/value items map. The total size of all keys and
		// values must be less than 512KB
		items?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
