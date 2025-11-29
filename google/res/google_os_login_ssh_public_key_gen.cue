package res

#google_os_login_ssh_public_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_os_login_ssh_public_key")
	close({
		// An expiration time in microseconds since epoch.
		expiration_time_usec?: string

		// The SHA-256 fingerprint of the SSH public key.
		fingerprint?: string

		// Public key text in SSH format, defined by RFC4253 section 6.6.
		key!: string
		id?:  string

		// The project ID of the Google Cloud Platform project.
		project?:  string
		timeouts?: #timeouts

		// The user email.
		user!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
