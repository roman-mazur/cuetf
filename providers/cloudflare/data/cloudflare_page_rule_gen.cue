package data

#cloudflare_page_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_page_rule")
	close({
		// The timestamp of when the Page Rule was created.
		created_on?: string

		// Identifier.
		id?: string

		// The timestamp of when the Page Rule was last modified.
		modified_on?: string

		// Identifier.
		pagerule_id!: string

		// The priority of the rule, used to define which Page Rule is
		// processed
		// over another. A higher number indicates a higher priority. For
		// example,
		// if you have a catch-all Page Rule (rule A: `/images/*`) but
		// want a more
		// specific Page Rule to take precedence (rule B:
		// `/images/special/*`),
		// specify a higher priority for rule B so it overrides rule A.
		priority?: number

		// The status of the Page Rule.
		// Available values: "active", "disabled".
		status?: string

		// Identifier.
		zone_id!: string
	})
}
