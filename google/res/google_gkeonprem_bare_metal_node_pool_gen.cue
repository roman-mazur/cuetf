package res

import "list"

#google_gkeonprem_bare_metal_node_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_gkeonprem_bare_metal_node_pool")
	close({
		// Annotations on the Bare Metal Node Pool.
		// This field has the same restrictions as Kubernetes annotations.
		// The total size of all keys and values combined is limited to
		// 256k.
		// Key can have 2 segments: prefix (optional) and name (required),
		// separated by a slash (/).
		// Prefix must be a DNS subdomain.
		// Name must be 63 characters or less, begin and end with
		// alphanumerics,
		// with dashes (-), underscores (_), dots (.), and alphanumerics
		// between.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// The cluster this node pool belongs to.
		bare_metal_cluster!: string

		// The time the cluster was created, in RFC3339 text format.
		create_time?: string

		// The time the cluster was deleted, in RFC3339 text format.
		delete_time?: string

		// The display name for the Bare Metal Node Pool.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// This checksum is computed by the server based on the value of
		// other
		// fields, and may be sent on update and delete requests to ensure
		// the
		// client has an up-to-date value before proceeding.
		// Allows clients to perform consistent read-modify-writes
		// through optimistic concurrency control.
		etag?: string
		id?:   string

		// The location of the resource.
		location!: string

		// The bare metal node pool name.
		name!: string
		node_pool_config?: matchN(1, [#node_pool_config, list.MaxItems(1) & [_, ...] & [...#node_pool_config]])
		timeouts?: #timeouts
		project?:  string

		// If set, there are currently changes in flight to the Bare Metal
		// User Cluster.
		reconciling?: bool

		// The current state of this cluster.
		state?: string

		// Specifies detailed node pool status.
		status?: [...close({
			conditions?: [...close({
				last_transition_time?: string
				message?:              string
				reason?:               string
				state?:                string
				type?:                 string
			})]
			error_message?: string
		})]

		// The unique identifier of the Bare Metal Node Pool.
		uid?: string

		// The time the cluster was last updated, in RFC3339 text format.
		update_time?: string
	})

	#node_pool_config: close({
		node_configs?: matchN(1, [_#defs."/$defs/node_pool_config/$defs/node_configs", [_, ...] & [..._#defs."/$defs/node_pool_config/$defs/node_configs"]])
		taints?: matchN(1, [_#defs."/$defs/node_pool_config/$defs/taints", [..._#defs."/$defs/node_pool_config/$defs/taints"]])

		// The map of Kubernetes labels (key/value pairs) to be applied to
		// each node. These will added in addition to any default label(s)
		// that Kubernetes may apply to the node. In case of conflict in
		// label keys, the applied set may differ depending on the
		// Kubernetes
		// version -- it's best to assume the behavior is undefined and
		// conflicts should be avoided. For more information, including
		// usage
		// and the valid values, see:
		// - http://kubernetes.io/v1.1/docs/user-guide/labels.html
		// An object containing a list of "key": value pairs.
		// For example: { "name": "wrench", "mass": "1.3kg", "count": "3"
		// }.
		labels?: [string]: string

		// Specifies the nodes operating system (default: LINUX).
		operating_system?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/node_pool_config/$defs/node_configs": close({
		// The map of Kubernetes labels (key/value pairs) to be applied to
		// each node. These will added in addition to any default label(s)
		// that Kubernetes may apply to the node. In case of conflict in
		// label keys, the applied set may differ depending on the
		// Kubernetes
		// version -- it's best to assume the behavior is undefined and
		// conflicts should be avoided. For more information, including
		// usage
		// and the valid values, see:
		// - http://kubernetes.io/v1.1/docs/user-guide/labels.html
		// An object containing a list of "key": value pairs.
		// For example: { "name": "wrench", "mass": "1.3kg", "count": "3"
		// }.
		labels?: [string]: string

		// The default IPv4 address for SSH access and Kubernetes node.
		// Example: 192.168.0.1
		node_ip?: string
	})

	_#defs: "/$defs/node_pool_config/$defs/taints": close({
		// Specifies the nodes operating system (default: LINUX). Possible
		// values: ["EFFECT_UNSPECIFIED", "PREFER_NO_SCHEDULE",
		// "NO_EXECUTE"]
		effect?: string

		// Key associated with the effect.
		key?: string

		// Value associated with the effect.
		value?: string
	})
}
