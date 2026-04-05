package res

import "list"

#google_spanner_instance_partition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_spanner_instance_partition")
	close({
		autoscaling_config?: matchN(1, [#autoscaling_config, list.MaxItems(1) & [...#autoscaling_config]])
		timeouts?: #timeouts

		// The name of the instance partition's configuration (similar to
		// a region) which
		// defines the geographic placement and replication of data in
		// this instance partition.
		config!: string

		// The descriptive name for this instance partition as it appears
		// in UIs.
		// Must be unique per project and between 4 and 30 characters in
		// length.
		display_name!: string
		id?:           string

		// The instance to create the instance partition in.
		instance!: string

		// A unique identifier for the instance partition, which cannot be
		// changed after
		// the instance partition is created. The name must be between 2
		// and 64 characters
		// and match the regular expression
		// [a-z][a-z0-9\\-]{0,61}[a-z0-9].
		name!: string

		// The number of nodes allocated to this instance partition. One
		// node equals
		// 1000 processing units. Exactly one of either node_count,
		// processing_units,
		// or autoscaling_config must be present.
		node_count?: number

		// The number of processing units allocated to this instance
		// partition.
		// Exactly one of either node_count, processing_units, or
		// autoscaling_config
		// must be present.
		processing_units?: number
		project?:          string

		// The current instance partition state. Possible values are:
		// CREATING: The instance partition is being created. Resources
		// are being
		// allocated for the instance partition.
		// READY: The instance partition has been allocated resources and
		// is ready for use.
		state?: string
	})

	#autoscaling_config: close({
		autoscaling_limits?: matchN(1, [_#defs."/$defs/autoscaling_config/$defs/autoscaling_limits", list.MaxItems(1) & [..._#defs."/$defs/autoscaling_config/$defs/autoscaling_limits"]])
		autoscaling_targets?: matchN(1, [_#defs."/$defs/autoscaling_config/$defs/autoscaling_targets", list.MaxItems(1) & [..._#defs."/$defs/autoscaling_config/$defs/autoscaling_targets"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/autoscaling_config/$defs/autoscaling_limits": close({
		// Specifies maximum number of nodes allocated to the instance
		// partition. If set, this number
		// should be greater than or equal to min_nodes.
		max_nodes?: number

		// Specifies maximum number of processing units allocated to the
		// instance partition.
		// If set, this number should be multiples of 1000 and be greater
		// than or equal to
		// min_processing_units.
		max_processing_units?: number

		// Specifies number of nodes allocated to the instance partition.
		// If set, this number
		// should be greater than or equal to 1.
		min_nodes?: number

		// Specifies minimum number of processing units allocated to the
		// instance partition.
		// If set, this number should be multiples of 1000.
		min_processing_units?: number
	})

	_#defs: "/$defs/autoscaling_config/$defs/autoscaling_targets": close({
		// Specifies the target high priority cpu utilization percentage
		// that the autoscaler
		// should be trying to achieve for the instance partition.
		// This number is on a scale from 0 (no utilization) to 100 (full
		// utilization).
		high_priority_cpu_utilization_percent?: number

		// Specifies the target storage utilization percentage that the
		// autoscaler
		// should be trying to achieve for the instance partition.
		// This number is on a scale from 0 (no utilization) to 100 (full
		// utilization).
		storage_utilization_percent?: number

		// Specifies the target total cpu utilization percentage that the
		// autoscaler
		// should be trying to achieve for the instance partition.
		// This number is on a scale from 0 (no utilization) to 100 (full
		// utilization). The valid range is [10, 90] inclusive.
		// If not specified or set to 0, the autoscaler will skip scaling
		// based on total cpu utilization.
		// The value should be higher than
		// high_priority_cpu_utilization_percent if present.
		total_cpu_utilization_percent?: number
	})
}
