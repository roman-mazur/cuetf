package res

#google_kms_autokey_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_kms_autokey_config")
	close({
		// The etag of the AutokeyConfig for optimistic concurrency
		// control.
		etag?: string

		// The folder for which to retrieve config.
		folder!:   string
		id?:       string
		timeouts?: #timeouts

		// The target key project for a given folder where KMS Autokey
		// will provision a
		// CryptoKey for any new KeyHandle the Developer creates. Should
		// have the form
		// 'projects/<project_id_or_number>'.
		key_project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
