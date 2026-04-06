package data

#scaleway_k8s_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_k8s_cluster")
	close({
		// The list of admission plugins to enable on the cluster
		admission_plugins?: [...string]

		// Additional Subject Alternative Names for the Kubernetes API
		// server certificate
		apiserver_cert_sans?: [...string]

		// Kubernetes API server URL
		apiserver_url?: string

		// The auto upgrade configuration for the cluster
		auto_upgrade?: [...close({
			enable?:                        bool
			maintenance_window_day?:        string
			maintenance_window_start_hour?: number
		})]

		// The autoscaler configuration for the cluster
		autoscaler_config?: [...close({
			balance_similar_node_groups?:      bool
			disable_scale_down?:               bool
			estimator?:                        string
			expander?:                         string
			expendable_pods_priority_cutoff?:  number
			ignore_daemonsets_utilization?:    bool
			max_graceful_termination_sec?:     number
			scale_down_delay_after_add?:       string
			scale_down_unneeded_time?:         string
			scale_down_utilization_threshold?: number
		})]

		// The ID of the cluster
		cluster_id?: string

		// The CNI plugin of the cluster
		cni?: string

		// The date and time of the creation of the Kubernetes cluster
		created_at?: string

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
		name?: string

		// The OpenID Connect configuration of the cluster
		open_id_connect_config?: [...close({
			client_id?: string
			groups_claim?: [...string]
			groups_prefix?: string
			issuer_url?:    string
			required_claim?: [...string]
			username_claim?:  string
			username_prefix?: string
		})]

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
		version?: string

		// Wildcard DNS pointing to all the ready nodes
		wildcard_dns?: string
	})
}
