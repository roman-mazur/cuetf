package res

google_document_ai_processor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_document_ai_processor")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The display name. Must be unique.
		display_name!: string
		id?:           string

		// The KMS key used for encryption/decryption in CMEK scenarios. See
		// https://cloud.google.com/security-key-management.
		kms_key_name?: string

		// The location of the resource.
		location!: string

		// The resource name of the processor.
		name?: string

		// The type of processor. For possible types see the [official
		// list](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations/fetchProcessorTypes#google.cloud.documentai.v1.DocumentProcessorService.FetchProcessorTypes)
		type!:    string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
