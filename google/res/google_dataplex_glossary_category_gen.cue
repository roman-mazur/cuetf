package res

#google_dataplex_glossary_category: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataplex_glossary_category")
	close({
		// The category id for creation.
		category_id?: string

		// The time at which the GlossaryCategory was created.
		create_time?: string

		// The user-mutable description of the GlossaryCategory.
		description?: string

		// User friendly display name of the GlossaryCategory. This is
		// user-mutable. This will be same as the categoryId, if not
		// specified.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The glossary id for creation.
		glossary_id?: string
		id?:          string

		// User-defined labels for the GlossaryCategory.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location where the glossary category should reside.
		location!: string

		// The resource name of the GlossaryCategory. Format:
		// projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
		name?:     string
		timeouts?: #timeouts

		// The immediate parent of the GlossaryCategory in the
		// resource-hierarchy. It can either be a Glossary or a Category.
		// Format:
		// projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}
		// OR
		// projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
		parent!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		project?: string

		// System generated unique id for the GlossaryCategory. This ID
		// will be different if the GlossaryCategory is deleted and
		// re-created with the same name.
		uid?: string

		// The time at which the GlossaryCategory was last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
