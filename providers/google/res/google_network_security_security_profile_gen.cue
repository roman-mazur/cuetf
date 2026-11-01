package res

import "list"

google_network_security_security_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_security_security_profile")
	close({
		custom_intercept_profile?: matchN(1, [#custom_intercept_profile, list.MaxItems(1) & [...#custom_intercept_profile]])
		custom_mirroring_profile?: matchN(1, [#custom_mirroring_profile, list.MaxItems(1) & [...#custom_mirroring_profile]])
		threat_prevention_profile?: matchN(1, [#threat_prevention_profile, list.MaxItems(1) & [...#threat_prevention_profile]])
		timeouts?: #timeouts
		url_filtering_profile?: matchN(1, [#url_filtering_profile, list.MaxItems(1) & [...#url_filtering_profile]])
		wildfire_analysis_profile?: matchN(1, [#wildfire_analysis_profile, list.MaxItems(1) & [...#wildfire_analysis_profile]])

		// Time the security profile was created in UTC.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// An optional description of the security profile. The Max length is 512 characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// This checksum is computed by the server based on the value of other fields,
		// and may be sent on update and delete requests to ensure the client has an up-to-date
		// value before proceeding.
		etag?: string
		id?:   string

		// A map of key/value label pairs to assign to the resource.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The location of the security profile.
		// The default value is 'global'.
		location?: string

		// The name of the security profile resource.
		name!: string

		// The name of the parent this security profile belongs to.
		// Format: 'organizations/{organization_id}' or 'projects/{project_id}'.
		parent?: string

		// Server-defined URL of this resource.
		self_link?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The type of security profile. Possible values: ["THREAT_PREVENTION",
		// "URL_FILTERING", "CUSTOM_MIRRORING", "CUSTOM_INTERCEPT",
		// "WILDFIRE_ANALYSIS"]
		type!: string

		// Time the security profile was updated in UTC.
		update_time?: string
	})

	#custom_intercept_profile: close({
		// The Intercept Endpoint Group to which matching traffic should be intercepted.
		// Format: projects/{project_id}/locations/global/interceptEndpointGroups/{endpoint_group_id}
		intercept_endpoint_group!: string
	})

	#custom_mirroring_profile: close({
		// The target downstream Mirroring Deployment Groups.
		// This field is used for Packet Broker mirroring endpoint groups to specify
		// the deployment groups that the packet should be mirrored to by the broker.
		// Format: projects/{project_id}/locations/global/mirroringDeploymentGroups/{deployment_group_id}
		mirroring_deployment_groups?: [...string]

		// The target Mirroring Endpoint Group.
		// When a mirroring rule with this security profile attached matches a packet,
		// a replica will be mirrored to the location-local target in this group.
		// Format: projects/{project_id}/locations/global/mirroringEndpointGroups/{endpoint_group_id}
		mirroring_endpoint_group!: string

		// The type of the mirroring endpoint group this profile is attached to.
		// Possible values:
		// DIRECT
		// BROKER
		mirroring_endpoint_group_type?: string
	})

	#threat_prevention_profile: close({
		antivirus_overrides?: matchN(1, [_#defs."/$defs/threat_prevention_profile/$defs/antivirus_overrides", [..._#defs."/$defs/threat_prevention_profile/$defs/antivirus_overrides"]])
		severity_overrides?: matchN(1, [_#defs."/$defs/threat_prevention_profile/$defs/severity_overrides", [..._#defs."/$defs/threat_prevention_profile/$defs/severity_overrides"]])
		threat_overrides?: matchN(1, [_#defs."/$defs/threat_prevention_profile/$defs/threat_overrides", [..._#defs."/$defs/threat_prevention_profile/$defs/threat_overrides"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#url_filtering_profile: close({
		url_filters?: matchN(1, [_#defs."/$defs/url_filtering_profile/$defs/url_filters", [..._#defs."/$defs/url_filtering_profile/$defs/url_filters"]])
	})

	#wildfire_analysis_profile: close({
		wildfire_inline_cloud_analysis_rules?: matchN(1, [_#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_inline_cloud_analysis_rules", [..._#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_inline_cloud_analysis_rules"]])
		wildfire_inline_ml_overrides?: matchN(1, [_#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_inline_ml_overrides", [..._#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_inline_ml_overrides"]])
		wildfire_inline_ml_setting?: matchN(1, [_#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_inline_ml_setting", list.MaxItems(1) & [..._#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_inline_ml_setting"]])
		wildfire_overrides?: matchN(1, [_#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_overrides", [..._#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_overrides"]])
		wildfire_submission_rules?: matchN(1, [_#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_submission_rules", [..._#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_submission_rules"]])
		wildfire_threat_overrides?: matchN(1, [_#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_threat_overrides", [..._#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_threat_overrides"]])

		// Whether to hold the transfer of a file while the WildFire real-time signature
		// cloud performs a signature lookup. Default value is false.
		wildfire_realtime_lookup?: bool
	})

	_#defs: "/$defs/threat_prevention_profile/$defs/antivirus_overrides": close({
		// Threat action override. For some threat types, only a subset of actions
		// applies. Possible values: ["ALERT", "ALLOW", "DEFAULT_ACTION", "DENY"]
		action!: string

		// Required protocol to match. Possible values: ["SMTP", "SMB", "POP3", "IMAP",
		// "HTTP2", "HTTP", "FTP"]
		protocol!: string
	})

	_#defs: "/$defs/threat_prevention_profile/$defs/severity_overrides": close({
		// Threat action override. Possible values: ["ALERT", "ALLOW", "DEFAULT_ACTION", "DENY"]
		action!: string

		// Severity level to match. Possible values: ["CRITICAL", "HIGH", "INFORMATIONAL", "LOW", "MEDIUM"]
		severity!: string
	})

	_#defs: "/$defs/threat_prevention_profile/$defs/threat_overrides": close({
		// Threat action. Possible values: ["ALERT", "ALLOW", "DEFAULT_ACTION", "DENY"]
		action!: string

		// Vendor-specific ID of a threat to override.
		threat_id!: string

		// Type of threat.
		type?: string
	})

	_#defs: "/$defs/url_filtering_profile/$defs/url_filters": close({
		// The action to take when the filter is applied. Possible values: ["ALLOW", "DENY"]
		filtering_action!: string

		// The priority of the filter within the URL filtering profile.
		// Must be an integer from 0 and 2147483647, inclusive. Lower integers indicate higher priorities.
		// The priority of a filter must be unique within a URL filtering profile.
		priority!: number

		// A list of domain matcher strings that a domain name gets compared with to
		// determine if the filter is applicable.
		// A domain name must match with at least one of the strings in the list for a
		// filter to be applicable.
		urls?: [...string]
	})

	_#defs: "/$defs/wildfire_analysis_profile/$defs/wildfire_inline_cloud_analysis_rules": close({
		custom_file_types?: matchN(1, [_#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_inline_cloud_analysis_rules/$defs/custom_file_types", list.MaxItems(1) & [..._#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_inline_cloud_analysis_rules/$defs/custom_file_types"]])

		// The action to take when a rule is matched. Possible values: ["ALLOW", "DENY", "ALERT"]
		action!: string

		// Direction of traffic to match for a rule. Possible values: ["UPLOAD", "DOWNLOAD", "BOTH"]
		direction!: string

		// Defines the file selection mode for a rule. Possible values:
		// ["ALL_FILE_TYPES", "CUSTOM_FILE_TYPES"]
		file_selection_mode!: string
	})

	_#defs: "/$defs/wildfire_analysis_profile/$defs/wildfire_inline_cloud_analysis_rules/$defs/custom_file_types": close({
		// The file types to match for a rule. For allowed values, see [API
		// docs](https://docs.cloud.google.com/firewall/docs/reference/network-security/rest/v1beta1/organizations.locations.securityProfiles#wildfireinlinecloudanalysisrule).
		file_types!: [...string]
	})

	_#defs: "/$defs/wildfire_analysis_profile/$defs/wildfire_inline_ml_overrides": close({
		// Threat action override. Possible values: ["WILDFIRE_DEFAULT_ACTION",
		// "WILDFIRE_ALLOW", "WILDFIRE_ALERT", "WILDFIRE_DENY"]
		action!: string

		// Required protocol to match. Possible values: ["WILDFIRE_SMTP",
		// "WILDFIRE_SMB", "WILDFIRE_POP3", "WILDFIRE_IMAP", "WILDFIRE_HTTP2",
		// "WILDFIRE_HTTP", "WILDFIRE_FTP"]
		protocol!: string
	})

	_#defs: "/$defs/wildfire_analysis_profile/$defs/wildfire_inline_ml_setting": close({
		file_exceptions?: matchN(1, [_#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_inline_ml_setting/$defs/file_exceptions", [..._#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_inline_ml_setting/$defs/file_exceptions"]])
		inline_ml_configs?: matchN(1, [_#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_inline_ml_setting/$defs/inline_ml_configs", [..._#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_inline_ml_setting/$defs/inline_ml_configs"]])
	})

	_#defs: "/$defs/wildfire_analysis_profile/$defs/wildfire_inline_ml_setting/$defs/file_exceptions": close({
		// The file name associated with the partial hash.
		filename?: string

		// Machine learning partial hash of the file to exclude from WildFire Inline ML analysis.
		partial_hash!: string
	})

	_#defs: "/$defs/wildfire_analysis_profile/$defs/wildfire_inline_ml_setting/$defs/inline_ml_configs": close({
		// The action to take for a file type. Possible values: ["DISABLE", "ALERT", "ENABLE"]
		action!: string

		// The file type to match. For allowed values, see [API
		// docs](https://docs.cloud.google.com/firewall/docs/reference/network-security/rest/v1beta1/organizations.locations.securityProfiles#inlinemlfiletype)
		file_type!: string
	})

	_#defs: "/$defs/wildfire_analysis_profile/$defs/wildfire_overrides": close({
		// Threat action override. Possible values: ["WILDFIRE_DEFAULT_ACTION",
		// "WILDFIRE_ALLOW", "WILDFIRE_ALERT", "WILDFIRE_DENY"]
		action!: string

		// Required protocol to match. Possible values: ["WILDFIRE_SMTP",
		// "WILDFIRE_SMB", "WILDFIRE_POP3", "WILDFIRE_IMAP", "WILDFIRE_HTTP2",
		// "WILDFIRE_HTTP", "WILDFIRE_FTP"]
		protocol!: string
	})

	_#defs: "/$defs/wildfire_analysis_profile/$defs/wildfire_submission_rules": close({
		custom_file_types?: matchN(1, [_#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_submission_rules/$defs/custom_file_types", list.MaxItems(1) & [..._#defs."/$defs/wildfire_analysis_profile/$defs/wildfire_submission_rules/$defs/custom_file_types"]])

		// Direction of traffic to match for a rule. Possible values: ["UPLOAD", "DOWNLOAD", "BOTH"]
		direction!: string

		// Defines the file selection mode for a rule. Possible values:
		// ["ALL_FILE_TYPES", "CUSTOM_FILE_TYPES"]
		file_selection_mode!: string
	})

	_#defs: "/$defs/wildfire_analysis_profile/$defs/wildfire_submission_rules/$defs/custom_file_types": close({
		// The file types to match for a rule. For allowed values, see [API
		// docs](https://docs.cloud.google.com/firewall/docs/reference/network-security/rest/v1beta1/organizations.locations.securityProfiles#wildfiresubmissionrule)
		file_types!: [...string]
	})

	_#defs: "/$defs/wildfire_analysis_profile/$defs/wildfire_threat_overrides": close({
		// Threat action override. Possible values: ["WILDFIRE_DEFAULT_ACTION", "WILDFIRE_ALLOW"]
		action!: string

		// Vendor-specific ID of a threat to override.
		threat_id!: string
	})
}
