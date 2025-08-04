package res

import "list"

#elasticstack_elasticsearch_transform: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_transform")
	close({
		// Specifies whether the transform checkpoint ranges should be
		// optimized for performance.
		align_checkpoints?: bool

		// Defines if dates in the output should be written as ISO
		// formatted string (default) or as millis since epoch.
		dates_as_epoch_millis?: bool

		// Specifies whether the transform should deduce the destination
		// index mappings from the transform config.
		deduce_mappings?: bool

		// When true, deferrable validations are not run upon creation,
		// but rather when the transform is started. This behavior may be
		// desired if the source index does not exist until after the
		// transform is created. Default is `false`
		defer_validation?: bool

		// Free text description of the transform.
		description?: string

		// Specifies a limit on the number of input documents per second.
		// Default (unset) value disables throttling.
		docs_per_second?: number

		// Controls whether the transform should be started or stopped.
		// Default is `false` (stopped).
		enabled?: bool

		// The interval between checks for changes in the source indices
		// when the transform is running continuously. Defaults to `1m`.
		frequency?: string

		// Internal identifier of the resource
		id?: string

		// The latest method transforms the data by finding the latest
		// document for each unique key. JSON definition expected. Either
		// 'pivot' or 'latest' must be present.
		latest?: string

		// Defines the initial page size to use for the composite
		// aggregation for each checkpoint. Default is 500.
		max_page_search_size?: number
		destination?: matchN(1, [#destination, list.MaxItems(1) & [_, ...] & [...#destination]])
		retention_policy?: matchN(1, [#retention_policy, list.MaxItems(1) & [...#retention_policy]])
		source?: matchN(1, [#source, list.MaxItems(1) & [_, ...] & [...#source]])
		sync?: matchN(1, [#sync, list.MaxItems(1) & [...#sync]])

		// Defines optional transform metadata.
		metadata?: string

		// Name of the transform you wish to create.
		name!: string

		// Defines the number of retries on a recoverable failure before
		// the transform task is marked as failed. The default value is
		// the cluster-level setting num_transform_failure_retries.
		num_failure_retries?: number

		// The pivot method transforms the data by aggregating and
		// grouping it. JSON definition expected. Either 'pivot' or
		// 'latest' must be present.
		pivot?: string

		// Period to wait for a response from Elasticsearch when
		// performing any management operation. If no response is
		// received before the timeout expires, the operation fails and
		// returns an error. Defaults to `30s`.
		timeout?: string

		// In unattended mode, the transform retries indefinitely in case
		// of an error which means the transform never fails.
		unattended?: bool
	})

	#destination: close({
		aliases?: matchN(1, [_#defs."/$defs/destination/$defs/aliases", [..._#defs."/$defs/destination/$defs/aliases"]])

		// The destination index for the transform.
		index!: string

		// The unique identifier for an ingest pipeline.
		pipeline?: string
	})

	#retention_policy: close({
		time?: matchN(1, [_#defs."/$defs/retention_policy/$defs/time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/retention_policy/$defs/time"]])
	})

	#source: close({
		// The source indices for the transform.
		indices!: [...string]

		// A query clause that retrieves a subset of data from the source
		// index.
		query?: string

		// Definitions of search-time runtime fields that can be used by
		// the transform.
		runtime_mappings?: string
	})

	#sync: close({
		time?: matchN(1, [_#defs."/$defs/sync/$defs/time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/sync/$defs/time"]])
	})

	_#defs: "/$defs/destination/$defs/aliases": close({
		// The name of the alias.
		alias!: string

		// Whether the destination index should be the only index in this
		// alias. Defaults to false.
		move_on_creation?: bool
	})

	_#defs: "/$defs/retention_policy/$defs/time": close({
		// The date field that is used to calculate the age of the
		// document.
		field!: string

		// Specifies the maximum age of a document in the destination
		// index.
		max_age!: string
	})

	_#defs: "/$defs/sync/$defs/time": close({
		// The time delay between the current time and the latest input
		// data time. The default value is 60s.
		delay?: string

		// The date field that is used to identify new documents in the
		// source.
		field!: string
	})
}
