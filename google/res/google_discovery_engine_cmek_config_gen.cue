package res

#google_discovery_engine_cmek_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_discovery_engine_cmek_config")
	close({
		// The unique id of the cmek config.
		cmek_config_id!: string

		// The default CmekConfig for the Customer.
		is_default?: bool
		id?:         string

		// KMS key resource name which will be used to encrypt resources
		// 'projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}'.
		kms_key!: string

		// KMS key version resource name which will be used to encrypt
		// resources
		// '<kms_key>/cryptoKeyVersions/{keyVersion}'.
		kms_key_version?: string

		// The timestamp of the last key rotation.
		last_rotation_timestamp_micros?: number

		// The geographic location where the CMEK config should reside.
		// The value can
		// only be one of "us" and "eu".
		location!: string

		// The unique full resource name of the cmek config. Values are of
		// the format
		// 'projects/{project}/locations/{location}/cmekConfigs/{cmek_config_id}'.
		// This field must be a UTF-8 encoded string with a length limit
		// of 1024
		// characters.
		name?: string

		// Whether the NotebookLM Corpus is ready to be used.
		notebooklm_state?: string
		single_region_keys?: matchN(1, [#single_region_keys, [...#single_region_keys]])
		project?:  string
		timeouts?: #timeouts

		// Set the following CmekConfig as the default to be used for
		// child resources
		// if one is not specified. The default value is true.
		set_default?: bool

		// The state of the CmekConfig.
		state?: string
	})

	#single_region_keys: close({
		// Single-regional kms key resource name which will be used to
		// encrypt
		// resources
		// 'projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}'.
		kms_key!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
