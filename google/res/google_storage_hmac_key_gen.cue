package res

#google_storage_hmac_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_storage_hmac_key")
	close({
		// The access ID of the HMAC Key.
		access_id?: string

		// HMAC secret key material.
		secret?: string
		id?:     string

		// The email address of the key's associated service account.
		service_account_email!: string

		// The state of the key. Can be set to one of ACTIVE, INACTIVE.
		// Default value: "ACTIVE" Possible values: ["ACTIVE",
		// "INACTIVE"]
		state?: string

		// 'The creation time of the HMAC key in RFC 3339 format. '
		time_created?: string
		project?:      string

		// 'The last modification time of the HMAC key metadata in RFC
		// 3339 format.'
		updated?:  string
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
