package res

#google_data_catalog_taxonomy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_data_catalog_taxonomy")
	close({
		// A list of policy types that are activated for this taxonomy. If
		// not set,
		// defaults to an empty list. Possible values:
		// ["POLICY_TYPE_UNSPECIFIED", "FINE_GRAINED_ACCESS_CONTROL"]
		activated_policy_types?: [...string]

		// Description of this taxonomy. It must: contain only unicode
		// characters,
		// tabs, newlines, carriage returns and page breaks; and be at
		// most 2000 bytes
		// long when encoded in UTF-8. If not set, defaults to an empty
		// description.
		description?: string

		// User defined name of this taxonomy.
		// The taxonomy display name must be unique within an
		// organization.
		// It must: contain only unicode letters, numbers, underscores,
		// dashes
		// and spaces; not start or end with spaces; and be at most 200
		// bytes
		// long when encoded in UTF-8.
		display_name!: string
		timeouts?:     #timeouts

		// Resource name of this taxonomy, whose format is:
		// "projects/{project}/locations/{region}/taxonomies/{taxonomy}".
		name?:    string
		id?:      string
		project?: string

		// Taxonomy location region.
		region?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
