package res

import "list"

#google_healthcare_dataset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_healthcare_dataset")
	close({
		// The location for the Dataset.
		location!: string
		id?:       string

		// The resource name for the Dataset.
		name!: string

		// The fully qualified name of this dataset
		self_link?: string
		project?:   string

		// The default timezone used by this dataset. Must be a either a
		// valid IANA time zone name such as
		// "America/New_York" or empty, which defaults to UTC. This is
		// used for parsing times in resources
		// (e.g., HL7 messages) where no explicit timezone is specified.
		time_zone?: string
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		timeouts?: #timeouts
	})

	#encryption_spec: close({
		// KMS encryption key that is used to secure this dataset and its
		// sub-resources. The key used for
		// encryption and the dataset must be in the same location. If
		// empty, the default Google encryption
		// key will be used to secure this dataset. The format is
		// projects/{projectId}/locations/{locationId}/keyRings/{keyRingId}/cryptoKeys/{keyId}.
		kms_key_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
