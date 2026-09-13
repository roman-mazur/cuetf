package data

google_observability_folder_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_observability_folder_settings")
	close({
		// The default storage location for new resources, e.g. buckets. Only valid for global location.
		default_storage_location?: string

		// The folder ID.
		folder!: string
		id?:     string

		// The default Cloud KMS key to use for new resources. Only valid for regional locations.
		kms_key_name?: string

		// The location of the settings.
		location!: string

		// The resource name of the settings.
		name?: string

		// The service account used by Cloud Observability for this folder.
		service_account_id?: string
	})
}
