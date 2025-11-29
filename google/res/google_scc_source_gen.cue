package res

#google_scc_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_scc_source")
	close({
		// The description of the source (max of 1024 characters).
		description?: string

		// The source’s display name. A source’s display name must be
		// unique
		// amongst its siblings, for example, two sources with the same
		// parent
		// can't share the same display name. The display name must start
		// and end
		// with a letter or digit, may contain letters, digits, spaces,
		// hyphens,
		// and underscores, and can be no longer than 32 characters.
		display_name!: string

		// The resource name of this source, in the format
		// 'organizations/{{organization}}/sources/{{source}}'.
		name?:     string
		id?:       string
		timeouts?: #timeouts

		// The organization whose Cloud Security Command Center the Source
		// lives in.
		organization!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
