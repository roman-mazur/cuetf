package res

#google_network_management_vpc_flow_logs_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_management_vpc_flow_logs_config")
	close({
		// Optional. The aggregation interval for the logs. Default value
		// is
		// INTERVAL_5_SEC. Possible values:
		// AGGREGATION_INTERVAL_UNSPECIFIED INTERVAL_5_SEC
		// INTERVAL_30_SEC INTERVAL_1_MIN INTERVAL_5_MIN INTERVAL_10_MIN
		// INTERVAL_15_MIN
		aggregation_interval?: string

		// Output only. The time the config was created.
		create_time?: string

		// Optional. The user-supplied description of the VPC Flow Logs
		// configuration. Maximum
		// of 512 characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Optional. Export filter used to define which VPC Flow Logs
		// should be logged.
		filter_expr?: string

		// Optional. The value of the field must be in (0, 1]. The
		// sampling rate
		// of VPC Flow Logs where 1.0 means all collected logs are
		// reported. Setting the
		// sampling rate to 0.0 is not allowed. If you want to disable VPC
		// Flow Logs, use
		// the state field instead. Default value is 1.0.
		flow_sampling?: number
		id?:            string

		// Traffic will be logged from the Interconnect Attachment.
		// Format:
		// projects/{project_id}/regions/{region}/interconnectAttachments/{name}
		interconnect_attachment?: string

		// Optional. Resource labels to represent user-provided metadata.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource
		// within its parent collection as described in
		// https://google.aip.dev/122. See documentation
		// for resource type
		// 'networkmanagement.googleapis.com/VpcFlowLogsConfig'.
		location!: string

		// Optional. Configures whether all, none or a subset of metadata
		// fields
		// should be added to the reported VPC flow logs. Default value is
		// INCLUDE_ALL_METADATA.
		// Possible values: METADATA_UNSPECIFIED INCLUDE_ALL_METADATA
		// EXCLUDE_ALL_METADATA CUSTOM_METADATA
		metadata?: string

		// Optional. Custom metadata fields to include in the reported VPC
		// flow
		// logs. Can only be specified if \"metadata\" was set to
		// CUSTOM_METADATA.
		metadata_fields?: [...string]

		// Identifier. Unique name of the configuration using the form:
		// 'projects/{project_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}'
		name?: string

		// Traffic will be logged from VMs, VPN tunnels and Interconnect
		// Attachments within the network. Format:
		// projects/{project_id}/global/networks/{name}
		network?:  string
		timeouts?: #timeouts
		project?:  string

		// Optional. The state of the VPC Flow Log configuration. Default
		// value
		// is ENABLED. When creating a new configuration, it must be
		// enabled.
		// Possible values: STATE_UNSPECIFIED ENABLED DISABLED
		state?: string

		// Traffic will be logged from VMs within the subnetwork. Format:
		// projects/{project_id}/regions/{region}/subnetworks/{name}
		subnet?: string

		// Describes the state of the configured target resource for
		// diagnostic
		// purposes.
		// Possible values:
		// TARGET_RESOURCE_STATE_UNSPECIFIED
		// TARGET_RESOURCE_EXISTS
		// TARGET_RESOURCE_DOES_NOT_EXIST
		target_resource_state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. The time the config was updated.
		update_time?: string

		// Required. ID of the 'VpcFlowLogsConfig'.
		vpc_flow_logs_config_id!: string

		// Traffic will be logged from the VPN Tunnel. Format:
		// projects/{project_id}/regions/{region}/vpnTunnels/{name}
		vpn_tunnel?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
