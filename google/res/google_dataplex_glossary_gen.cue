package res

#google_dataplex_glossary: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataplex_glossary")
	close({
		// The number of categories in the glossary.
		category_count?: number

		// The time at which the glossary was created.
		create_time?: string

		// The user-mutable description of the glossary.
		description?: string

		// User friendly display name of the glossary. This is
		// user-mutable. This will be same as the glossaryId, if not
		// specified.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The glossary id for creation.
		glossary_id!: string
		id?:          string

		// User-defined labels for the Glossary.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location where the glossary should reside.
		location!: string

		// The resource name of the Glossary. Format:
		// projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}
		name?:     string
		timeouts?: #timeouts

		// The number of terms in the glossary.
		term_count?: number
		project?:    string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// System generated unique id for the Glossary. This ID will be
		// different if the Glossary is deleted and re-created with the
		// same name.
		uid?: string

		// The time at which the glossary was last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
