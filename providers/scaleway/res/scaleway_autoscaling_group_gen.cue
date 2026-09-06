package res

scaleway_autoscaling_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_autoscaling_group")
	close({
		// The creation timestamp of the AutoScaling Group.
		created_at?: string

		// The ID of the AutoScaling Group, in the `{zone}/{id}` format.
		id?: string

		// The load balancer configuration.
		load_balancer_configuration?: close({
			// The auto-healing configuration.
			auto_healing?: close({
				// Whether auto-healing is enabled.
				enabled?: bool

				// The grace period for health checks.
				grace_period?: string
			})

			// The ID of the load balancer.
			load_balancer_id!: string

			// The list of load balancer backend configurations.
			backends!: matchN(1, [close({
				// The IP address family (IPv4 or IPv6).
				address_family!: string

				// The ID of the load balancer backend.
				backend_id!: string

				// The ID of the private network.
				private_network_id?: string
			}), [...close({
				// The IP address family (IPv4 or IPv6).
				address_family!: string

				// The ID of the load balancer backend.
				backend_id!: string

				// The ID of the private network.
				private_network_id?: string
			})]])
		})

		// The name of the AutoScaling Group. If not provided, a random name will be generated.
		name?: string

		// The project ID the AutoScaling Group belongs to. Defaults to the provider's project ID.
		project_id?: string

		// The scaling policy configuration.
		scaling_policy!: close({
			// The target CPU utilization percentage to trigger scaling events.
			cpu_target?: number

			// The fixed number of instances for the group.
			fixed_size?: number

			// The maximum number of instances in the group.
			maximum_size!: number

			// The target memory utilization percentage to trigger scaling events.
			memory_target?: number

			// The minimum number of instances in the group.
			minimum_size!: number

			// The cooldown duration after a scale-in event.
			scale_in_cooldown?: string

			// The number of instances to remove during scale-in event.
			scale_in_step?: number

			// The cooldown duration after a scale-out event.
			scale_out_cooldown?: string

			// The number of instances to add during scale-out event.
			scale_out_step?: number
		})

		// The current status of the AutoScaling Group.
		status?: string

		// The tags associated with the AutoScaling Group.
		tags?: [...string]

		// The ID of the Instance Template used to create instances in this group.
		template_id!: string

		// The last update timestamp of the AutoScaling Group.
		updated_at?: string

		// The zone the AutoScaling Group is in.
		zone?: string
	})
}
