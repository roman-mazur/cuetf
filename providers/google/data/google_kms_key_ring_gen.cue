package data

#google_kms_key_ring: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_kms_key_ring")
	close({
		id?: string

		// The location for the KeyRing.
		// A full list of valid locations can be found by running 'gcloud
		// kms locations list'.
		location!: string

		// The resource name for the KeyRing.
		name!:    string
		project?: string
	})
}
