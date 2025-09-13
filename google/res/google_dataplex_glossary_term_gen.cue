package res

#google_dataplex_glossary_term: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataplex_glossary_term")
	close({
		// The time at which the GlossaryTerm was created.
		create_time?: string

		// The user-mutable description of the GlossaryTerm.
		description?: string

		// User friendly display name of the GlossaryTerm. This is
		// user-mutable. This will be same as the termId, if not
		// specified.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The glossary id for creation.
		glossary_id?: string
		id?:          string

		// User-defined labels for the GlossaryTerm.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location where the glossary term should reside.
		location!: string

		// The resource name of the GlossaryTerm. Format:
		// projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{termId}
		name?: string

		// The immediate parent of the GlossaryTerm in the
		// resource-hierarchy. It can either be a Glossary or a Term.
		// Format:
		// projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}
		// OR
		// projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/terms/{termId}
		parent!:   string
		timeouts?: #timeouts

		// The term id for creation.
		term_id?: string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// System generated unique id for the GlossaryTerm. This ID will
		// be different if the GlossaryTerm is deleted and re-created
		// with the same name.
		uid?: string

		// The time at which the GlossaryTerm was last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
