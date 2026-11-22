package res

import "list"

google_cloud_identity_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_cloud_identity_policy")
	close({
		policy_query!: matchN(1, [#policy_query, list.MaxItems(1) & [_, ...] & [...#policy_query]])
		setting!: matchN(1, [#setting, list.MaxItems(1) & [_, ...] & [...#setting]])
		timeouts?: #timeouts

		// The customer that the Policy belongs to. Format: 'customers/{customer_id}'.
		customer!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The resource name of the Policy. Format: 'policies/{policy_id}'.
		name?: string
	})

	#policy_query: close({
		// The group that the query applies to.
		group?: string

		// The OrgUnit the query applies to, in the format 'orgUnits/{org_unit_id}'.
		// '{org_unit_id}' is the obfuscated org unit ID, the same value the Admin SDK
		// Directory API returns as 'orgUnitId' without its 'id:' prefix. Org unit paths
		// and display names are not resolved and are rejected for most settings.
		// For detector settings ('settings/detector.*'), the API ignores this value and
		// always applies the policy to, and returns, the customer's root org unit, so any
		// other value produces a diff; set it to the root org unit's ID.
		org_unit!: string

		// The CEL query that defines which entities the Policy applies to.
		query?: string

		// Decimal sort order of this PolicyQuery.
		sort_order?: number
	})

	#setting: close({
		// The type of the Setting.
		type!: string

		// The value of the Setting as JSON string.
		value_json!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
