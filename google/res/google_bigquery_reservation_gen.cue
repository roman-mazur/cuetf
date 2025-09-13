package res

import "list"

#google_bigquery_reservation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigquery_reservation")
	close({
		// Maximum number of queries that are allowed to run concurrently
		// in this reservation. This is a soft limit due to asynchronous
		// nature of the system and various optimizations for small
		// queries. Default value is 0 which means that concurrency will
		// be automatically set based on the reservation size.
		concurrency?: number

		// The edition type. Valid values are STANDARD, ENTERPRISE,
		// ENTERPRISE_PLUS
		edition?: string

		// If false, any query using this reservation will use idle slots
		// from other reservations within
		// the same admin project. If true, a query using this reservation
		// will execute with the slot
		// capacity specified above at most.
		ignore_idle_slots?: bool
		id?:                string

		// The geographic location where the transfer config should
		// reside.
		// Examples: US, EU, asia-northeast1. The default value is US.
		location?: string

		// The name of the reservation. This field must only contain
		// alphanumeric characters or dash.
		name!: string

		// The location where the reservation was originally created. This
		// is set only during the
		// failover reservation's creation. All billing charges for the
		// failover reservation will be
		// applied to this location.
		original_primary_location?: string

		// The current location of the reservation's primary replica. This
		// field is only set for
		// reservations using the managed disaster recovery feature.
		primary_location?: string

		// The Disaster Recovery(DR) replication status of the
		// reservation. This is only available for
		// the primary replicas of DR/failover reservations and provides
		// information about the both the
		// staleness of the secondary and the last error encountered while
		// trying to replicate changes
		// from the primary to the secondary. If this field is blank, it
		// means that the reservation is
		// either not a DR reservation or the reservation is a DR
		// secondary or that any replication
		// operations on the reservation have succeeded.
		replication_status?: [...close({
			error?: [...close({
				code?:    number
				message?: string
			})]
			last_error_time?:       string
			last_replication_time?: string
		})]
		autoscale?: matchN(1, [#autoscale, list.MaxItems(1) & [...#autoscale]])
		project?:  string
		timeouts?: #timeouts

		// The current location of the reservation's secondary replica.
		// This field is only set for
		// reservations using the managed disaster recovery feature. Users
		// can set this in create
		// reservation calls to create a failover reservation or in update
		// reservation calls to convert
		// a non-failover reservation to a failover reservation(or vice
		// versa).
		secondary_location?: string

		// Minimum slots available to this reservation. A slot is a unit
		// of computational power in BigQuery, and serves as the
		// unit of parallelism. Queries using this reservation might use
		// more slots during runtime if ignoreIdleSlots is set to false.
		slot_capacity!: number
	})

	#autoscale: close({
		// The slot capacity added to this reservation when autoscale
		// happens. Will be between [0, max_slots].
		current_slots?: number

		// Number of slots to be scaled when needed.
		max_slots?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
