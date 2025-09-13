package data

#google_kms_crypto_key_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_kms_crypto_key_iam_policy")
	close({
		crypto_key_id!: string
		etag?:          string
		id?:            string
		policy_data?:   string
	})
}
