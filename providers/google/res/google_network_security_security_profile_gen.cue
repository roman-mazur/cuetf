package res

import "list"

#google_network_security_security_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_security_security_profile")
	close({
		custom_intercept_profile?: matchN(1, [#custom_intercept_profile, list.MaxItems(1) & [...#custom_intercept_profile]])
		custom_mirroring_profile?: matchN(1, [#custom_mirroring_profile, list.MaxItems(1) & [...#custom_mirroring_profile]])
		threat_prevention_profile?: matchN(1, [#threat_prevention_profile, list.MaxItems(1) & [...#threat_prevention_profile]])
		timeouts?: #timeouts
		url_filtering_profile?: matchN(1, [#url_filtering_profile, list.MaxItems(1) & [...#url_filtering_profile]])

		// Time the security profile was created in UTC.
		create_time?: string

		// An optional description of the security profile. The Max length
		// is 512 characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// This checksum is computed by the server based on the value of
		// other fields,
		// and may be sent on update and delete requests to ensure the
		// client has an up-to-date
		// value before proceeding.
		etag?: string
		id?:   string

		// A map of key/value label pairs to assign to the resource.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the security profile.
		// The default value is 'global'.
		location?: string

		// The name of the security profile resource.
		name!: string

		// The name of the parent this security profile belongs to.
		// Format: organizations/{organization_id}.
		parent?: string

		// Server-defined URL of this resource.
		self_link?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The type of security profile. Possible values:
		// ["THREAT_PREVENTION", "URL_FILTERING", "CUSTOM_MIRRORING",
		// "CUSTOM_INTERCEPT"]
		type!: string

		// Time the security profile was updated in UTC.
		update_time?: string
	})

	#custom_intercept_profile: close({
		// The Intercept Endpoint Group to which matching traffic should
		// be intercepted.
		// Format:
		// projects/{project_id}/locations/global/interceptEndpointGroups/{endpoint_group_id}
		intercept_endpoint_group!: string
	})

	#custom_mirroring_profile: close({
		// The target downstream Mirroring Deployment Groups.
		// This field is used for Packet Broker mirroring endpoint groups
		// to specify
		// the deployment groups that the packet should be mirrored to by
		// the broker.
		// Format:
		// projects/{project_id}/locations/global/mirroringDeploymentGroups/{deployment_group_id}
		mirroring_deployment_groups?: [...string]

		// The target Mirroring Endpoint Group.
		// When a mirroring rule with this security profile attached
		// matches a packet,
		// a replica will be mirrored to the location-local target in this
		// group.
		// Format:
		// projects/{project_id}/locations/global/mirroringEndpointGroups/{endpoint_group_id}
		mirroring_endpoint_group!: string

		// The type of the mirroring endpoint group this profile is
		// attached to.
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

	_#defs: "/$defs/threat_prevention_profile/$defs/antivirus_overrides": close({
		// Threat action override. For some threat types, only a subset of
		// actions applies. Possible values: ["ALERT", "ALLOW",
		// "DEFAULT_ACTION", "DENY"]
		action!: string

		// Required protocol to match. Possible values: ["SMTP", "SMB",
		// "POP3", "IMAP", "HTTP2", "HTTP", "FTP"]
		protocol!: string
	})

	_#defs: "/$defs/threat_prevention_profile/$defs/severity_overrides": close({
		// Threat action override. Possible values: ["ALERT", "ALLOW",
		// "DEFAULT_ACTION", "DENY"]
		action!: string

		// Severity level to match. Possible values: ["CRITICAL", "HIGH",
		// "INFORMATIONAL", "LOW", "MEDIUM"]
		severity!: string
	})

	_#defs: "/$defs/threat_prevention_profile/$defs/threat_overrides": close({
		// Threat action. Possible values: ["ALERT", "ALLOW",
		// "DEFAULT_ACTION", "DENY"]
		action!: string

		// Vendor-specific ID of a threat to override.
		threat_id!: string

		// Type of threat.
		type?: string
	})

	_#defs: "/$defs/url_filtering_profile/$defs/url_filters": close({
		// The action to take when the filter is applied. Possible values:
		// ["ALLOW", "DENY"]
		filtering_action!: string

		// The priority of the filter within the URL filtering profile.
		// Must be an integer from 0 and 2147483647, inclusive. Lower
		// integers indicate higher priorities.
		// The priority of a filter must be unique within a URL filtering
		// profile.
		priority!: number

		// A list of domain matcher strings that a domain name gets
		// compared with to determine if the filter is applicable.
		// A domain name must match with at least one of the strings in
		// the list for a filter to be applicable.
		urls?: [...string]
	})
}
