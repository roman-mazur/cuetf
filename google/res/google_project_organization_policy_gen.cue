package res

import "list"

#google_project_organization_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_project_organization_policy")
	close({
		// The name of the Constraint the Policy is configuring, for
		// example, serviceuser.services.
		constraint!: string
		boolean_policy?: matchN(1, [#boolean_policy, list.MaxItems(1) & [...#boolean_policy]])

		// The etag of the organization policy. etag is used for
		// optimistic concurrency control as a way to help prevent
		// simultaneous updates of a policy from overwriting each other.
		etag?: string
		id?:   string
		list_policy?: matchN(1, [#list_policy, list.MaxItems(1) & [...#list_policy]])

		// The project ID.
		project!: string
		restore_policy?: matchN(1, [#restore_policy, list.MaxItems(1) & [...#restore_policy]])
		timeouts?: #timeouts

		// The timestamp in RFC3339 UTC "Zulu" format, accurate to
		// nanoseconds, representing when the variable was last updated.
		// Example: "2016-10-09T12:33:37.578138407Z".
		update_time?: string

		// Version of the Policy. Default version is 0.
		version?: number
	})

	#boolean_policy: close({
		// If true, then the Policy is enforced. If false, then any
		// configuration is acceptable.
		enforced!: bool
	})

	#list_policy: close({
		allow?: matchN(1, [_#defs."/$defs/list_policy/$defs/allow", list.MaxItems(1) & [..._#defs."/$defs/list_policy/$defs/allow"]])
		deny?: matchN(1, [_#defs."/$defs/list_policy/$defs/deny", list.MaxItems(1) & [..._#defs."/$defs/list_policy/$defs/deny"]])

		// If set to true, the values from the effective Policy of the
		// parent resource are inherited, meaning the values set in this
		// Policy are added to the values inherited up the hierarchy.
		inherit_from_parent?: bool

		// The Google Cloud Console will try to default to a configuration
		// that matches the value specified in this field.
		suggested_value?: string
	})

	#restore_policy: close({
		// May only be set to true. If set, then the default Policy is
		// restored.
		default!: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/list_policy/$defs/allow": close({
		// The policy allows or denies all values.
		all?: bool

		// The policy can define specific values that are allowed or
		// denied.
		values?: [...string]
	})

	_#defs: "/$defs/list_policy/$defs/deny": close({
		// The policy allows or denies all values.
		all?: bool

		// The policy can define specific values that are allowed or
		// denied.
		values?: [...string]
	})
}
