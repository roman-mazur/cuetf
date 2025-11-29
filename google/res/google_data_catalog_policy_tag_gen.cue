package res

#google_data_catalog_policy_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_data_catalog_policy_tag")
	close({
		// Resource names of child policy tags of this policy tag.
		child_policy_tags?: [...string]

		// Description of this policy tag. It must: contain only unicode
		// characters, tabs,
		// newlines, carriage returns and page breaks; and be at most 2000
		// bytes long when
		// encoded in UTF-8. If not set, defaults to an empty description.
		// If not set, defaults to an empty description.
		description?: string

		// User defined name of this policy tag. It must: be unique within
		// the parent
		// taxonomy; contain only unicode letters, numbers, underscores,
		// dashes and spaces;
		// not start or end with spaces; and be at most 200 bytes long
		// when encoded in UTF-8.
		display_name!: string
		id?:           string

		// Resource name of this policy tag, whose format is:
		// "projects/{project}/locations/{region}/taxonomies/{taxonomy}/policyTags/{policytag}"
		name?:     string
		timeouts?: #timeouts

		// Resource name of this policy tag's parent policy tag.
		// If empty, it means this policy tag is a top level policy tag.
		// If not set, defaults to an empty string.
		parent_policy_tag?: string

		// Taxonomy the policy tag is associated with
		taxonomy!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
