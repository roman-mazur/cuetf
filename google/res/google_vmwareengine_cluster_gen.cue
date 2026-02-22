package res

import "list"

#google_vmwareengine_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vmwareengine_cluster")
	close({
		// Creation time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and
		// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z"
		// and "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// True if the cluster is a management cluster; false otherwise.
		// There can only be one management cluster in a private cloud and
		// it has to be the first one.
		management?: bool

		// The ID of the Cluster.
		name!: string

		// The resource name of the private cloud to create a new cluster
		// in.
		// Resource names are schemeless URIs that follow the conventions
		// in https://cloud.google.com/apis/design/resource_names.
		// For example:
		// projects/my-project/locations/us-west1-a/privateClouds/my-cloud
		parent!: string
		id?:     string

		// State of the Cluster.
		state?: string

		// System-generated unique identifier for the resource.
		uid?: string
		autoscaling_settings?: matchN(1, [#autoscaling_settings, list.MaxItems(1) & [...#autoscaling_settings]])
		datastore_mount_config?: matchN(1, [#datastore_mount_config, [...#datastore_mount_config]])
		node_type_configs?: matchN(1, [#node_type_configs, [...#node_type_configs]])
		timeouts?: #timeouts

		// Last updated time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#autoscaling_settings: close({
		// The minimum duration between consecutive autoscale operations.
		// It starts once addition or removal of nodes is fully completed.
		// Minimum cool down period is 30m.
		// Cool down period must be in whole minutes (for example, 30m,
		// 31m, 50m).
		// Mandatory for successful addition of autoscaling settings in
		// cluster.
		cool_down_period?: string
		autoscaling_policies!: matchN(1, [_#defs."/$defs/autoscaling_settings/$defs/autoscaling_policies", [_, ...] & [..._#defs."/$defs/autoscaling_settings/$defs/autoscaling_policies"]])

		// Maximum number of nodes of any type in a cluster.
		// Mandatory for successful addition of autoscaling settings in
		// cluster.
		max_cluster_node_count?: number

		// Minimum number of nodes of any type in a cluster.
		// Mandatory for successful addition of autoscaling settings in
		// cluster.
		min_cluster_node_count?: number
	})

	#datastore_mount_config: close({
		// Optional. NFS is accessed by hosts in either read or read_write
		// mode
		// Default value used will be READ_WRITE
		// Possible values:
		// READ_ONLY
		// READ_WRITE
		access_mode?: string

		// The resource name of the datastore to unmount.
		// The datastore requested to be mounted should be in same
		// region/zone as the
		// cluster.
		// Resource names are schemeless URIs that follow the conventions
		// in
		// https://cloud.google.com/apis/design/resource_names.
		// For example:
		// 'projects/my-project/locations/us-central1/datastores/my-datastore'
		datastore!: string

		// File share name.
		file_share?: string

		// Optional. If set to true, the colocation requirement will be
		// ignored.
		// If set to false, the colocation requirement will be enforced.
		// Colocation requirement is the requirement that the cluster must
		// be in the
		// same region/zone of datastore.
		ignore_colocation?: bool

		// Optional. The NFS protocol supported by the NFS volume.
		// Default value used will be NFS_V3
		// Possible values:
		// NFS_V3
		nfs_version?: string

		// Server IP addresses of the NFS volume.
		// For NFS 3, you can only provide a single
		// server IP address or DNS names.
		servers?: [...string]
		datastore_network!: matchN(1, [_#defs."/$defs/datastore_mount_config/$defs/datastore_network", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/datastore_mount_config/$defs/datastore_network"]])
	})

	#node_type_configs: close({
		// Customized number of cores available to each node of the type.
		// This number must always be one of
		// 'nodeType.availableCustomCoreCounts'.
		// If zero is provided max value from
		// 'nodeType.availableCustomCoreCounts' will be used.
		// Once the customer is created then corecount cannot be changed.
		custom_core_count?: number

		// The number of nodes of this type in the cluster.
		node_count!:   number
		node_type_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/autoscaling_settings/$defs/autoscaling_policies": close({
		autoscale_policy_id!: string

		// The canonical identifier of the node type to add or remove.
		node_type_id!: string
		consumed_memory_thresholds?: matchN(1, [_#defs."/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/consumed_memory_thresholds", list.MaxItems(1) & [..._#defs."/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/consumed_memory_thresholds"]])

		// Number of nodes to add to a cluster during a scale-out
		// operation.
		// Must be divisible by 2 for stretched clusters.
		scale_out_size!: number
		cpu_thresholds?: matchN(1, [_#defs."/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/cpu_thresholds", list.MaxItems(1) & [..._#defs."/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/cpu_thresholds"]])
		storage_thresholds?: matchN(1, [_#defs."/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/storage_thresholds", list.MaxItems(1) & [..._#defs."/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/storage_thresholds"]])
	})

	_#defs: "/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/consumed_memory_thresholds": close({
		// The utilization triggering the scale-in operation in percent.
		scale_in!: number

		// The utilization triggering the scale-out operation in percent.
		scale_out!: number
	})

	_#defs: "/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/cpu_thresholds": close({
		// The utilization triggering the scale-in operation in percent.
		scale_in!: number

		// The utilization triggering the scale-out operation in percent.
		scale_out!: number
	})

	_#defs: "/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/storage_thresholds": close({
		// The utilization triggering the scale-in operation in percent.
		scale_in!: number

		// The utilization triggering the scale-out operation in percent.
		scale_out!: number
	})

	_#defs: "/$defs/datastore_mount_config/$defs/datastore_network": close({
		// Optional. The number of connections of the NFS volume.
		// Supported from vsphere 8.0u1. Possible values are 1-4.
		// Default value is 4.
		connection_count?: number

		// Optional. The Maximal Transmission Unit (MTU) of the datastore.
		// MTU value can range from 1330-9000. If not set, system sets
		// default MTU size to 1500.
		mtu?: number

		// The resource name of the network peering, used to access the
		// file share by clients on private cloud. Resource names are
		// schemeless
		// URIs that follow the conventions in
		// https://cloud.google.com/apis/design/resource_names.
		// e.g.
		// projects/my-project/locations/us-central1/networkPeerings/my-network-peering
		network_peering?: string

		// The resource name of the subnet
		// Resource names are schemeless URIs that follow the conventions
		// in
		// https://cloud.google.com/apis/design/resource_names.
		// e.g.
		// projects/my-project/locations/us-central1/subnets/my-subnet
		subnet!: string
	})
}
