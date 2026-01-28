package res

#cloudflare_account_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_account_member")
	close({
		// Account identifier tag.
		account_id!: string

		// The contact email address of the user.
		email!: string

		// Membership identifier tag.
		id?: string

		// Array of policies associated with this member.
		policies?: matchN(1, [close({
			// A set of permission groups that are specified to the policy.
			permission_groups!: matchN(1, [close({
				// Identifier of the group.
				id!: string
			}), [...close({
				// Identifier of the group.
				id!: string
			})]])

			// Allow or deny operations against the resources.
			// Available values: "allow", "deny".
			access!: string

			// A list of resource groups that the policy applies to.
			resource_groups!: matchN(1, [close({
				// Identifier of the group.
				id!: string
			}), [...close({
				// Identifier of the group.
				id!: string
			})]])
		}), [...close({
			// A set of permission groups that are specified to the policy.
			permission_groups!: matchN(1, [close({
				// Identifier of the group.
				id!: string
			}), [...close({
				// Identifier of the group.
				id!: string
			})]])

			// Allow or deny operations against the resources.
			// Available values: "allow", "deny".
			access!: string

			// A list of resource groups that the policy applies to.
			resource_groups!: matchN(1, [close({
				// Identifier of the group.
				id!: string
			}), [...close({
				// Identifier of the group.
				id!: string
			})]])
		})]])

		// Set of roles associated with this member.
		roles?: [...string]

		// Details of the user associated to the membership.
		user?: close({
			// The contact email address of the user.
			email?: string

			// User's first name
			first_name?: string

			// Identifier
			id?: string

			// User's last name
			last_name?: string

			// Indicates whether two-factor authentication is enabled for the
			// user account. Does not apply to API authentication.
			two_factor_authentication_enabled?: bool
		})

		// Available values: "accepted", "pending".
		status?: string
	})
}
