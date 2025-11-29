package res

import "list"

#google_compute_autoscaler: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_autoscaler")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// Name of the resource. The name must be 1-63 characters long and
		// match
		// the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
		// the
		// first character must be a lowercase letter, and all following
		// characters must be a dash, lowercase letter, or digit, except
		// the last
		// character, which cannot be a dash.
		name!:    string
		id?:      string
		project?: string
		autoscaling_policy!: matchN(1, [#autoscaling_policy, list.MaxItems(1) & [_, ...] & [...#autoscaling_policy]])

		// URL of the managed instance group that this autoscaler will
		// scale.
		target!:    string
		self_link?: string
		timeouts?:  #timeouts

		// URL of the zone where the instance group resides.
		zone?: string
	})

	#autoscaling_policy: close({
		// The number of seconds that the autoscaler should wait before it
		// starts collecting information from a new instance. This
		// prevents
		// the autoscaler from collecting information when the instance is
		// initializing, during which the collected usage would not be
		// reliable. The default time autoscaler waits is 60 seconds.
		//
		// Virtual machine initialization times might vary because of
		// numerous factors. We recommend that you test how long an
		// instance may take to initialize. To do this, create an instance
		// and time the startup process.
		cooldown_period?: number
		cpu_utilization?: matchN(1, [_#defs."/$defs/autoscaling_policy/$defs/cpu_utilization", list.MaxItems(1) & [..._#defs."/$defs/autoscaling_policy/$defs/cpu_utilization"]])

		// The maximum number of instances that the autoscaler can scale
		// up
		// to. This is required when creating or updating an autoscaler.
		// The
		// maximum number of replicas should not be lower than minimal
		// number
		// of replicas.
		max_replicas!: number

		// The minimum number of replicas that the autoscaler can scale
		// down
		// to. This cannot be less than 0. If not provided, autoscaler
		// will
		// choose a default value depending on maximum number of instances
		// allowed.
		min_replicas!: number

		// Defines operating mode for this policy.
		mode?: string
		load_balancing_utilization?: matchN(1, [_#defs."/$defs/autoscaling_policy/$defs/load_balancing_utilization", list.MaxItems(1) & [..._#defs."/$defs/autoscaling_policy/$defs/load_balancing_utilization"]])
		metric?: matchN(1, [_#defs."/$defs/autoscaling_policy/$defs/metric", [..._#defs."/$defs/autoscaling_policy/$defs/metric"]])
		scale_in_control?: matchN(1, [_#defs."/$defs/autoscaling_policy/$defs/scale_in_control", list.MaxItems(1) & [..._#defs."/$defs/autoscaling_policy/$defs/scale_in_control"]])
		scaling_schedules?: matchN(1, [_#defs."/$defs/autoscaling_policy/$defs/scaling_schedules", [..._#defs."/$defs/autoscaling_policy/$defs/scaling_schedules"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/autoscaling_policy/$defs/cpu_utilization": close({
		// Indicates whether predictive autoscaling based on CPU metric is
		// enabled. Valid values are:
		//
		// - NONE (default). No predictive method is used. The autoscaler
		// scales the group to meet current demand based on real-time
		// metrics.
		//
		// - OPTIMIZE_AVAILABILITY. Predictive autoscaling improves
		// availability by monitoring daily and weekly load patterns and
		// scaling out ahead of anticipated demand.
		predictive_method?: string

		// The target CPU utilization that the autoscaler should maintain.
		// Must be a float value in the range (0, 1]. If not specified,
		// the
		// default is 0.6.
		//
		// If the CPU level is below the target utilization, the
		// autoscaler
		// scales down the number of instances until it reaches the
		// minimum
		// number of instances you specified or until the average CPU of
		// your instances reaches the target utilization.
		//
		// If the average CPU is above the target utilization, the
		// autoscaler
		// scales up until it reaches the maximum number of instances you
		// specified or until the average utilization reaches the target
		// utilization.
		target!: number
	})

	_#defs: "/$defs/autoscaling_policy/$defs/load_balancing_utilization": close({
		// Fraction of backend capacity utilization (set in HTTP(s) load
		// balancing configuration) that autoscaler should maintain. Must
		// be a positive float value. If not defined, the default is 0.8.
		target!: number
	})

	_#defs: "/$defs/autoscaling_policy/$defs/metric": close({
		// A filter string to be used as the filter string for
		// a Stackdriver Monitoring TimeSeries.list API call.
		// This filter is used to select a specific TimeSeries for
		// the purpose of autoscaling and to determine whether the metric
		// is exporting per-instance or per-group data.
		//
		// You can only use the AND operator for joining selectors.
		// You can only use direct equality comparison operator (=)
		// without
		// any functions for each selector.
		// You can specify the metric in both the filter string and in the
		// metric field. However, if specified in both places, the metric
		// must
		// be identical.
		//
		// The monitored resource type determines what kind of values are
		// expected for the metric. If it is a gce_instance, the
		// autoscaler
		// expects the metric to include a separate TimeSeries for each
		// instance in a group. In such a case, you cannot filter on
		// resource
		// labels.
		//
		// If the resource type is any other value, the autoscaler expects
		// this metric to contain values that apply to the entire
		// autoscaled
		// instance group and resource label filtering can be performed to
		// point autoscaler at the correct TimeSeries to scale upon.
		// This is called a per-group metric for the purpose of
		// autoscaling.
		//
		// If not specified, the type defaults to gce_instance.
		//
		// You should provide a filter that is selective enough to pick
		// just
		// one TimeSeries for the autoscaled group or for each of the
		// instances
		// (if you are using gce_instance resource type). If multiple
		// TimeSeries are returned upon the query execution, the
		// autoscaler
		// will sum their respective values to obtain its scaling value.
		filter?: string

		// The identifier (type) of the Stackdriver Monitoring metric.
		// The metric cannot have negative values.
		//
		// The metric must have a value type of INT64 or DOUBLE.
		name!: string

		// If scaling is based on a per-group metric value that represents
		// the
		// total amount of work to be done or resource usage, set this
		// value to
		// an amount assigned for a single instance of the scaled group.
		// The autoscaler will keep the number of instances proportional
		// to the
		// value of this metric, the metric itself should not change value
		// due
		// to group resizing.
		//
		// For example, a good metric to use with the target is
		// 'pubsub.googleapis.com/subscription/num_undelivered_messages'
		// or a custom metric exporting the total number of requests
		// coming to
		// your instances.
		//
		// A bad example would be a metric exporting an average or median
		// latency, since this value can't include a chunk assignable to a
		// single instance, it could be better used with
		// utilization_target
		// instead.
		single_instance_assignment?: number

		// The target value of the metric that autoscaler should
		// maintain. This must be a positive value. A utilization
		// metric scales number of virtual machines handling requests
		// to increase or decrease proportionally to the metric.
		//
		// For example, a good metric to use as a utilizationTarget is
		// www.googleapis.com/compute/instance/network/received_bytes_count.
		// The autoscaler will work to keep this value constant for each
		// of the instances.
		target?: number

		// Defines how target utilization value is expressed for a
		// Stackdriver Monitoring metric. Possible values: ["GAUGE",
		// "DELTA_PER_SECOND", "DELTA_PER_MINUTE"]
		type?: string
	})

	_#defs: "/$defs/autoscaling_policy/$defs/scale_in_control": close({
		max_scaled_in_replicas?: matchN(1, [_#defs."/$defs/autoscaling_policy/$defs/scale_in_control/$defs/max_scaled_in_replicas", list.MaxItems(1) & [..._#defs."/$defs/autoscaling_policy/$defs/scale_in_control/$defs/max_scaled_in_replicas"]])

		// How long back autoscaling should look when computing
		// recommendations
		// to include directives regarding slower scale down, as described
		// above.
		time_window_sec?: number
	})

	_#defs: "/$defs/autoscaling_policy/$defs/scale_in_control/$defs/max_scaled_in_replicas": close({
		// Specifies a fixed number of VM instances. This must be a
		// positive
		// integer.
		fixed?: number

		// Specifies a percentage of instances between 0 to 100%,
		// inclusive.
		// For example, specify 80 for 80%.
		percent?: number
	})

	_#defs: "/$defs/autoscaling_policy/$defs/scaling_schedules": close({
		// A description of a scaling schedule.
		description?: string

		// A boolean value that specifies if a scaling schedule can
		// influence autoscaler recommendations. If set to true, then a
		// scaling schedule has no effect.
		disabled?: bool

		// The duration of time intervals (in seconds) for which this
		// scaling schedule will be running. The minimum allowed value is
		// 300.
		duration_sec!: number

		// Minimum number of VM instances that autoscaler will recommend
		// in time intervals starting according to schedule.
		min_required_replicas!: number

		// The start timestamps of time intervals when this scaling
		// schedule should provide a scaling signal. This field uses the
		// extended cron format (with an optional year field).
		schedule!: string

		// The time zone to be used when interpreting the schedule. The
		// value of this field must be a time zone name from the tz
		// database: http://en.wikipedia.org/wiki/Tz_database.
		time_zone?: string
		name!:      string
	})
}
