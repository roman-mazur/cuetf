package res

#scaleway_autoscaling_instance_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_autoscaling_instance_group")
	close({
		// The date and time of the creation of the Instance group
		created_at?: string

		// Whether to delete all instances in this group when the group is
		// destroyed. Set to `true` to tear them down, `false` (the
		// default) leaves them running
		delete_servers_on_destroy?: bool
		capacity?: matchN(1, [#capacity, [...#capacity]])
		id?: string

		// The Instance group name
		name?: string

		// The project_id you want to attach the resource to
		project_id?: string
		load_balancer?: matchN(1, [#load_balancer, [...#load_balancer]])

		// The tags associated with the Instance group
		tags?: [...string]

		// ID of the Instance template to attach to the Instance group
		template_id!: string

		// The date and time of the last update of the Instance group
		updated_at?: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#capacity: close({
		// Time (in seconds) after a scaling action during which requests
		// to carry out a new scaling action will be denied
		cooldown_delay?: number

		// The maximum count of Instances for the Instance group
		max_replicas?: number

		// The minimum count of Instances for the Instance group
		min_replicas?: number
	})

	#load_balancer: close({
		// The Load Balancer backend IDs
		backend_ids?: [...string]

		// The ID of the load balancer
		id?: string

		// The ID of the Private Network attached to the Load Balancer
		private_network_id?: string
	})
}
