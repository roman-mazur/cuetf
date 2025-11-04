package res

import "list"

#google_gke_hub_scope_rbac_role_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_gke_hub_scope_rbac_role_binding")
	close({
		// Time the RBAC Role Binding was created in UTC.
		create_time?: string

		// Time the RBAC Role Binding was deleted in UTC.
		delete_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Principal that is be authorized in the cluster (at least of one
		// the oneof
		// is required). Updating one will unset the other automatically.
		// group is the group, as seen by the kubernetes cluster.
		group?: string

		// Labels for this ScopeRBACRoleBinding.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The resource name for the RBAC Role Binding
		name?: string

		// Id of the scope
		scope_id!: string
		project?:  string

		// The client-provided identifier of the RBAC Role Binding.
		scope_rbac_role_binding_id!: string

		// State of the RBAC Role Binding resource.
		state?: [...close({
			code?: string
		})]
		role!: matchN(1, [#role, list.MaxItems(1) & [_, ...] & [...#role]])
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Google-generated UUID for this resource.
		uid?: string

		// Time the RBAC Role Binding was updated in UTC.
		update_time?: string

		// Principal that is be authorized in the cluster (at least of one
		// the oneof
		// is required). Updating one will unset the other automatically.
		// user is the name of the user as seen by the kubernetes cluster,
		// example
		// "alice" or "alice@domain.tld"
		user?: string
	})

	#role: close({
		// CustomRole is the custom Kubernetes ClusterRole to be used. The
		// custom role format must be allowlisted in the
		// rbacrolebindingactuation feature and RFC 1123 compliant.
		custom_role?: string

		// PredefinedRole is an ENUM representation of the default
		// Kubernetes Roles Possible values: ["UNKNOWN", "ADMIN", "EDIT",
		// "VIEW"]
		predefined_role?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
