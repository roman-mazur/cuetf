package res

import "list"

google_compute_zone_vm_extension_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_zone_vm_extension_policy")
	close({
		extension_policies!: matchN(1, [#extension_policies, [_, ...] & [...#extension_policies]])
		instance_selectors?: matchN(1, [#instance_selectors, [...#instance_selectors]])
		timeouts?: #timeouts

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// An optional description of this resource.
		description?: string

		// The unique identifier for the resource.
		id?: string

		// Type of the resource.
		kind?: string

		// Indicates if this policy is managed by a global policy.
		managed_by_global?: bool

		// Name of the resource. Provided by the client when the resource is created.
		name!: string

		// Priority of this policy.
		priority?: number
		project?:  string

		// Current state of the policy.
		state?: string

		// Name of the zone for this request.
		zone!: string
	})

	#extension_policies: close({
		extension_name!: string

		// The specific version of the extension to install.
		pinned_version?: string

		// String-based configuration data for the extension.
		string_config?: string
	})

	#instance_selectors: close({
		label_selector?: matchN(1, [_#defs."/$defs/instance_selectors/$defs/label_selector", list.MaxItems(1) & [..._#defs."/$defs/instance_selectors/$defs/label_selector"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/instance_selectors/$defs/label_selector": close({
		// A map of key-value pairs representing VM labels.
		inclusion_labels?: [string]: string
	})
}
