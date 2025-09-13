package res

import "list"

#google_spanner_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_spanner_instance")
	close({
		// The name of the instance's configuration (similar but not
		// quite the same as a region) which defines the geographic
		// placement and
		// replication of your databases in this instance. It determines
		// where your data
		// is stored. Values are typically of the form
		// 'regional-europe-west1' , 'us-central' etc.
		// In order to obtain a valid list please consult the
		// [Configuration section of the
		// docs](https://cloud.google.com/spanner/docs/instances).
		config!: string

		// Controls the default backup behavior for new databases within
		// the instance.
		// Note that 'AUTOMATIC' is not permitted for free instances, as
		// backups and backup schedules are not allowed for free
		// instances.
		// if unset or NONE, no default backup schedule will be created
		// for new databases within the instance. Possible values:
		// ["NONE", "AUTOMATIC"]
		default_backup_schedule_type?: string

		// The descriptive name for this instance as it appears in UIs.
		// Must be
		// unique per project and between 4 and 30 characters in length.
		display_name!: string

		// The edition selected for this instance. Different editions
		// provide different capabilities at different price points.
		// Possible values: ["EDITION_UNSPECIFIED", "STANDARD",
		// "ENTERPRISE", "ENTERPRISE_PLUS"]
		edition?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// When deleting a spanner instance, this boolean option will
		// delete all backups of this instance.
		// This must be set to true if you created a backup manually in
		// the console.
		force_destroy?: bool
		id?:            string

		// The type of this instance. The type can be used to distinguish
		// product variants, that can affect aspects like:
		// usage restrictions, quotas and billing. Currently this is used
		// to distinguish FREE_INSTANCE vs PROVISIONED instances.
		// When configured as FREE_INSTANCE, the field 'edition' should
		// not be configured. Possible values: ["PROVISIONED",
		// "FREE_INSTANCE"]
		instance_type?: string

		// An object containing a list of "key": value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// A unique identifier for the instance, which cannot be changed
		// after
		// the instance is created. The name must be between 6 and 30
		// characters
		// in length.
		// If not provided, a random string starting with 'tf-' will be
		// selected.
		name?: string
		autoscaling_config?: matchN(1, [#autoscaling_config, list.MaxItems(1) & [...#autoscaling_config]])
		timeouts?: #timeouts

		// The number of nodes allocated to this instance. Exactly one of
		// either num_nodes, processing_units or
		// autoscaling_config must be present in terraform except when
		// instance_type = FREE_INSTANCE.
		num_nodes?: number

		// The number of processing units allocated to this instance.
		// Exactly one of either num_nodes,
		// processing_units or autoscaling_config must be present in
		// terraform except when instance_type = FREE_INSTANCE.
		processing_units?: number
		project?:          string

		// Instance status: 'CREATING' or 'READY'.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#autoscaling_config: close({
		asymmetric_autoscaling_options?: matchN(1, [_#defs."/$defs/autoscaling_config/$defs/asymmetric_autoscaling_options", [..._#defs."/$defs/autoscaling_config/$defs/asymmetric_autoscaling_options"]])
		autoscaling_limits?: matchN(1, [_#defs."/$defs/autoscaling_config/$defs/autoscaling_limits", list.MaxItems(1) & [..._#defs."/$defs/autoscaling_config/$defs/autoscaling_limits"]])
		autoscaling_targets?: matchN(1, [_#defs."/$defs/autoscaling_config/$defs/autoscaling_targets", list.MaxItems(1) & [..._#defs."/$defs/autoscaling_config/$defs/autoscaling_targets"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/autoscaling_config/$defs/asymmetric_autoscaling_options": close({
		overrides?: matchN(1, [_#defs."/$defs/autoscaling_config/$defs/asymmetric_autoscaling_options/$defs/overrides", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/autoscaling_config/$defs/asymmetric_autoscaling_options/$defs/overrides"]])
		replica_selection?: matchN(1, [_#defs."/$defs/autoscaling_config/$defs/asymmetric_autoscaling_options/$defs/replica_selection", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/autoscaling_config/$defs/asymmetric_autoscaling_options/$defs/replica_selection"]])
	})

	_#defs: "/$defs/autoscaling_config/$defs/asymmetric_autoscaling_options/$defs/overrides": close({
		autoscaling_limits?: matchN(1, [_#defs."/$defs/autoscaling_config/$defs/asymmetric_autoscaling_options/$defs/overrides/$defs/autoscaling_limits", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/autoscaling_config/$defs/asymmetric_autoscaling_options/$defs/overrides/$defs/autoscaling_limits"]])
	})

	_#defs: "/$defs/autoscaling_config/$defs/asymmetric_autoscaling_options/$defs/overrides/$defs/autoscaling_limits": close({
		// The maximum number of nodes for this specific replica.
		max_nodes!: number

		// The minimum number of nodes for this specific replica.
		min_nodes!: number
	})

	_#defs: "/$defs/autoscaling_config/$defs/asymmetric_autoscaling_options/$defs/replica_selection": close({
		// The location of the replica to apply asymmetric autoscaling
		// options.
		location!: string
	})

	_#defs: "/$defs/autoscaling_config/$defs/autoscaling_limits": close({
		// Specifies maximum number of nodes allocated to the instance. If
		// set, this number
		// should be greater than or equal to min_nodes.
		max_nodes?: number

		// Specifies maximum number of processing units allocated to the
		// instance.
		// If set, this number should be multiples of 1000 and be greater
		// than or equal to
		// min_processing_units.
		max_processing_units?: number

		// Specifies number of nodes allocated to the instance. If set,
		// this number
		// should be greater than or equal to 1.
		min_nodes?: number

		// Specifies minimum number of processing units allocated to the
		// instance.
		// If set, this number should be multiples of 1000.
		min_processing_units?: number
	})

	_#defs: "/$defs/autoscaling_config/$defs/autoscaling_targets": close({
		// Specifies the target high priority cpu utilization percentage
		// that the autoscaler
		// should be trying to achieve for the instance.
		// This number is on a scale from 0 (no utilization) to 100 (full
		// utilization)..
		high_priority_cpu_utilization_percent?: number

		// Specifies the target storage utilization percentage that the
		// autoscaler
		// should be trying to achieve for the instance.
		// This number is on a scale from 0 (no utilization) to 100 (full
		// utilization).
		storage_utilization_percent?: number
	})
}
