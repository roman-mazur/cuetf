package res

#google_apigee_sharedflow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_sharedflow")
	close({
		// Path to the config zip bundle
		config_bundle!: string

		// A hash of local config bundle in string, user needs to use a
		// Terraform Hash function of their choice. A change in hash will
		// trigger an update.
		detect_md5hash?: string

		// The id of the most recently created revision for this shared
		// flow.
		latest_revision_id?: string

		// Base 64 MD5 hash of the uploaded config bundle.
		md5hash?: string

		// Metadata describing the shared flow.
		meta_data?: [...close({
			created_at?:       string
			last_modified_at?: string
			sub_type?:         string
		})]
		id?: string

		// The ID of the shared flow.
		name!: string

		// The Apigee Organization name associated with the Apigee
		// instance.
		org_id!: string

		// A list of revisions of this shared flow.
		revision?: [...string]
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
