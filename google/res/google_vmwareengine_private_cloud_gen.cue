package res

import "list"

#google_vmwareengine_private_cloud: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vmwareengine_private_cloud")
	close({
		// Creation time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// Time when the resource was scheduled for deletion.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		delete_time?: string

		// The number of hours to delay this request. You can set this
		// value to an hour between 0 to 8, where setting it to 0 starts
		// the deletion request immediately. If no value is set, a
		// default value is set at the API Level.
		deletion_delay_hours?: number

		// User-provided description for this private cloud.
		description?: string

		// Time when the resource will be irreversibly deleted.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		expire_time?: string

		// Details about a HCX Cloud Manager appliance.
		hcx?: [...close({
			fqdn?:        string
			internal_ip?: string
			state?:       string
			version?:     string
		})]
		id?: string

		// The location where the PrivateCloud should reside.
		location!: string

		// The ID of the PrivateCloud.
		name!: string

		// Details about a NSX Manager appliance.
		nsx?: [...close({
			fqdn?:        string
			internal_ip?: string
			state?:       string
			version?:     string
		})]
		project?: string

		// While set true, deletion_delay_hours value will be sent in the
		// request even for zero value of the field. This field is only
		// useful for setting 0 value to the deletion_delay_hours field.
		// It can be used both alone and together with
		// deletion_delay_hours.
		send_deletion_delay_hours_if_zero?: bool
		management_cluster!: matchN(1, [#management_cluster, list.MaxItems(1) & [_, ...] & [...#management_cluster]])
		network_config!: matchN(1, [#network_config, list.MaxItems(1) & [_, ...] & [...#network_config]])
		timeouts?: #timeouts

		// State of the resource. New values may be added to this enum
		// when appropriate.
		state?: string

		// Initial type of the private cloud. Possible values:
		// ["STANDARD", "TIME_LIMITED", "STRETCHED"]
		type?: string

		// System-generated unique identifier for the resource.
		uid?: string

		// Last update time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string

		// Details about a vCenter Server management appliance.
		vcenter?: [...close({
			fqdn?:        string
			internal_ip?: string
			state?:       string
			version?:     string
		})]
	})

	#management_cluster: close({
		autoscaling_settings?: matchN(1, [_#defs."/$defs/management_cluster/$defs/autoscaling_settings", list.MaxItems(1) & [..._#defs."/$defs/management_cluster/$defs/autoscaling_settings"]])
		node_type_configs?: matchN(1, [_#defs."/$defs/management_cluster/$defs/node_type_configs", [..._#defs."/$defs/management_cluster/$defs/node_type_configs"]])
		stretched_cluster_config?: matchN(1, [_#defs."/$defs/management_cluster/$defs/stretched_cluster_config", list.MaxItems(1) & [..._#defs."/$defs/management_cluster/$defs/stretched_cluster_config"]])

		// The user-provided identifier of the new Cluster. The identifier
		// must meet the following requirements:
		// * Only contains 1-63 alphanumeric characters and hyphens
		// * Begins with an alphabetical character
		// * Ends with a non-hyphen character
		// * Not formatted as a UUID
		// * Complies with RFC 1034
		// (https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
		cluster_id!: string
	})

	#network_config: close({
		// DNS Server IP of the Private Cloud.
		dns_server_ip?: string

		// Management CIDR used by VMware management appliances.
		management_cidr!: string

		// The IP address layout version of the management IP address
		// range.
		// Possible versions include:
		// * managementIpAddressLayoutVersion=1: Indicates the legacy IP
		// address layout used by some existing private clouds. This is
		// no longer supported for new private clouds
		// as it does not support all features.
		// * managementIpAddressLayoutVersion=2: Indicates the latest IP
		// address layout
		// used by all newly created private clouds. This version supports
		// all current features.
		management_ip_address_layout_version?: number

		// The relative resource name of the VMware Engine network
		// attached to the private cloud.
		// Specify the name in the following form:
		// projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
		// where {project} can either be a project number or a project ID.
		vmware_engine_network?: string

		// The canonical name of the VMware Engine network in
		// the form:
		// projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
		vmware_engine_network_canonical?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/management_cluster/$defs/autoscaling_settings": close({
		// The minimum duration between consecutive autoscale operations.
		// It starts once addition or removal of nodes is fully completed.
		// Minimum cool down period is 30m.
		// Cool down period must be in whole minutes (for example, 30m,
		// 31m, 50m).
		// Mandatory for successful addition of autoscaling settings in
		// cluster.
		cool_down_period?: string
		autoscaling_policies!: matchN(1, [_#defs."/$defs/management_cluster/$defs/autoscaling_settings/$defs/autoscaling_policies", [_, ...] & [..._#defs."/$defs/management_cluster/$defs/autoscaling_settings/$defs/autoscaling_policies"]])

		// Maximum number of nodes of any type in a cluster.
		// Mandatory for successful addition of autoscaling settings in
		// cluster.
		max_cluster_node_count?: number

		// Minimum number of nodes of any type in a cluster.
		// Mandatory for successful addition of autoscaling settings in
		// cluster.
		min_cluster_node_count?: number
	})

	_#defs: "/$defs/management_cluster/$defs/autoscaling_settings/$defs/autoscaling_policies": close({
		autoscale_policy_id!: string

		// The canonical identifier of the node type to add or remove.
		node_type_id!: string
		consumed_memory_thresholds?: matchN(1, [_#defs."/$defs/management_cluster/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/consumed_memory_thresholds", list.MaxItems(1) & [..._#defs."/$defs/management_cluster/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/consumed_memory_thresholds"]])

		// Number of nodes to add to a cluster during a scale-out
		// operation.
		// Must be divisible by 2 for stretched clusters.
		scale_out_size!: number
		cpu_thresholds?: matchN(1, [_#defs."/$defs/management_cluster/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/cpu_thresholds", list.MaxItems(1) & [..._#defs."/$defs/management_cluster/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/cpu_thresholds"]])
		storage_thresholds?: matchN(1, [_#defs."/$defs/management_cluster/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/storage_thresholds", list.MaxItems(1) & [..._#defs."/$defs/management_cluster/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/storage_thresholds"]])
	})

	_#defs: "/$defs/management_cluster/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/consumed_memory_thresholds": close({
		// The utilization triggering the scale-in operation in percent.
		scale_in!: number

		// The utilization triggering the scale-out operation in percent.
		scale_out!: number
	})

	_#defs: "/$defs/management_cluster/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/cpu_thresholds": close({
		// The utilization triggering the scale-in operation in percent.
		scale_in!: number

		// The utilization triggering the scale-out operation in percent.
		scale_out!: number
	})

	_#defs: "/$defs/management_cluster/$defs/autoscaling_settings/$defs/autoscaling_policies/$defs/storage_thresholds": close({
		// The utilization triggering the scale-in operation in percent.
		scale_in!: number

		// The utilization triggering the scale-out operation in percent.
		scale_out!: number
	})

	_#defs: "/$defs/management_cluster/$defs/node_type_configs": close({
		// Customized number of cores available to each node of the type.
		// This number must always be one of
		// 'nodeType.availableCustomCoreCounts'.
		// If zero is provided max value from
		// 'nodeType.availableCustomCoreCounts' will be used.
		// This cannot be changed once the PrivateCloud is created.
		custom_core_count?: number

		// The number of nodes of this type in the cluster.
		node_count!:   number
		node_type_id!: string
	})

	_#defs: "/$defs/management_cluster/$defs/stretched_cluster_config": close({
		// Zone that will remain operational when connection between the
		// two zones is lost.
		// Specify the zone in the following format:
		// projects/{project}/locations/{location}.
		preferred_location?: string

		// Additional zone for a higher level of availability and load
		// balancing.
		// Specify the zone in the following format:
		// projects/{project}/locations/{location}.
		secondary_location?: string
	})
}
