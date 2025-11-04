package res

import "list"

#google_gkeonprem_vmware_node_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_gkeonprem_vmware_node_pool")
	close({
		// Annotations on the node Pool.
		// This field has the same restrictions as Kubernetes annotations.
		// The total size of all keys and values combined is limited to
		// 256k.
		// Key can have 2 segments: prefix (optional) and name (required),
		// separated by a slash (/).
		// Prefix must be a DNS subdomain.
		// Name must be 63 characters or less, begin and end with
		// alphanumerics,
		// with dashes (-), underscores (_), dots (.), and alphanumerics
		// between.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// The time the cluster was created, in RFC3339 text format.
		create_time?: string

		// The time the cluster was deleted, in RFC3339 text format.
		delete_time?: string

		// The display name for the node pool.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// This checksum is computed by the server based on the value of
		// other
		// fields, and may be sent on update and delete requests to ensure
		// the
		// client has an up-to-date value before proceeding.
		// Allows clients to perform consistent read-modify-writes
		// through optimistic concurrency control.
		etag?: string
		id?:   string

		// The location of the resource.
		location!: string

		// The vmware node pool name.
		name!: string

		// Anthos version for the node pool. Defaults to the user cluster
		// version.
		on_prem_version?: string
		project?:         string

		// If set, there are currently changes in flight to the node pool.
		reconciling?: bool
		config!: matchN(1, [#config, list.MaxItems(1) & [_, ...] & [...#config]])
		node_pool_autoscaling?: matchN(1, [#node_pool_autoscaling, list.MaxItems(1) & [...#node_pool_autoscaling]])
		timeouts?: #timeouts

		// The current state of this cluster.
		state?: string

		// ResourceStatus representing detailed cluster state.
		status?: [...close({
			conditions?: [...close({
				last_transition_time?: string
				message?:              string
				reason?:               string
				state?:                string
				type?:                 string
			})]
			error_message?: string
		})]

		// The unique identifier of the node pool.
		uid?: string

		// The time the cluster was last updated, in RFC3339 text format.
		update_time?: string

		// The cluster this node pool belongs to.
		vmware_cluster!: string
	})

	#config: close({
		// VMware disk size to be used during creation.
		boot_disk_size_gb?: number

		// The number of CPUs for each node in the node pool.
		cpus?: number

		// Allow node pool traffic to be load balanced. Only works for
		// clusters with
		// MetalLB load balancers.
		enable_load_balancer?: bool

		// The OS image name in vCenter, only valid when using Windows.
		image?: string

		// The OS image to be used for each node in a node pool.
		// Currently 'cos', 'cos_cgv2', 'ubuntu', 'ubuntu_cgv2',
		// 'ubuntu_containerd' and 'windows' are supported.
		image_type!: string

		// The map of Kubernetes labels (key/value pairs) to be applied to
		// each node.
		// These will added in addition to any default label(s) that
		// Kubernetes may apply to the node.
		// In case of conflict in label keys, the applied set may differ
		// depending on
		// the Kubernetes version -- it's best to assume the behavior is
		// undefined
		// and conflicts should be avoided.
		labels?: [string]: string
		taints?: matchN(1, [_#defs."/$defs/config/$defs/taints", [..._#defs."/$defs/config/$defs/taints"]])
		vsphere_config?: matchN(1, [_#defs."/$defs/config/$defs/vsphere_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/vsphere_config"]])

		// The megabytes of memory for each node in the node pool.
		memory_mb?: number

		// The number of nodes in the node pool.
		replicas?: number
	})

	#node_pool_autoscaling: close({
		// Maximum number of replicas in the NodePool.
		max_replicas!: number

		// Minimum number of replicas in the NodePool.
		min_replicas!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/config/$defs/taints": close({
		// Available taint effects. Possible values:
		// ["EFFECT_UNSPECIFIED", "NO_SCHEDULE", "PREFER_NO_SCHEDULE",
		// "NO_EXECUTE"]
		effect?: string

		// Key associated with the effect.
		key!: string

		// Value associated with the effect.
		value!: string
	})

	_#defs: "/$defs/config/$defs/vsphere_config": close({
		tags?: matchN(1, [_#defs."/$defs/config/$defs/vsphere_config/$defs/tags", [..._#defs."/$defs/config/$defs/vsphere_config/$defs/tags"]])

		// The name of the vCenter datastore. Inherited from the user
		// cluster.
		datastore?: string

		// Vsphere host groups to apply to all VMs in the node pool
		host_groups?: [...string]
	})

	_#defs: "/$defs/config/$defs/vsphere_config/$defs/tags": close({
		// The Vsphere tag category.
		category?: string

		// The Vsphere tag name.
		tag?: string
	})
}
