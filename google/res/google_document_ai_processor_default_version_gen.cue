package res

#google_document_ai_processor_default_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_document_ai_processor_default_version")
	close({
		timeouts?: #timeouts
		id?:       string

		// The processor to set the version on.
		processor!: string

		// The version to set. Using 'stable' or 'rc' will cause the API
		// to return the latest version in that release channel.
		// Apply 'lifecycle.ignore_changes' to the 'version' field to
		// suppress this diff.
		version!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
