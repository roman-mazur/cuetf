package data

#google_project_organization_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_project_organization_policy")
	close({
		// A boolean policy is a constraint that is either enforced or
		// not.
		boolean_policy?: [...close({
			enforced?: bool
		})]

		// The name of the Constraint the Policy is configuring, for
		// example, serviceuser.services.
		constraint!: string

		// The etag of the organization policy. etag is used for
		// optimistic concurrency control as a way to help prevent
		// simultaneous updates of a policy from overwriting each other.
		etag?: string

		// A policy that can define specific values that are allowed or
		// denied for the given constraint. It can also be used to allow
		// or deny all values.
		list_policy?: [...close({
			allow?: [...close({
				all?: bool
				values?: [...string]
			})]
			deny?: [...close({
				all?: bool
				values?: [...string]
			})]
			inherit_from_parent?: bool
			suggested_value?:     string
		})]

		// The project ID.
		project!: string
		id?:      string

		// A restore policy is a constraint to restore the default policy.
		restore_policy?: [...close({
			default?: bool
		})]

		// The timestamp in RFC3339 UTC "Zulu" format, accurate to
		// nanoseconds, representing when the variable was last updated.
		// Example: "2016-10-09T12:33:37.578138407Z".
		update_time?: string

		// Version of the Policy. Default version is 0.
		version?: number
	})
}
