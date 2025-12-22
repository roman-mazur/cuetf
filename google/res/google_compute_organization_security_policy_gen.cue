package res

#google_compute_organization_security_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_organization_security_policy")
	close({
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
		type?:     string
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
