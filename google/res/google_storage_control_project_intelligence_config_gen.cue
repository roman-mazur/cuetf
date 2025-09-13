package res

import "list"

#google_storage_control_project_intelligence_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_storage_control_project_intelligence_config")
	close({
		// Edition configuration of the Storage Intelligence resource.
		// Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
		edition_config?: string

		// The Intelligence config that is effective for the resource.
		effective_intelligence_config?: [...close({
			effective_edition?:   string
			intelligence_config?: string
		})]
		id?: string

		// Identifier of the GCP project. For GCP project, this field can
		// be project name or project number.
		name!: string
		filter?: matchN(1, [#filter, list.MaxItems(1) & [...#filter]])

		// The trial configuration of the Storage Intelligence resource.
		trial_config?: [...close({
			expire_time?: string
		})]

		// The time at which the Storage Intelligence Config resource is
		// last updated.
		update_time?: string
		timeouts?:    #timeouts
	})

	#filter: close({
		excluded_cloud_storage_buckets?: matchN(1, [_#defs."/$defs/filter/$defs/excluded_cloud_storage_buckets", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/excluded_cloud_storage_buckets"]])
		excluded_cloud_storage_locations?: matchN(1, [_#defs."/$defs/filter/$defs/excluded_cloud_storage_locations", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/excluded_cloud_storage_locations"]])
		included_cloud_storage_buckets?: matchN(1, [_#defs."/$defs/filter/$defs/included_cloud_storage_buckets", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/included_cloud_storage_buckets"]])
		included_cloud_storage_locations?: matchN(1, [_#defs."/$defs/filter/$defs/included_cloud_storage_locations", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/included_cloud_storage_locations"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/filter/$defs/excluded_cloud_storage_buckets": close({
		// List of bucket id regexes to exclude in the storage
		// intelligence plan.
		bucket_id_regexes!: [...string]
	})

	_#defs: "/$defs/filter/$defs/excluded_cloud_storage_locations": close({
		// List of locations.
		locations!: [...string]
	})

	_#defs: "/$defs/filter/$defs/included_cloud_storage_buckets": close({
		// List of bucket id regexes to exclude in the storage
		// intelligence plan.
		bucket_id_regexes!: [...string]
	})

	_#defs: "/$defs/filter/$defs/included_cloud_storage_locations": close({
		// List of locations.
		locations!: [...string]
	})
}
