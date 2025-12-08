package res

import "list"

#google_app_engine_service_split_traffic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_app_engine_service_split_traffic")
	close({
		id?: string

		// If set to true traffic will be migrated to this version.
		migrate_traffic?: bool
		project?:         string

		// The name of the service these settings apply to.
		service!: string
		split!: matchN(1, [#split, list.MaxItems(1) & [_, ...] & [...#split]])
		timeouts?: #timeouts
	})

	#split: close({
		// Mapping from version IDs within the service to fractional
		// (0.000, 1] allocations of traffic for that version. Each
		// version can be specified only once, but some versions in the
		// service may not have any traffic allocation. Services that
		// have traffic allocated cannot be deleted until either the
		// service is deleted or their traffic allocation is removed.
		// Allocations must sum to 1. Up to two decimal place precision
		// is supported for IP-based splits and up to three decimal
		// places is supported for cookie-based splits.
		allocations!: [string]: string

		// Mechanism used to determine which version a request is sent to.
		// The traffic selection algorithm will be stable for either type
		// until allocations are changed. Possible values:
		// ["UNSPECIFIED", "COOKIE", "IP", "RANDOM"]
		shard_by?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
