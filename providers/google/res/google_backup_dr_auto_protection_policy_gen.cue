package res

import "list"

google_backup_dr_auto_protection_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_backup_dr_auto_protection_policy")
	close({
		backup_plan_details!: matchN(1, [#backup_plan_details, [_, ...] & [...#backup_plan_details]])
		criteria!: matchN(1, [#criteria, list.MaxItems(1) & [_, ...] & [...#criteria]])
		timeouts?: #timeouts

		// The ID of the auto protection policy. This becomes the final component of the
		// policy's resource name.
		auto_protection_policy_id!: string

		// A summary of the scopes that the policy is applied to through bindings.
		binding_summary?: [...close({
			project_count?: string
		})]

		// The time when the auto protection policy was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// A description of the auto protection policy.
		description?: string

		// The etag of the auto protection policy, used for optimistic concurrency control.
		etag?: string
		id?:   string

		// The location of the auto protection policy.
		location!: string

		// The resource name of the auto protection policy, in the format
		// 'projects/{project}/locations/{location}/autoProtectionPolicies/{auto_protection_policy_id}'.
		name?: string

		// A summary of the last run of the job that applies the policy to matching resources.
		policy_evaluation_summary?: [...close({
			failed_resource_count?:    string
			matching_resource_count?:  string
			protected_resource_count?: string
		})]

		// The current state of the auto protection policy.
		// Possible values are 'CREATING', 'ACTIVE', 'UPDATING', and 'DELETING'.
		state?:   string
		project?: string

		// The time when the auto protection policy was last updated.
		update_time?: string
	})

	#backup_plan_details: close({
		// The resource name of the backup plan to apply to the matching resources, in the format
		// 'projects/{project}/locations/{location}/backupPlans/{backup_plan_id}'. The backup plan
		// must be in the same location as the auto protection policy.
		backup_plan!: string

		// The type of resource that this policy automatically protects, for example
		// 'compute.googleapis.com/Instance' or 'compute.googleapis.com/Disk'.
		resource_type!: string
	})

	#criteria: close({
		matching_conditions!: matchN(1, [_#defs."/$defs/criteria/$defs/matching_conditions", [_, ...] & [..._#defs."/$defs/criteria/$defs/matching_conditions"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/criteria/$defs/matching_conditions": close({
		label_condition?: matchN(1, [_#defs."/$defs/criteria/$defs/matching_conditions/$defs/label_condition", list.MaxItems(1) & [..._#defs."/$defs/criteria/$defs/matching_conditions/$defs/label_condition"]])
	})

	_#defs: "/$defs/criteria/$defs/matching_conditions/$defs/label_condition": close({
		// The key of the label to match.
		key!: string

		// The values of the label to match. A resource matches the condition if its label
		// value is equal to any of the listed values. Currently, only one value is supported.
		values!: [...string]
	})
}
