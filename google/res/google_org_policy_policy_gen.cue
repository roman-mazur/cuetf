package res

import "list"

#google_org_policy_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_org_policy_policy")
	close({
		// Optional. An opaque tag indicating the current state of the
		// policy, used for concurrency control. This 'etag' is computed
		// by the server based on the value of other fields, and may be
		// sent on update and delete requests to ensure the client has an
		// up-to-date value before proceeding.
		etag?: string
		id?:   string

		// Immutable. The resource name of the Policy. Must be one of the
		// following forms, where constraint_name is the name of the
		// constraint which this Policy configures: *
		// 'projects/{project_number}/policies/{constraint_name}' *
		// 'folders/{folder_id}/policies/{constraint_name}' *
		// 'organizations/{organization_id}/policies/{constraint_name}'
		// For example,
		// "projects/123/policies/compute.disableSerialPortAccess". Note:
		// 'projects/{project_id}/policies/{constraint_name}' is also an
		// acceptable name for API requests, but responses will return
		// the name using the equivalent project number.
		name!: string

		// The parent of the resource.
		parent!: string
		dry_run_spec?: matchN(1, [#dry_run_spec, list.MaxItems(1) & [...#dry_run_spec]])
		spec?: matchN(1, [#spec, list.MaxItems(1) & [...#spec]])
		timeouts?: #timeouts
	})

	#dry_run_spec: close({
		// An opaque tag indicating the current version of the policy,
		// used for concurrency control. This field is ignored if used in
		// a 'CreatePolicy' request. When the policy' is returned from
		// either a 'GetPolicy' or a 'ListPolicies' request, this 'etag'
		// indicates the version of the current policy to use when
		// executing a read-modify-write loop. When the policy is
		// returned from a 'GetEffectivePolicy' request, the 'etag' will
		// be unset.
		etag?: string

		// Determines the inheritance behavior for this policy. If
		// 'inherit_from_parent' is true, policy rules set higher up in
		// the hierarchy (up to the closest root) are inherited and
		// present in the effective policy. If it is false, then no rules
		// are inherited, and this policy becomes the new root for
		// evaluation. This field can be set only for policies which
		// configure list constraints.
		inherit_from_parent?: bool

		// Ignores policies set above this resource and restores the
		// 'constraint_default' enforcement behavior of the specific
		// constraint at this resource. This field can be set in policies
		// for either list or boolean constraints. If set, 'rules' must
		// be empty and 'inherit_from_parent' must be set to false.
		reset?: bool
		rules?: matchN(1, [_#defs."/$defs/dry_run_spec/$defs/rules", [..._#defs."/$defs/dry_run_spec/$defs/rules"]])

		// Output only. The time stamp this was previously updated. This
		// represents the last time a call to 'CreatePolicy' or
		// 'UpdatePolicy' was made for that policy.
		update_time?: string
	})

	#spec: close({
		// An opaque tag indicating the current version of the 'Policy',
		// used for concurrency control. This field is ignored if used in
		// a 'CreatePolicy' request. When the 'Policy' is returned from
		// either a 'GetPolicy' or a 'ListPolicies' request, this 'etag'
		// indicates the version of the current 'Policy' to use when
		// executing a read-modify-write loop. When the 'Policy' is
		// returned from a 'GetEffectivePolicy' request, the 'etag' will
		// be unset.
		etag?: string

		// Determines the inheritance behavior for this 'Policy'. If
		// 'inherit_from_parent' is true, PolicyRules set higher up in
		// the hierarchy (up to the closest root) are inherited and
		// present in the effective policy. If it is false, then no rules
		// are inherited, and this Policy becomes the new root for
		// evaluation. This field can be set only for Policies which
		// configure list constraints.
		inherit_from_parent?: bool

		// Ignores policies set above this resource and restores the
		// 'constraint_default' enforcement behavior of the specific
		// 'Constraint' at this resource. This field can be set in
		// policies for either list or boolean constraints. If set,
		// 'rules' must be empty and 'inherit_from_parent' must be set to
		// false.
		reset?: bool
		rules?: matchN(1, [_#defs."/$defs/spec/$defs/rules", [..._#defs."/$defs/spec/$defs/rules"]])

		// Output only. The time stamp this was previously updated. This
		// represents the last time a call to 'CreatePolicy' or
		// 'UpdatePolicy' was made for that 'Policy'.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/dry_run_spec/$defs/rules": close({
		// Setting this to '"TRUE"' means that all values are allowed.
		// This field can be set only in Policies for list constraints.
		allow_all?: string

		// Setting this to '"TRUE"' means that all values are denied. This
		// field can be set only in Policies for list constraints.
		deny_all?: string

		// If '"TRUE"', then the 'Policy' is enforced. If '"FALSE"', then
		// any configuration is acceptable. This field can be set only in
		// Policies for boolean constraints.
		enforce?: string

		// Optional. Required for Managed Constraints if parameters
		// defined in constraints. Pass parameter values when policy
		// enforcement is enabled. Ensure that parameter value types
		// match those defined in the constraint definition. For example:
		// { \"allowedLocations\" : [\"us-east1\", \"us-west1\"],
		// \"allowAll\" : true }
		parameters?: string
		condition?: matchN(1, [_#defs."/$defs/dry_run_spec/$defs/rules/$defs/condition", list.MaxItems(1) & [..._#defs."/$defs/dry_run_spec/$defs/rules/$defs/condition"]])
		values?: matchN(1, [_#defs."/$defs/dry_run_spec/$defs/rules/$defs/values", list.MaxItems(1) & [..._#defs."/$defs/dry_run_spec/$defs/rules/$defs/values"]])
	})

	_#defs: "/$defs/dry_run_spec/$defs/rules/$defs/condition": close({
		// Optional. Description of the expression. This is a longer text
		// which describes the expression, e.g. when hovered over it in a
		// UI.
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression?: string

		// Optional. String indicating the location of the expression for
		// error reporting, e.g. a file name and a position in the file.
		location?: string

		// Optional. Title for the expression, i.e. a short string
		// describing its purpose. This can be used e.g. in UIs which
		// allow to enter the expression.
		title?: string
	})

	_#defs: "/$defs/dry_run_spec/$defs/rules/$defs/values": close({
		// List of values allowed at this resource.
		allowed_values?: [...string]

		// List of values denied at this resource.
		denied_values?: [...string]
	})

	_#defs: "/$defs/spec/$defs/rules": close({
		// Setting this to '"TRUE"' means that all values are allowed.
		// This field can be set only in Policies for list constraints.
		allow_all?: string

		// Setting this to '"TRUE"' means that all values are denied. This
		// field can be set only in Policies for list constraints.
		deny_all?: string

		// If '"TRUE"', then the 'Policy' is enforced. If '"FALSE"', then
		// any configuration is acceptable. This field can be set only in
		// Policies for boolean constraints.
		enforce?: string

		// Optional. Required for Managed Constraints if parameters
		// defined in constraints. Pass parameter values when policy
		// enforcement is enabled. Ensure that parameter value types
		// match those defined in the constraint definition. For example:
		// { \"allowedLocations\" : [\"us-east1\", \"us-west1\"],
		// \"allowAll\" : true }
		parameters?: string
		condition?: matchN(1, [_#defs."/$defs/spec/$defs/rules/$defs/condition", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/rules/$defs/condition"]])
		values?: matchN(1, [_#defs."/$defs/spec/$defs/rules/$defs/values", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/rules/$defs/values"]])
	})

	_#defs: "/$defs/spec/$defs/rules/$defs/condition": close({
		// Optional. Description of the expression. This is a longer text
		// which describes the expression, e.g. when hovered over it in a
		// UI.
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression?: string

		// Optional. String indicating the location of the expression for
		// error reporting, e.g. a file name and a position in the file.
		location?: string

		// Optional. Title for the expression, i.e. a short string
		// describing its purpose. This can be used e.g. in UIs which
		// allow to enter the expression.
		title?: string
	})

	_#defs: "/$defs/spec/$defs/rules/$defs/values": close({
		// List of values allowed at this resource.
		allowed_values?: [...string]

		// List of values denied at this resource.
		denied_values?: [...string]
	})
}
