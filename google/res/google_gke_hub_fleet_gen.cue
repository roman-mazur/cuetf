package res

import "list"

#google_gke_hub_fleet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_gke_hub_fleet")
	close({
		// The time the fleet was created, in RFC3339 text format.
		create_time?: string

		// The time the fleet was deleted, in RFC3339 text format.
		delete_time?: string

		// A user-assigned display name of the Fleet. When present, it
		// must be between 4 to 30 characters.
		// Allowed characters are: lowercase and uppercase letters,
		// numbers, hyphen, single-quote, double-quote, space, and
		// exclamation point.
		display_name?: string
		id?:           string
		project?:      string

		// The state of the fleet resource.
		state?: [...close({
			code?: string
		})]
		default_cluster_config?: matchN(1, [#default_cluster_config, list.MaxItems(1) & [...#default_cluster_config]])

		// Google-generated UUID for this resource. This is unique across
		// all
		// Fleet resources. If a Fleet resource is deleted and another
		// resource with the same name is created, it gets a different
		// uid.
		uid?: string

		// The time the fleet was last updated, in RFC3339 text format.
		update_time?: string
		timeouts?:    #timeouts
	})

	#default_cluster_config: close({
		binary_authorization_config?: matchN(1, [_#defs."/$defs/default_cluster_config/$defs/binary_authorization_config", list.MaxItems(1) & [..._#defs."/$defs/default_cluster_config/$defs/binary_authorization_config"]])
		security_posture_config?: matchN(1, [_#defs."/$defs/default_cluster_config/$defs/security_posture_config", list.MaxItems(1) & [..._#defs."/$defs/default_cluster_config/$defs/security_posture_config"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/default_cluster_config/$defs/binary_authorization_config": close({
		policy_bindings?: matchN(1, [_#defs."/$defs/default_cluster_config/$defs/binary_authorization_config/$defs/policy_bindings", [..._#defs."/$defs/default_cluster_config/$defs/binary_authorization_config/$defs/policy_bindings"]])

		// Mode of operation for binauthz policy evaluation. Possible
		// values: ["DISABLED", "POLICY_BINDINGS"]
		evaluation_mode?: string
	})

	_#defs: "/$defs/default_cluster_config/$defs/binary_authorization_config/$defs/policy_bindings": close({
		// The relative resource name of the binauthz platform policy to
		// audit. GKE
		// platform policies have the following format:
		// 'projects/{project_number}/platforms/gke/policies/{policy_id}'.
		name?: string
	})

	_#defs: "/$defs/default_cluster_config/$defs/security_posture_config": close({
		// Sets which mode to use for Security Posture features. Possible
		// values: ["DISABLED", "BASIC", "ENTERPRISE"]
		mode?: string

		// Sets which mode to use for vulnerability scanning. Possible
		// values: ["VULNERABILITY_DISABLED", "VULNERABILITY_BASIC",
		// "VULNERABILITY_ENTERPRISE"]
		vulnerability_mode?: string
	})
}
