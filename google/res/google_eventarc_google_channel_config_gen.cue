package res

#google_eventarc_google_channel_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_eventarc_google_channel_config")
	close({
		// Optional. Resource name of a KMS crypto key (managed by the
		// user) used to encrypt/decrypt their event data. It must match
		// the pattern 'projects/*/locations/*/keyRings/*/cryptoKeys/*'.
		crypto_key_name?: string
		id?:              string

		// The location for the resource
		location!: string

		// Required. The resource name of the config. Must be in the
		// format of,
		// 'projects/{project}/locations/{location}/googleChannelConfig'.
		name!:     string
		timeouts?: #timeouts
		project?:  string

		// Output only. The last-modified time.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
