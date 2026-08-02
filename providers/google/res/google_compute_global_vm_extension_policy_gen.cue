package res

import "list"

google_compute_global_vm_extension_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_global_vm_extension_policy")
	close({
		extension_policies!: matchN(1, [#extension_policies, [_, ...] & [...#extension_policies]])
		instance_selectors?: matchN(1, [#instance_selectors, [...#instance_selectors]])
		rollout_operation!: matchN(1, [#rollout_operation, list.MaxItems(1) & [_, ...] & [...#rollout_operation]])
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

		// Name of the resource. Provided by the client when the resource is created.
		// The name must be 1-63 characters long and match the regular expression
		// '^[a-z]([-a-z0-9]{0,61}[a-z0-9])?$' to comply with RFC1035.
		name!: string

		// Used to resolve conflicts when multiple policies are active. Defaults to 0.
		priority?: number
		project?:  string

		// The scoped resource status.
		scoped_resource_status?: string

		// Server-defined fully-qualified URL for this resource.
		self_link?: string

		// Update timestamp in RFC3339 text format.
		update_timestamp?: string
	})

	#extension_policies: close({
		extension_name!: string

		// The version pinning for the extension.
		pinned_version?: string

		// String configuration payload.
		string_config?: string
	})

	#instance_selectors: close({
		label_selector?: matchN(1, [_#defs."/$defs/instance_selectors/$defs/label_selector", list.MaxItems(1) & [..._#defs."/$defs/instance_selectors/$defs/label_selector"]])
	})

	#rollout_operation: close({
		rollout_input!: matchN(1, [_#defs."/$defs/rollout_operation/$defs/rollout_input", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rollout_operation/$defs/rollout_input"]])

		// Rollout status.
		rollout_status?: [...close({
			current_rollouts?: [...close({
				location_rollout_status?: [...close({
					location_name?: string
					state?:         string
				})]
				rollout?:      string
				rollout_plan?: string
				state?:        string
			})]
			previous_rollout?: [...close({
				location_rollout_status?: [...close({
					location_name?: string
					state?:         string
				})]
				rollout?:      string
				rollout_plan?: string
				state?:        string
			})]
		})]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/instance_selectors/$defs/label_selector": close({
		// Labels as key value pairs.
		inclusion_labels?: [string]: string
	})

	_#defs: "/$defs/rollout_operation/$defs/rollout_input": close({
		// Specifies the behavior of the rollout if a conflict is detected.
		conflict_behavior?: string

		// The name of the rollout plan.
		name?: string

		// Specifies the predefined rollout plan for the policy.
		predefined_rollout_plan?: string

		// The UUID that identifies a policy rollout retry attempt. It should only be
		// set when retrying an existing rollout. Updating this field along with other
		// policy fields (description, extension_policies, instance_selectors,
		// priority) in the same plan will return an error.
		retry_uuid?: string
	})
}
