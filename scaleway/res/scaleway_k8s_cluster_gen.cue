package res

import "list"

#scaleway_k8s_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_k8s_cluster")
	close({
		auto_upgrade?: matchN(1, [#auto_upgrade, list.MaxItems(1) & [...#auto_upgrade]])
		autoscaler_config?: matchN(1, [#autoscaler_config, list.MaxItems(1) & [...#autoscaler_config]])
		open_id_connect_config?: matchN(1, [#open_id_connect_config, list.MaxItems(1) & [...#open_id_connect_config]])
		timeouts?: #timeouts

		// The list of admission plugins to enable on the cluster
		admission_plugins?: [...string]

		// Additional Subject Alternative Names for the Kubernetes API
		// server certificate
		apiserver_cert_sans?: [...string]

		// Kubernetes API server URL
		apiserver_url?: string

		// The CNI plugin of the cluster
		cni!: string

		// The date and time of the creation of the Kubernetes cluster
		created_at?: string

		// Delete additional resources like block volumes, load-balancers
		// and the private network (if empty) on cluster deletion
		delete_additional_resources!: bool

		// The description of the cluster
		description?: string

		// The list of feature gates to enable on the cluster
		feature_gates?: [...string]
		id?: string

		// The kubeconfig configuration file of the Kubernetes cluster
		kubeconfig?: [...close({
			cluster_ca_certificate?: string
			config_file?:            string
			host?:                   string
			token?:                  string
		})]

		// The name of the cluster
		name!: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The subnet used for the Pod CIDR.
		pod_cidr?: string

		// The ID of the cluster's private network
		private_network_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The subnet used for the Service CIDR.
		service_cidr?: string

		// The IP used for the DNS Service.
		service_dns_ip?: string

		// The status of the cluster
		status?: string

		// The tags associated with the cluster
		tags?: [...string]

		// The type of cluster
		type?: string

		// The date and time of the last update of the Kubernetes cluster
		updated_at?: string

		// True if an upgrade is available
		upgrade_available?: bool

		// The version of the cluster
		version!: string

		// Wildcard DNS pointing to all the ready nodes
		wildcard_dns?: string
	})

	#auto_upgrade: close({
		// Enables the Kubernetes patch version auto upgrade
		enable!: bool

		// Day of the maintenance window
		maintenance_window_day!: string

		// Start hour of the 2-hour maintenance window
		maintenance_window_start_hour!: number
	})

	#autoscaler_config: close({
		// Detect similar node groups and balance the number of nodes
		// between them
		balance_similar_node_groups?: bool

		// Disable the scale down feature of the autoscaler
		disable_scale_down?: bool

		// Type of resource estimator to be used in scale up
		estimator?: string

		// Type of node group expander to be used in scale up
		expander?: string

		// Pods with priority below cutoff will be expendable. They can be
		// killed without any consideration during scale down and they
		// don't cause scale up. Pods with null priority (PodPriority
		// disabled) are non expendable
		expendable_pods_priority_cutoff?: number

		// Ignore DaemonSet pods when calculating resource utilization for
		// scaling down
		ignore_daemonsets_utilization?: bool

		// Maximum number of seconds the cluster autoscaler waits for pod
		// termination when trying to scale down a node
		max_graceful_termination_sec?: number

		// How long after scale up that scale down evaluation resumes
		scale_down_delay_after_add?: string

		// How long a node should be unneeded before it is eligible for
		// scale down
		scale_down_unneeded_time?: string

		// Node utilization level, defined as sum of requested resources
		// divided by capacity, below which a node can be considered for
		// scale down
		scale_down_utilization_threshold?: number
	})

	#open_id_connect_config: close({
		// A client id that all tokens must be issued for
		client_id!: string

		// JWT claim to use as the user's group
		groups_claim?: [...string]

		// Prefix prepended to group claims
		groups_prefix?: string

		// URL of the provider which allows the API server to discover
		// public signing keys
		issuer_url!: string

		// Multiple key=value pairs that describes a required claim in the
		// ID Token
		required_claim?: [...string]

		// JWT claim to use as the user name
		username_claim?: string

		// Prefix prepended to username
		username_prefix?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
