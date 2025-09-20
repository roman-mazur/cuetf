package data

#azurerm_kubernetes_cluster_node_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kubernetes_cluster_node_pool")
	close({
		auto_scaling_enabled?:    bool
		eviction_policy?:         string
		gpu_driver?:              string
		id?:                      string
		kubernetes_cluster_name!: string
		max_count?:               number
		max_pods?:                number
		min_count?:               number
		mode?:                    string
		name!:                    string
		node_count?:              number
		node_labels?: [string]: string
		node_public_ip_enabled?:   bool
		node_public_ip_prefix_id?: string
		node_taints?: [...string]
		timeouts?:                     #timeouts
		orchestrator_version?:         string
		os_disk_size_gb?:              number
		os_disk_type?:                 string
		os_type?:                      string
		priority?:                     string
		proximity_placement_group_id?: string
		resource_group_name!:          string
		spot_max_price?:               number
		tags?: [string]: string
		upgrade_settings?: [...close({
			drain_timeout_in_minutes?:      number
			max_surge?:                     string
			node_soak_duration_in_minutes?: number
		})]
		vm_size?:        string
		vnet_subnet_id?: string
		zones?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
