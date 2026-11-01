package res

import "list"

google_network_security_firewall_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_security_firewall_endpoint")
	close({
		endpoint_settings?: matchN(1, [#endpoint_settings, list.MaxItems(1) & [...#endpoint_settings]])
		timeouts?: #timeouts
		wildfire_settings?: matchN(1, [#wildfire_settings, list.MaxItems(1) & [...#wildfire_settings]])

		// List of networks that are associated with this endpoint in the local zone.
		// This is a projection of the FirewallEndpointAssociations pointing at this
		// endpoint. A network will only appear in this list after traffic routing is
		// fully configured. Format: projects/{project}/global/networks/{name}.
		associated_networks?: [...string]

		// Project to charge for the deployed firewall endpoint.
		// This field is required for organization-scoped endpoints.
		// For project-scoped endpoints, it is optional but must match the
		// endpoint's project if specified.
		billing_project_id?: string

		// Time the firewall endpoint was created in UTC.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string
		id?: string

		// A map of key/value label pairs to assign to the resource.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The location (zone) of the firewall endpoint.
		location!: string

		// The name of the firewall endpoint resource.
		name!: string

		// The name of the parent this firewall endpoint belongs to.
		// Format: 'organizations/{organization_id}' or 'projects/{project_id}'.
		parent!: string

		// Whether reconciling is in progress, recommended per https://google.aip.dev/128.
		reconciling?: bool

		// Server-defined URL of this resource.
		self_link?: string

		// The current state of the endpoint.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Time the firewall endpoint was updated in UTC.
		update_time?: string
	})

	#endpoint_settings: close({
		// The Palo Alto Networks content cloud region of the firewall endpoint,
		// for example 'US_CENTRAL' or 'CANADA'. See
		// [API
		// docs](https://docs.cloud.google.com/firewall/docs/reference/network-security/rest/v1beta1/organizations.locations.firewallEndpoints#contentcloudregion)
		// for the list of supported regions.
		content_cloud_region?: string

		// Whether to block HTTP partial responses for the firewall endpoint.
		// When 'true', resumption of blocked malicious HTTP file downloads is
		// blocked by the firewall. 'false' provides maximum availability, 'true'
		// provides maximum security.
		http_partial_response_blocked?: bool

		// Indicates whether Jumbo Frames are enabled for the firewall endpoint.
		jumbo_frames_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#wildfire_settings: close({
		wildfire_inline_cloud_analysis_settings?: matchN(1, [_#defs."/$defs/wildfire_settings/$defs/wildfire_inline_cloud_analysis_settings", list.MaxItems(1) & [..._#defs."/$defs/wildfire_settings/$defs/wildfire_inline_cloud_analysis_settings"]])

		// Indicates whether WildFire is enabled for the firewall endpoint.
		// Enabling WildFire requires accepting the WildFire end-user license
		// agreement (EULA) for the endpoint's billing project; see
		// [Configure WildFire](https://docs.cloud.google.com/firewall/docs/configure-wildfire).
		enabled?: bool

		// The duration for which the firewall endpoint waits for a real-time
		// signature lookup response from the WildFire cloud before taking the
		// configured timeout action (1ms to 5000ms, default 1000ms).
		// A duration in seconds with up to nine fractional digits, ending with 's'.
		// Example: "1s".
		wildfire_realtime_lookup_duration?: string

		// The action to take when a WildFire real-time signature lookup times out.
		// Possible values: ["ALLOW", "DENY"]
		wildfire_realtime_lookup_timeout_action?: string

		// The WildFire region for the firewall endpoint, for example
		// 'UNITED_STATES' or 'CANADA'. See
		// [API
		// docs](https://docs.cloud.google.com/firewall/docs/reference/network-security/rest/v1beta1/organizations.locations.firewallEndpoints#wildfireregion)
		// for the list of supported regions.
		wildfire_region?: string
	})

	_#defs: "/$defs/wildfire_settings/$defs/wildfire_inline_cloud_analysis_settings": close({
		// The maximum duration for which the firewall endpoint holds a file
		// while waiting for an inline cloud analysis verdict before taking
		// the configured timeout action (1ms to 240000ms, default 30000ms).
		// A duration in seconds with up to nine fractional digits, ending with 's'.
		// Example: "30s".
		max_analysis_duration?: string

		// Indicates whether logging is disabled when a WildFire inline cloud
		// analysis submission times out.
		submission_timeout_logging_disabled?: bool

		// The action to take when WildFire inline cloud analysis times out. Possible
		// values: ["ALLOW", "DENY"]
		timeout_action?: string
	})
}
