package data

#cloudflare_account_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_account_member")
	close({
		filter?: close({
			// Direction to order results.
			// Available values: "asc", "desc".
			direction?: string

			// Field to order results by.
			// Available values: "user.first_name", "user.last_name",
			// "user.email", "status".
			order?: string

			// A member's status in the account.
			// Available values: "accepted", "pending", "rejected".
			status?: string
		})

		// Account identifier tag.
		account_id!: string

		// The contact email address of the user.
		email?: string

		// Access policy for the membership
		policies?: matchN(1, [close({
			// Allow or deny operations against the resources.
			// Available values: "allow", "deny".
			access?: string

			// Policy identifier.
			id?: string

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

			// A list of resource groups that the policy applies to.
			resource_groups?: matchN(1, [close({
				// Identifier of the resource group.
				id?: string

				// Attributes associated to the resource group.
				meta?: close({
					key?:   string
					value?: string
				})

				// Name of the resource group.
				name?: string

				// The scope associated to the resource group
				scope?: matchN(1, [close({
					// This is a combination of pre-defined resource name and
					// identifier (like Account ID etc.)
					key?: string

					// A list of scope objects for additional context.
					objects?: matchN(1, [close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					}), [...close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					})]])
				}), [...close({
					// This is a combination of pre-defined resource name and
					// identifier (like Account ID etc.)
					key?: string

					// A list of scope objects for additional context.
					objects?: matchN(1, [close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					}), [...close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					})]])
				})]])
			}), [...close({
				// Identifier of the resource group.
				id?: string

				// Attributes associated to the resource group.
				meta?: close({
					key?:   string
					value?: string
				})

				// Name of the resource group.
				name?: string

				// The scope associated to the resource group
				scope?: matchN(1, [close({
					// This is a combination of pre-defined resource name and
					// identifier (like Account ID etc.)
					key?: string

					// A list of scope objects for additional context.
					objects?: matchN(1, [close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					}), [...close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					})]])
				}), [...close({
					// This is a combination of pre-defined resource name and
					// identifier (like Account ID etc.)
					key?: string

					// A list of scope objects for additional context.
					objects?: matchN(1, [close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					}), [...close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					})]])
				})]])
			})]])
		}), [...close({
			// Allow or deny operations against the resources.
			// Available values: "allow", "deny".
			access?: string

			// Policy identifier.
			id?: string

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

			// A list of resource groups that the policy applies to.
			resource_groups?: matchN(1, [close({
				// Identifier of the resource group.
				id?: string

				// Attributes associated to the resource group.
				meta?: close({
					key?:   string
					value?: string
				})

				// Name of the resource group.
				name?: string

				// The scope associated to the resource group
				scope?: matchN(1, [close({
					// This is a combination of pre-defined resource name and
					// identifier (like Account ID etc.)
					key?: string

					// A list of scope objects for additional context.
					objects?: matchN(1, [close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					}), [...close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					})]])
				}), [...close({
					// This is a combination of pre-defined resource name and
					// identifier (like Account ID etc.)
					key?: string

					// A list of scope objects for additional context.
					objects?: matchN(1, [close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					}), [...close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					})]])
				})]])
			}), [...close({
				// Identifier of the resource group.
				id?: string

				// Attributes associated to the resource group.
				meta?: close({
					key?:   string
					value?: string
				})

				// Name of the resource group.
				name?: string

				// The scope associated to the resource group
				scope?: matchN(1, [close({
					// This is a combination of pre-defined resource name and
					// identifier (like Account ID etc.)
					key?: string

					// A list of scope objects for additional context.
					objects?: matchN(1, [close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					}), [...close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					})]])
				}), [...close({
					// This is a combination of pre-defined resource name and
					// identifier (like Account ID etc.)
					key?: string

					// A list of scope objects for additional context.
					objects?: matchN(1, [close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					}), [...close({
						// This is a combination of pre-defined resource name and
						// identifier (like Zone ID etc.)
						key?: string
					})]])
				})]])
			})]])
		})]])

		// Membership identifier tag.
		id?: string

		// Membership identifier tag.
		member_id?: string

		// Roles assigned to this Member.
		roles?: matchN(1, [close({
			// Description of role's permissions.
			description?: string
			permissions?: close({
				analytics?: close({
					read?:  bool
					write?: bool
				})
				billing?: close({
					read?:  bool
					write?: bool
				})
				cache_purge?: close({
					read?:  bool
					write?: bool
				})
				dns?: close({
					read?:  bool
					write?: bool
				})
				dns_records?: close({
					read?:  bool
					write?: bool
				})
				lb?: close({
					read?:  bool
					write?: bool
				})
				logs?: close({
					read?:  bool
					write?: bool
				})
				organization?: close({
					read?:  bool
					write?: bool
				})
				ssl?: close({
					read?:  bool
					write?: bool
				})
				waf?: close({
					read?:  bool
					write?: bool
				})
				zone_settings?: close({
					read?:  bool
					write?: bool
				})
				zones?: close({
					read?:  bool
					write?: bool
				})
			})

			// Role identifier tag.
			id?: string

			// Role name.
			name?: string
		}), [...close({
			// Description of role's permissions.
			description?: string
			permissions?: close({
				analytics?: close({
					read?:  bool
					write?: bool
				})
				billing?: close({
					read?:  bool
					write?: bool
				})
				cache_purge?: close({
					read?:  bool
					write?: bool
				})
				dns?: close({
					read?:  bool
					write?: bool
				})
				dns_records?: close({
					read?:  bool
					write?: bool
				})
				lb?: close({
					read?:  bool
					write?: bool
				})
				logs?: close({
					read?:  bool
					write?: bool
				})
				organization?: close({
					read?:  bool
					write?: bool
				})
				ssl?: close({
					read?:  bool
					write?: bool
				})
				waf?: close({
					read?:  bool
					write?: bool
				})
				zone_settings?: close({
					read?:  bool
					write?: bool
				})
				zones?: close({
					read?:  bool
					write?: bool
				})
			})

			// Role identifier tag.
			id?: string

			// Role name.
			name?: string
		})]])

		// A member's status in the account.
		// Available values: "accepted", "pending".
		status?: string

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
	})
}
