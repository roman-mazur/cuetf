package res

#google_kms_key_ring_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_kms_key_ring_iam_policy")
	close({
		etag?:        string
		id?:          string
		key_ring_id!: string
		policy_data!: string
	})
}
