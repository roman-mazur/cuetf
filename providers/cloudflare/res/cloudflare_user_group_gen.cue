package res

#cloudflare_user_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_user_group")
	close({
		// Account identifier tag.
		account_id!: string

		// Timestamp for the creation of the user group
		created_on?: string

		// User Group identifier tag.
		id?: string

		// Last time the user group was modified.
		modified_on?: string

		// Name of the User group.
		name!: string

		// Policies attached to the User group
		policies?: matchN(1, [close({
			// Allow or deny operations against the resources.
			// Available values: "allow", "deny".
			access!: string

			// A set of permission groups that are specified to the policy.
			permission_groups!: matchN(1, [close({
				// Permission Group identifier tag.
				id!: string
			}), [...close({
				// Permission Group identifier tag.
				id!: string
			})]])

			// A set of resource groups that are specified to the policy.
			resource_groups!: matchN(1, [close({
				// Resource Group identifier tag.
				id!: string
			}), [...close({
				// Resource Group identifier tag.
				id!: string
			})]])
		}), [...close({
			// Allow or deny operations against the resources.
			// Available values: "allow", "deny".
			access!: string

			// A set of permission groups that are specified to the policy.
			permission_groups!: matchN(1, [close({
				// Permission Group identifier tag.
				id!: string
			}), [...close({
				// Permission Group identifier tag.
				id!: string
			})]])

			// A set of resource groups that are specified to the policy.
			resource_groups!: matchN(1, [close({
				// Resource Group identifier tag.
				id!: string
			}), [...close({
				// Resource Group identifier tag.
				id!: string
			})]])
		})]])
	})
}
