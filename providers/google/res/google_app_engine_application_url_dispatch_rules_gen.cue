package res

#google_app_engine_application_url_dispatch_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_app_engine_application_url_dispatch_rules")
	close({
		dispatch_rules!: matchN(1, [#dispatch_rules, [_, ...] & [...#dispatch_rules]])
		timeouts?: #timeouts
		id?:       string
		project?:  string
	})

	#dispatch_rules: close({
		// Domain name to match against. The wildcard "*" is supported if
		// specified before a period: "*.".
		// Defaults to matching all domains: "*".
		domain?: string

		// Pathname within the host. Must start with a "/". A single "*"
		// can be included at the end of the path.
		// The sum of the lengths of the domain and path may not exceed
		// 100 characters.
		path!: string

		// Pathname within the host. Must start with a "/". A single "*"
		// can be included at the end of the path.
		// The sum of the lengths of the domain and path may not exceed
		// 100 characters.
		service!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
