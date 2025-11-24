package res

import "list"

#google_iam_access_boundary_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iam_access_boundary_policy")
	close({
		// The display name of the rule.
		display_name?: string

		// The hash of the resource. Used internally during updates.
		etag?: string
		rules!: matchN(1, [#rules, [_, ...] & [...#rules]])

		// The name of the policy.
		name!:     string
		id?:       string
		timeouts?: #timeouts

		// The attachment point is identified by its URL-encoded full
		// resource name.
		parent!: string
	})

	#rules: close({
		access_boundary_rule?: matchN(1, [_#defs."/$defs/rules/$defs/access_boundary_rule", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/access_boundary_rule"]])

		// The description of the rule.
		description?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/rules/$defs/access_boundary_rule": close({
		availability_condition?: matchN(1, [_#defs."/$defs/rules/$defs/access_boundary_rule/$defs/availability_condition", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/access_boundary_rule/$defs/availability_condition"]])

		// A list of permissions that may be allowed for use on the
		// specified resource.
		available_permissions?: [...string]

		// The full resource name of a Google Cloud resource entity.
		available_resource?: string
	})

	_#defs: "/$defs/rules/$defs/access_boundary_rule/$defs/availability_condition": close({
		// Description of the expression. This is a longer text which
		// describes the expression,
		// e.g. when hovered over it in a UI.
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression!: string

		// String indicating the location of the expression for error
		// reporting,
		// e.g. a file name and a position in the file.
		location?: string

		// Title for the expression, i.e. a short string describing its
		// purpose.
		// This can be used e.g. in UIs which allow to enter the
		// expression.
		title?: string
	})
}
