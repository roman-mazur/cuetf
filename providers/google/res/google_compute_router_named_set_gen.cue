package res

google_compute_router_named_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_router_named_set")
	close({
		elements?: matchN(1, [#elements, [...#elements]])
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// An optional description of the Named Set.
		description?: string

		// The fingerprint used for optimistic locking of this resource. Used
		// internally during updates.
		fingerprint?: string
		id?:          string

		// The name of the Named Set, which must be a resource ID segment and unique
		// within all named sets owned by the Router.
		name!: string

		// Region where the router resides.
		region?:  string
		project?: string

		// The name of the Cloud Router in which this Named Set will be configured.
		router!: string

		// The type of the Named Set. Possible values: ["NAMED_SET_TYPE_PREFIX", "NAMED_SET_TYPE_COMMUNITY"]
		type!: string
	})

	#elements: close({
		// Description of the expression.
		description?: string

		// Textual representation of an expression in Common Expression Language syntax.
		expression!: string

		// String indicating the location of the expression for error reporting, e.g. a
		// file name and a position in the file.
		location?: string

		// Title for the expression, i.e. a short string describing its purpose.
		title?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
