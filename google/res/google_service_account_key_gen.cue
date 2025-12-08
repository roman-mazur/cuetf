package res

#google_service_account_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_service_account_key")
	close({
		id?: string

		// Arbitrary map of values that, when changed, will trigger
		// recreation of resource.
		keepers?: [string]: string

		// The algorithm used to generate the key, used only on create.
		// KEY_ALG_RSA_2048 is the default algorithm. Valid values are:
		// "KEY_ALG_RSA_1024", "KEY_ALG_RSA_2048".
		key_algorithm?: string

		// The name used for this key pair
		name?: string

		// The private key in JSON format, base64 encoded. This is what
		// you normally get as a file when creating service account keys
		// through the CLI or web console. This is only populated when
		// creating a new key.
		private_key?: string

		// The public key, base64 encoded
		public_key?:       string
		private_key_type?: string

		// A field that allows clients to upload their own public key. If
		// set, use this public key data to create a service account key
		// for given service account. Please note, the expected format
		// for this field is a base64 encoded X509_PEM.
		public_key_data?: string

		// The ID of the parent service account of the key. This can be a
		// string in the format {ACCOUNT} or
		// projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}, where
		// {ACCOUNT} is the email address or unique id of the service
		// account. If the {ACCOUNT} syntax is used, the project will be
		// inferred from the provider's configuration.
		service_account_id!: string
		public_key_type?:    string

		// The key can be used after this timestamp. A timestamp in
		// RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example:
		// "2014-10-02T15:01:23.045123456Z".
		valid_after?: string

		// The key can be used before this timestamp. A timestamp in
		// RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example:
		// "2014-10-02T15:01:23.045123456Z".
		valid_before?: string
	})
}
