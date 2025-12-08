package res

#google_apigee_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_api")
	close({
		// Path to the config zip bundle
		config_bundle!: string

		// A hash of local config bundle in string, user needs to use a
		// Terraform Hash function of their choice. A change in hash will
		// trigger an update.
		detect_md5hash?: string

		// The id of the most recently created revision for this API
		// proxy.
		latest_revision_id?: string

		// Base 64 MD5 hash of the uploaded config bundle.
		md5hash?: string

		// Metadata describing the API proxy.
		meta_data?: [...close({
			created_at?:       string
			last_modified_at?: string
			sub_type?:         string
		})]
		id?: string

		// Name of the API proxy. This field only accepts the following
		// characters: A-Za-z0-9._-.
		name!: string

		// The Apigee Organization name associated with the Apigee
		// instance.
		org_id!: string

		// A list of revisions of this API proxy.
		revision?: [...string]
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
