package res

#scaleway_autoscaling_instance_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_autoscaling_instance_policy")
	close({
		metric?: matchN(1, [#metric, [...#metric]])

		// Action to execute when the metric-based condition is met
		action!: string
		id?:     string

		// ID of the instance group related to this policy
		instance_group_id!: string

		// The policy name
		name?: string

		// Priority of this policy compared to all other scaling policies.
		// This determines the processing order. The lower the number,
		// the higher the priority
		priority!: number

		// The project_id you want to attach the resource to
		project_id?: string

		// How to use the number defined in `value` when determining by
		// how many Instances to scale up/down
		type!: string

		// Value representing the magnitude of the scaling action to take
		// for the Instance group. Depending on the `type` parameter,
		// this number could represent a total number of Instances in the
		// group, a number of Instances to add, or a percentage to scale
		// the group by
		value!: number

		// The zone you want to attach the resource to
		zone?: string
	})

	#metric: close({
		// How the values sampled for the `metric` should be aggregated
		aggregate!: string

		// Custom metric to use for this policy. This must be stored in
		// Scaleway Cockpit. The metric forms the basis of the condition
		// that will be checked to determine whether a scaling action
		// should be triggered
		cockpit_metric_name?: string

		// Managed metric to use for this policy. These are available by
		// default in Cockpit without any configuration or
		// `node_exporter`. The chosen metric forms the basis of the
		// condition that will be checked to determine whether a scaling
		// action should be triggered
		managed_metric?: string

		// Name or description of the metric policy
		name!: string

		// Operator used when comparing the threshold value of the chosen
		// `metric` to the actual sampled and aggregated value
		operator!: string

		// Interval of time, in minutes, during which metric is sampled
		sampling_range_min?: number

		// Threshold value to measure the aggregated sampled `metric`
		// value against. Combined with the `operator` field, determines
		// whether a scaling action should be triggered
		threshold?: number
	})
}
