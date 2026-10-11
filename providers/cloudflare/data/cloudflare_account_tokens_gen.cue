package data

cloudflare_account_tokens: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_account_tokens")
	close({
		// Account identifier tag.
		account_id?: string

		// Direction to order results.
		// Available values: "asc", "desc".
		direction?: string

		// When true, includes recently-expired tokens in the response.
		include_expired?: bool

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			condition?: close({
				// Client IP restrictions.
				request_ip?: close({
					// List of IPv4/IPv6 CIDR addresses.
					in?: [...string]

					// List of IPv4/IPv6 CIDR addresses.
					not_in?: [...string]
				})
			})

			// The email address of the user who created the token at the time of
			// creation. Only present for Account Owned API Tokens when a creator email
			// was available.
			creator_email_at_creation?: string

			// Token identifier tag.
			id?: string

			// The time on which the token was created.
			issued_on?: string

			// Last time the token was used.
			last_used_on?: string

			// Last time the token was modified.
			modified_on?: string

			// Token name.
			name?: string

			// The time before which the token MUST NOT be accepted for processing.
			not_before?: string

			// List of access policies assigned to the token.
			policies?: matchN(1, [close({
				// Allow or deny operations against the resources.
				// Available values: "allow", "deny".
				effect?: string

				// A set of permission groups that are specified to the policy.
				permission_groups?: matchN(1, [close({
					// Identifier of the permission group.
					id?: string

					// Attributes associated to the permission group.
					meta?: close({
						// A category used to group permission groups.
						category?: string

						// Indicates whether the permission group is deprecated.
						deprecated?: string

						// Additional information about the permission group.
						description?: string

						// Indicates whether the permission group can be edited.
						editable?: string

						// The planned end-of-life date and time, when provided.
						eol_at?: string

						// A label identifying the permission group.
						label?: string

						// The scope associated with the permission group.
						scopes?: string

						// Indicates the permission group's availability or visibility.
						visibility?: string
					})

					// Name of the permission group.
					name?: string
				}), [...close({
					// Identifier of the permission group.
					id?: string

					// Attributes associated to the permission group.
					meta?: close({
						// A category used to group permission groups.
						category?: string

						// Indicates whether the permission group is deprecated.
						deprecated?: string

						// Additional information about the permission group.
						description?: string

						// Indicates whether the permission group can be edited.
						editable?: string

						// The planned end-of-life date and time, when provided.
						eol_at?: string

						// A label identifying the permission group.
						label?: string

						// The scope associated with the permission group.
						scopes?: string

						// Indicates the permission group's availability or visibility.
						visibility?: string
					})

					// Name of the permission group.
					name?: string
				})]])

				// Policy identifier.
				id?: string

				// A list of resource names that the policy applies to.
				resources?: [string]: string
			}), [...close({
				// Allow or deny operations against the resources.
				// Available values: "allow", "deny".
				effect?: string

				// A set of permission groups that are specified to the policy.
				permission_groups?: matchN(1, [close({
					// Identifier of the permission group.
					id?: string

					// Attributes associated to the permission group.
					meta?: close({
						// A category used to group permission groups.
						category?: string

						// Indicates whether the permission group is deprecated.
						deprecated?: string

						// Additional information about the permission group.
						description?: string

						// Indicates whether the permission group can be edited.
						editable?: string

						// The planned end-of-life date and time, when provided.
						eol_at?: string

						// A label identifying the permission group.
						label?: string

						// The scope associated with the permission group.
						scopes?: string

						// Indicates the permission group's availability or visibility.
						visibility?: string
					})

					// Name of the permission group.
					name?: string
				}), [...close({
					// Identifier of the permission group.
					id?: string

					// Attributes associated to the permission group.
					meta?: close({
						// A category used to group permission groups.
						category?: string

						// Indicates whether the permission group is deprecated.
						deprecated?: string

						// Additional information about the permission group.
						description?: string

						// Indicates whether the permission group can be edited.
						editable?: string

						// The planned end-of-life date and time, when provided.
						eol_at?: string

						// A label identifying the permission group.
						label?: string

						// The scope associated with the permission group.
						scopes?: string

						// Indicates the permission group's availability or visibility.
						visibility?: string
					})

					// Name of the permission group.
					name?: string
				})]])

				// Policy identifier.
				id?: string

				// A list of resource names that the policy applies to.
				resources?: [string]: string
			})]])

			// The expiration time on or after which the JWT MUST NOT be accepted for processing.
			expires_on?: string

			// The identifier of the service that provisioned the token. For an
			// OAuth-provisioned token, this is the OAuth client identifier. Present
			// when `provisioner_type` is present and null when the identifier is
			// unavailable.
			provisioner_id?: string

			// The type of service that provisioned the token. Only present for
			// provisioned Account Owned API Tokens.
			provisioner_type?: string

			// Status of the token.
			// Available values: "active", "disabled", "expired".
			status?: string
		}), [...close({
			condition?: close({
				// Client IP restrictions.
				request_ip?: close({
					// List of IPv4/IPv6 CIDR addresses.
					in?: [...string]

					// List of IPv4/IPv6 CIDR addresses.
					not_in?: [...string]
				})
			})

			// The email address of the user who created the token at the time of
			// creation. Only present for Account Owned API Tokens when a creator email
			// was available.
			creator_email_at_creation?: string

			// Token identifier tag.
			id?: string

			// The time on which the token was created.
			issued_on?: string

			// Last time the token was used.
			last_used_on?: string

			// Last time the token was modified.
			modified_on?: string

			// Token name.
			name?: string

			// The time before which the token MUST NOT be accepted for processing.
			not_before?: string

			// List of access policies assigned to the token.
			policies?: matchN(1, [close({
				// Allow or deny operations against the resources.
				// Available values: "allow", "deny".
				effect?: string

				// A set of permission groups that are specified to the policy.
				permission_groups?: matchN(1, [close({
					// Identifier of the permission group.
					id?: string

					// Attributes associated to the permission group.
					meta?: close({
						// A category used to group permission groups.
						category?: string

						// Indicates whether the permission group is deprecated.
						deprecated?: string

						// Additional information about the permission group.
						description?: string

						// Indicates whether the permission group can be edited.
						editable?: string

						// The planned end-of-life date and time, when provided.
						eol_at?: string

						// A label identifying the permission group.
						label?: string

						// The scope associated with the permission group.
						scopes?: string

						// Indicates the permission group's availability or visibility.
						visibility?: string
					})

					// Name of the permission group.
					name?: string
				}), [...close({
					// Identifier of the permission group.
					id?: string

					// Attributes associated to the permission group.
					meta?: close({
						// A category used to group permission groups.
						category?: string

						// Indicates whether the permission group is deprecated.
						deprecated?: string

						// Additional information about the permission group.
						description?: string

						// Indicates whether the permission group can be edited.
						editable?: string

						// The planned end-of-life date and time, when provided.
						eol_at?: string

						// A label identifying the permission group.
						label?: string

						// The scope associated with the permission group.
						scopes?: string

						// Indicates the permission group's availability or visibility.
						visibility?: string
					})

					// Name of the permission group.
					name?: string
				})]])

				// Policy identifier.
				id?: string

				// A list of resource names that the policy applies to.
				resources?: [string]: string
			}), [...close({
				// Allow or deny operations against the resources.
				// Available values: "allow", "deny".
				effect?: string

				// A set of permission groups that are specified to the policy.
				permission_groups?: matchN(1, [close({
					// Identifier of the permission group.
					id?: string

					// Attributes associated to the permission group.
					meta?: close({
						// A category used to group permission groups.
						category?: string

						// Indicates whether the permission group is deprecated.
						deprecated?: string

						// Additional information about the permission group.
						description?: string

						// Indicates whether the permission group can be edited.
						editable?: string

						// The planned end-of-life date and time, when provided.
						eol_at?: string

						// A label identifying the permission group.
						label?: string

						// The scope associated with the permission group.
						scopes?: string

						// Indicates the permission group's availability or visibility.
						visibility?: string
					})

					// Name of the permission group.
					name?: string
				}), [...close({
					// Identifier of the permission group.
					id?: string

					// Attributes associated to the permission group.
					meta?: close({
						// A category used to group permission groups.
						category?: string

						// Indicates whether the permission group is deprecated.
						deprecated?: string

						// Additional information about the permission group.
						description?: string

						// Indicates whether the permission group can be edited.
						editable?: string

						// The planned end-of-life date and time, when provided.
						eol_at?: string

						// A label identifying the permission group.
						label?: string

						// The scope associated with the permission group.
						scopes?: string

						// Indicates the permission group's availability or visibility.
						visibility?: string
					})

					// Name of the permission group.
					name?: string
				})]])

				// Policy identifier.
				id?: string

				// A list of resource names that the policy applies to.
				resources?: [string]: string
			})]])

			// The expiration time on or after which the JWT MUST NOT be accepted for processing.
			expires_on?: string

			// The identifier of the service that provisioned the token. For an
			// OAuth-provisioned token, this is the OAuth client identifier. Present
			// when `provisioner_type` is present and null when the identifier is
			// unavailable.
			provisioner_id?: string

			// The type of service that provisioned the token. Only present for
			// provisioned Account Owned API Tokens.
			provisioner_type?: string

			// Status of the token.
			// Available values: "active", "disabled", "expired".
			status?: string
		})]])
	})
}
