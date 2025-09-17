package data

#aws_iam_principal_policy_simulation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_principal_policy_simulation")
	close({
		// One or more names of actions, like "iam:CreateUser", that
		// should be included in the simulation.
		action_names!: [...string]

		// Additional principal-based policies to use in the simulation.
		additional_policies_json?: [...string]

		// A summary of the results attribute which is true if all of the
		// results have decision "allowed", and false otherwise.
		all_allowed?: bool

		// ARN of a user to use as the caller of the simulated requests.
		// If not specified, defaults to the principal specified in
		// policy_source_arn, if it is a user ARN.
		caller_arn?: string

		// Do not use
		id?: string

		// Additional permission boundary policies to use in the
		// simulation.
		permissions_boundary_policies_json?: [...string]

		// ARN of the principal (e.g. user, role) whose existing
		// configured access policies will be used as the basis for the
		// simulation. If you specify a role ARN here, you can also set
		// caller_arn to simulate a particular user acting with the given
		// role.
		policy_source_arn!: string

		// ARNs of specific resources to use as the targets of the
		// specified actions during simulation. If not specified, the
		// simulator assumes "*" which represents general access across
		// all resources.
		resource_arns?: [...string]
		context?: matchN(1, [#context, [...#context]])

		// Specifies the type of simulation to run. Some API operations
		// need a particular resource handling option in order to produce
		// a correct reesult.
		resource_handling_option?: string

		// An AWS account ID to use as the simulated owner for any
		// resource whose ARN does not include a specific owner account
		// ID. Defaults to the account given as part of caller_arn.
		resource_owner_account_id?: string

		// A resource policy to associate with all of the target resources
		// for simulation purposes. The policy simulator does not
		// automatically retrieve resource-level policies, so if a
		// resource policy is crucial to your test then you must specify
		// here the same policy document associated with your target
		// resource(s).
		resource_policy_json?: string
		results?: [...close({
			action_name?: string
			allowed?:     bool
			decision?:    string
			decision_details?: [string]: string
			matched_statements?: [...close({
				source_policy_id?:   string
				source_policy_type?: string
			})]
			missing_context_keys?: [...string]
			resource_arn?: string
		})]
	})

	#context: close({
		// The key name of the context entry, such as "aws:CurrentTime".
		key!: string

		// The type that the simulator should use to interpret the strings
		// given in argument "values".
		type!: string

		// One or more values to assign to the context key, given as a
		// string in a syntax appropriate for the selected value type.
		values!: [...string]
	})
}
