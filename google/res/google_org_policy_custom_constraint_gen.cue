package res

#google_org_policy_custom_constraint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_org_policy_custom_constraint")
	close({
		// The action to take if the condition is met. Possible values:
		// ["ALLOW", "DENY"]
		action_type!: string

		// A CEL condition that refers to a supported service resource,
		// for example 'resource.management.autoUpgrade == false'. For
		// details about CEL usage, see [Common Expression
		// Language](https://docs.cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).
		condition!: string

		// A human-friendly description of the constraint to display as an
		// error message when the policy is violated.
		description?: string

		// A human-friendly name for the constraint.
		display_name?: string

		// A list of RESTful methods for which to enforce the constraint.
		// Can be 'CREATE', 'UPDATE', or both. Not all Google Cloud
		// services support both methods. To see supported methods for
		// each service, find the service in [Supported
		// services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).
		method_types!: [...string]
		id?: string

		// Immutable. The name of the custom constraint. This is unique
		// within the organization.
		name!:     string
		timeouts?: #timeouts

		// The parent of the resource, an organization. Format should be
		// 'organizations/{organization_id}'.
		parent!: string

		// Immutable. The fully qualified name of the Google Cloud REST
		// resource containing the object and field you want to restrict.
		// For example, 'container.googleapis.com/NodePool'.
		resource_types!: [...string]

		// Output only. The timestamp representing when the constraint was
		// last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
