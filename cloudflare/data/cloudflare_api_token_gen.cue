package data

#cloudflare_api_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_api_token")
	close({
		// The expiration time on or after which the JWT MUST NOT be
		// accepted for processing.
		expires_on?: string
		condition?: close({
			// Client IP restrictions.
			request_ip?: close({
				// List of IPv4/IPv6 CIDR addresses.
				in?: [...string]

				// List of IPv4/IPv6 CIDR addresses.
				not_in?: [...string]
			})
		})

		// Token identifier tag.
		id?: string

		// The time on which the token was created.
		issued_on?: string
		filter?: close({
			// Direction to order results.
			// Available values: "asc", "desc".
			direction?: string
		})

		// Last time the token was used.
		last_used_on?: string

		// Last time the token was modified.
		modified_on?: string

		// Token name.
		name?: string

		// The time before which the token MUST NOT be accepted for
		// processing.
		not_before?: string

		// List of access policies assigned to the token.
		policies?: matchN(1, [close({
			// A set of permission groups that are specified to the policy.
			permission_groups?: matchN(1, [close({
				// Attributes associated to the permission group.
				meta?: close({
					key?:   string
					value?: string
				})

				// Identifier of the permission group.
				id?: string

				// Name of the permission group.
				name?: string
			}), [...close({
				// Attributes associated to the permission group.
				meta?: close({
					key?:   string
					value?: string
				})

				// Identifier of the permission group.
				id?: string

				// Name of the permission group.
				name?: string
			})]])

			// Allow or deny operations against the resources.
			// Available values: "allow", "deny".
			effect?: string

			// Policy identifier.
			id?: string

			// A list of resource names that the policy applies to.
			resources?: [string]: string
		}), [...close({
			// A set of permission groups that are specified to the policy.
			permission_groups?: matchN(1, [close({
				// Attributes associated to the permission group.
				meta?: close({
					key?:   string
					value?: string
				})

				// Identifier of the permission group.
				id?: string

				// Name of the permission group.
				name?: string
			}), [...close({
				// Attributes associated to the permission group.
				meta?: close({
					key?:   string
					value?: string
				})

				// Identifier of the permission group.
				id?: string

				// Name of the permission group.
				name?: string
			})]])

			// Allow or deny operations against the resources.
			// Available values: "allow", "deny".
			effect?: string

			// Policy identifier.
			id?: string

			// A list of resource names that the policy applies to.
			resources?: [string]: string
		})]])

		// Status of the token.
		// Available values: "active", "disabled", "expired".
		status?: string

		// Token identifier tag.
		token_id?: string
	})
}
