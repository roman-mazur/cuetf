package data

#scaleway_autoscaling_instance_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_autoscaling_instance_policy")
	close({
		// Action to execute when the metric-based condition is met
		action?: string
		id?:     string

		// ID of the instance group related to this policy
		instance_group_id?: string

		// The ID of the instance policy
		instance_policy_id?: string

		// Cockpit metric to use when determining whether to trigger a
		// scale up/down action
		metric?: [...close({
			aggregate?:           string
			cockpit_metric_name?: string
			managed_metric?:      string
			name?:                string
			operator?:            string
			sampling_range_min?:  number
			threshold?:           number
		})]

		// The policy name
		name?: string

		// Priority of this policy compared to all other scaling policies.
		// This determines the processing order. The lower the number,
		// the higher the priority
		priority?: number

		// The project_id you want to attach the resource to
		project_id?: string

		// How to use the number defined in `value` when determining by
		// how many Instances to scale up/down
		type?: string

		// Value representing the magnitude of the scaling action to take
		// for the Instance group. Depending on the `type` parameter,
		// this number could represent a total number of Instances in the
		// group, a number of Instances to add, or a percentage to scale
		// the group by
		value?: number

		// The zone you want to attach the resource to
		zone?: string
	})
}
