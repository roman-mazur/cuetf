package data

#scaleway_autoscaling_instance_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_autoscaling_instance_group")
	close({
		// The specification of the minimum and maximum replicas for the
		// Instance group, and the cooldown interval between two scaling
		// events
		capacity?: [...close({
			cooldown_delay?: number
			max_replicas?:   number
			min_replicas?:   number
		})]

		// The date and time of the creation of the Instance group
		created_at?: string

		// Whether to delete all instances in this group when the group is
		// destroyed. Set to `true` to tear them down, `false` (the
		// default) leaves them running
		delete_servers_on_destroy?: bool
		id?:                        string

		// The ID of the instance group
		instance_group_id?: string

		// The specification of the Load Balancer to link to the Instance
		// group
		load_balancer?: [...close({
			backend_ids?: [...string]
			id?:                 string
			private_network_id?: string
		})]

		// The Instance group name
		name?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The tags associated with the Instance group
		tags?: [...string]

		// ID of the Instance template to attach to the Instance group
		template_id?: string

		// The date and time of the last update of the Instance group
		updated_at?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
