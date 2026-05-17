package res

import "list"

#google_compute_organization_security_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_organization_security_policy")
	close({
		advanced_options_config?: matchN(1, [#advanced_options_config, list.MaxItems(1) & [...#advanced_options_config]])
		timeouts?: #timeouts

		// A textual description for the organization security policy.
		description?: string

		// User-provided name of the organization security policy. The
		// name should be unique in the organization in which the
		// security policy is created. This should only be used when
		// SecurityPolicyType is FIREWALL.
		display_name?: string

		// Fingerprint of this resource. This field is used internally
		// during
		// updates of this resource.
		fingerprint?: string
		id?:          string

		// The parent of this OrganizationSecurityPolicy in the Cloud
		// Resource Hierarchy.
		// Format: organizations/{organization_id} or folders/{folder_id}
		parent!: string

		// The unique identifier for the resource. This identifier is
		// defined by the server.
		policy_id?: string

		// User-provided name of the organization security policy. The
		// name should be unique in the organization in which the
		// security policy is created. This should only be used when
		// SecurityPolicyType is CLOUD_ARMOR.
		short_name?: string

		// The type indicates the intended use of the security policy.
		// This field can be set only at resource creation time.
		//
		// **NOTE** : 'FIREWALL' type is deprecated and will be removed in
		// a future major release. Please use
		// 'google_compute_firewall_policy' instead." Possible values:
		// ["FIREWALL", "CLOUD_ARMOR", "CLOUD_ARMOR_EDGE",
		// "CLOUD_ARMOR_INTERNAL_SERVICE", "CLOUD_ARMOR_NETWORK"]
		type?: string
	})

	#advanced_options_config: close({
		json_custom_config?: matchN(1, [_#defs."/$defs/advanced_options_config/$defs/json_custom_config", list.MaxItems(1) & [..._#defs."/$defs/advanced_options_config/$defs/json_custom_config"]])

		// JSON body parsing. Supported values include: "DISABLED",
		// "STANDARD", "STANDARD_WITH_GRAPHQL". Possible values:
		// ["DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL"]
		json_parsing?: string

		// Logging level. Supported values include: "NORMAL", "VERBOSE".
		// Possible values: ["NORMAL", "VERBOSE"]
		log_level?: string

		// The maximum request size chosen by the customer with Waf
		// enabled. Values supported are "8KB", "16KB", "32KB", "48KB"
		// and "64KB".
		// Values are case insensitive. Possible values: ["8KB", "16KB",
		// "32KB", "48KB", "64KB"]
		request_body_inspection_size?: string

		// An optional list of case-insensitive request header names to
		// use for resolving the client source IP address.
		user_ip_request_headers?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/advanced_options_config/$defs/json_custom_config": close({
		// A list of content types to be parsed as JSON.
		content_types!: [...string]
	})
}
