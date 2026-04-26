package data

#cloudflare_user_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_user_group")
	close({
		// Account identifier tag.
		account_id!: string

		// Timestamp for the creation of the user group
		created_on?: string

		// User Group identifier tag.
		id?: string

		// Last time the user group was modified.
		modified_on?: string

		// Name of the user group.
		name?: string

		// User Group identifier tag.
		user_group_id?: string

		// Policies attached to the User group
		policies?: matchN(1, [close({
			// Allow or deny operations against the resources.
			// Available values: "allow", "deny".
			access?: string

			// Policy identifier.
			id?: string

			// A set of permission groups that are specified to the policy.
			permission_groups?: matchN(1, [close({
				// Identifier of the permission group.
				id?: string

				// Name of the permission group.
				name?: string

				// Attributes associated to the permission group.
				meta?: close({
					key?:   string
					value?: string
				})
			}), [...close({
				// Identifier of the permission group.
				id?: string

				// Name of the permission group.
				name?: string

				// Attributes associated to the permission group.
				meta?: close({
					key?:   string
					value?: string
				})
			})]])

			// A list of resource groups that the policy applies to.
			resource_groups?: matchN(1, [close({
				// Identifier of the resource group.
				id?: string

				// Name of the resource group.
				name?: string

				// Attributes associated to the resource group.
				meta?: close({
					key?:   string
					value?: string
				})

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

				// Name of the resource group.
				name?: string

				// Attributes associated to the resource group.
				meta?: close({
					key?:   string
					value?: string
				})

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
				// Identifier of the permission group.
				id?: string

				// Name of the permission group.
				name?: string

				// Attributes associated to the permission group.
				meta?: close({
					key?:   string
					value?: string
				})
			}), [...close({
				// Identifier of the permission group.
				id?: string

				// Name of the permission group.
				name?: string

				// Attributes associated to the permission group.
				meta?: close({
					key?:   string
					value?: string
				})
			})]])

			// A list of resource groups that the policy applies to.
			resource_groups?: matchN(1, [close({
				// Identifier of the resource group.
				id?: string

				// Name of the resource group.
				name?: string

				// Attributes associated to the resource group.
				meta?: close({
					key?:   string
					value?: string
				})

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

				// Name of the resource group.
				name?: string

				// Attributes associated to the resource group.
				meta?: close({
					key?:   string
					value?: string
				})

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
		filter?: close({
			// The sort order of returned user groups by name (ascending or
			// descending).
			// Available values: "asc", "desc".
			direction?: string

			// A string used for searching for user groups containing that
			// substring.
			fuzzy_name?: string

			// ID of the user group to be fetched.
			id?: string

			// Name of the user group to be fetched.
			name?: string
		})
	})
}
