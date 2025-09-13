package res

#google_kms_key_handle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_kms_key_handle")
	close({
		id?: string

		// A reference to a Cloud KMS CryptoKey that can be used for CMEK
		// in the requested
		// product/project/location, for example
		// 'projects/1/locations/us-east1/keyRings/foo/cryptoKeys/bar-ffffff'
		kms_key?: string

		// The location for the KeyHandle.
		// A full list of valid locations can be found by running 'gcloud
		// kms locations list'.
		location!: string

		// The resource name for the KeyHandle.
		name!:     string
		timeouts?: #timeouts
		project?:  string

		// Selector of the resource type where we want to protect
		// resources.
		// For example, 'storage.googleapis.com/Bucket'.
		resource_type_selector!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
