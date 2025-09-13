package data

#google_vmwareengine_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vmwareengine_cluster")
	close({
		// Configuration of the autoscaling applied to this cluster
		autoscaling_settings?: [...close({
			autoscaling_policies?: [...close({
				autoscale_policy_id?: string
				consumed_memory_thresholds?: [...close({
					scale_in?:  number
					scale_out?: number
				})]
				cpu_thresholds?: [...close({
					scale_in?:  number
					scale_out?: number
				})]
				node_type_id?:   string
				scale_out_size?: number
				storage_thresholds?: [...close({
					scale_in?:  number
					scale_out?: number
				})]
			})]
			cool_down_period?:       string
			max_cluster_node_count?: number
			min_cluster_node_count?: number
		})]

		// True if the cluster is a management cluster; false otherwise.
		// There can only be one management cluster in a private cloud and
		// it has to be the first one.
		management?: bool
		id?:         string

		// The ID of the Cluster.
		name!: string

		// The map of cluster node types in this cluster,
		// where the key is canonical identifier of the node type
		// (corresponds to the NodeType).
		node_type_configs?: [...close({
			custom_core_count?: number
			node_count?:        number
			node_type_id?:      string
		})]

		// The resource name of the private cloud to create a new cluster
		// in.
		// Resource names are schemeless URIs that follow the conventions
		// in https://cloud.google.com/apis/design/resource_names.
		// For example:
		// projects/my-project/locations/us-west1-a/privateClouds/my-cloud
		parent!: string

		// State of the Cluster.
		state?: string

		// System-generated unique identifier for the resource.
		uid?: string
	})
}
