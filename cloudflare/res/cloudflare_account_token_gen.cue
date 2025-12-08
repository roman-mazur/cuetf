package res

#cloudflare_account_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_account_token")
	close({
		// Account identifier tag.
		account_id!: string

		// The expiration time on or after which the JWT MUST NOT be
		// accepted for processing.
		expires_on?: string

		// Token identifier tag.
		id?: string

		// The time on which the token was created.
		issued_on?: string

		// Last time the token was used.
		last_used_on?: string
		condition?: close({
			// Client IP restrictions.
			request_ip?: close({
				// List of IPv4/IPv6 CIDR addresses.
				in?: [...string]

				// List of IPv4/IPv6 CIDR addresses.
				not_in?: [...string]
			})
		})

		// Last time the token was modified.
		modified_on?: string

		// Token name.
		name!: string

		// The time before which the token MUST NOT be accepted for
		// processing.
		not_before?: string

		// Set of access policies assigned to the token.
		policies!: matchN(1, [close({
			// A set of permission groups that are specified to the policy.
			permission_groups!: matchN(1, [close({
				// Identifier of the permission group.
				id!: string
			}), [...close({
				// Identifier of the permission group.
				id!: string
			})]])

			// Allow or deny operations against the resources.
			// Available values: "allow", "deny".
			effect!: string

			// A json object representing the resources that are specified to
			// the policy.
			resources!: string
		}), [...close({
			// A set of permission groups that are specified to the policy.
			permission_groups!: matchN(1, [close({
				// Identifier of the permission group.
				id!: string
			}), [...close({
				// Identifier of the permission group.
				id!: string
			})]])

			// Allow or deny operations against the resources.
			// Available values: "allow", "deny".
			effect!: string

			// A json object representing the resources that are specified to
			// the policy.
			resources!: string
		})]])

		// Status of the token.
		// Available values: "active", "disabled", "expired".
		status?: string

		// The token value.
		value?: string
	})
}
