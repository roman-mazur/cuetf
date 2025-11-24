package res

#google_document_ai_processor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_document_ai_processor")
	close({
		// The display name. Must be unique.
		display_name!: string

		// The KMS key used for encryption/decryption in CMEK scenarios.
		// See https://cloud.google.com/security-key-management.
		kms_key_name?: string

		// The location of the resource.
		location!: string
		id?:       string

		// The resource name of the processor.
		name?:     string
		timeouts?: #timeouts
		project?:  string

		// The type of processor. For possible types see the [official
		// list](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations/fetchProcessorTypes#google.cloud.documentai.v1.DocumentProcessorService.FetchProcessorTypes)
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
