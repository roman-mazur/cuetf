package res

import "list"

#google_network_security_security_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_security_security_profile")
	close({
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

		// A map of key/value label pairs to assign to the resource.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The location of the security profile.
		// The default value is 'global'.
		location?: string

		// The name of the security profile resource.
		name!: string

		// The name of the parent this security profile belongs to.
		// Format: organizations/{organization_id}.
		parent?: string
		custom_intercept_profile?: matchN(1, [#custom_intercept_profile, list.MaxItems(1) & [...#custom_intercept_profile]])
		custom_mirroring_profile?: matchN(1, [#custom_mirroring_profile, list.MaxItems(1) & [...#custom_mirroring_profile]])
		threat_prevention_profile?: matchN(1, [#threat_prevention_profile, list.MaxItems(1) & [...#threat_prevention_profile]])
		timeouts?: #timeouts

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
		// The Mirroring Endpoint Group to which matching traffic should
		// be mirrored.
		// Format:
		// projects/{project_id}/locations/global/mirroringEndpointGroups/{endpoint_group_id}
		mirroring_endpoint_group!: string
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
}
