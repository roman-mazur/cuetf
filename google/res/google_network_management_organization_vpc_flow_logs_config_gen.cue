package res

#google_network_management_organization_vpc_flow_logs_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_management_organization_vpc_flow_logs_config")
	close({
		// Optional. The aggregation interval for the logs. Default value
		// is
		// INTERVAL_5_SEC. Possible values: INTERVAL_5_SEC INTERVAL_30_SEC
		// INTERVAL_1_MIN INTERVAL_5_MIN INTERVAL_10_MIN INTERVAL_15_MIN
		aggregation_interval?: string

		// Output only. The time the config was created.
		create_time?: string

		// Determines whether to include cross project annotations in the
		// logs.
		// This field is available only for organization configurations.
		// If not
		// specified in org configs will be set to
		// CROSS_PROJECT_METADATA_ENABLED.
		// Possible values:
		// CROSS_PROJECT_METADATA_ENABLED
		// CROSS_PROJECT_METADATA_DISABLED Possible values:
		// ["CROSS_PROJECT_METADATA_ENABLED",
		// "CROSS_PROJECT_METADATA_DISABLED"]
		cross_project_metadata?: string

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
		// the state field instead. Default value is 1.0
		flow_sampling?: number

		// Optional. Resource labels to represent the user-provided
		// metadata.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

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
		timeouts?: #timeouts

		// Identifier. Unique name of the configuration using the form:
		// 'organizations/{org_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}'
		name?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		organization!: string

		// Optional. The state of the VPC Flow Log configuration. Default
		// value
		// is ENABLED. When creating a new configuration, it must be
		// enabled.
		// Possible values: ENABLED DISABLED
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. The time the config was updated.
		update_time?: string

		// Required. ID of the 'VpcFlowLogsConfig'.
		vpc_flow_logs_config_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
