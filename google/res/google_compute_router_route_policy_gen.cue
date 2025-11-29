package res

import "list"

#google_compute_router_route_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_router_route_policy")
	close({
		// The fingerprint used for optimistic locking of this resource.
		// Used
		// internally during updates.
		fingerprint?: string
		id?:          string

		// Name of the route policy. This policy's name, which must be a
		// resource ID segment and unique within all policies owned by
		// the Router
		name!:    string
		project?: string
		terms!: matchN(1, [#terms, [_, ...] & [...#terms]])

		// Region where the router and NAT reside.
		region?:   string
		timeouts?: #timeouts

		// The name of the Cloud Router in which this route policy will be
		// configured.
		router!: string

		// This is policy's type, which is one of IMPORT or EXPORT
		// Possible values: ["ROUTE_POLICY_TYPE_IMPORT",
		// "ROUTE_POLICY_TYPE_EXPORT"]
		type?: string
	})

	#terms: close({
		actions?: matchN(1, [_#defs."/$defs/terms/$defs/actions", [..._#defs."/$defs/terms/$defs/actions"]])
		match!: matchN(1, [_#defs."/$defs/terms/$defs/match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/terms/$defs/match"]])

		// The evaluation priority for this term, which must be between 0
		// (inclusive) and 231 (exclusive), and unique within the list.
		priority!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/terms/$defs/actions": close({
		// Description of the expression
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression!: string

		// String indicating the location of the expression for error
		// reporting, e.g. a file name and a position in the file
		location?: string

		// Title for the expression, i.e. a short string describing its
		// purpose.
		title?: string
	})

	_#defs: "/$defs/terms/$defs/match": close({
		// Description of the expression
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression!: string

		// String indicating the location of the expression for error
		// reporting, e.g. a file name and a position in the file
		location?: string

		// Title for the expression, i.e. a short string describing its
		// purpose.
		title?: string
	})
}
