package data

#scaleway_k8s_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_k8s_pool")
	close({
		// Enable the autohealing on the pool
		autohealing?: bool

		// Enable the autoscaling on the pool
		autoscaling?: bool

		// The ID of the cluster on which this pool will be created
		cluster_id?: string

		// Container runtime for the pool
		container_runtime?: string

		// The date and time of the creation of the pool
		created_at?: string

		// The actual size of the pool
		current_size?: number
		id?:           string

		// The Kubelet arguments to be used by this pool
		kubelet_args?: [string]: string

		// Maximum size of the pool
		max_size?: number

		// Minimum size of the pool
		min_size?: number

		// The name of the pool
		name?: string

		// Server type of the pool servers
		node_type?: string

		// List of nodes in the pool
		nodes?: [...close({
			id?:   string
			name?: string
			private_ips?: [...close({
				address?: string
				id?:      string
			})]
			public_ip?:    string
			public_ip_v6?: string
			status?:       string
		})]

		// ID of the placement group
		placement_group_id?: string

		// The ID of the pool
		pool_id?: string

		// Defines if the public IP should be removed from the nodes.
		public_ip_disabled?: bool

		// The region you want to attach the resource to
		region?: string

		// The size of the system volume of the nodes in gigabyte
		root_volume_size_in_gb?: number

		// System volume type of the nodes composing the pool
		root_volume_type?: string

		// The ID of the security group
		security_group_id?: string

		// Size of the pool
		size?: number

		// The status of the pool
		status?: string

		// The tags associated with the pool
		tags?: [...string]

		// The date and time of the last update of the pool
		updated_at?: string

		// The Pool upgrade policy
		upgrade_policy?: [...close({
			max_surge?:       number
			max_unavailable?: number
		})]

		// The Kubernetes version of the pool
		version?: string

		// Whether to wait for the pool to be ready
		wait_for_pool_ready?: bool

		// The zone you want to attach the resource to
		zone?: string
	})
}
