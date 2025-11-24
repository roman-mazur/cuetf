package res

#google_storage_bucket_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_bucket_acl")
	close({
		// The name of the bucket it applies to.
		bucket!: string

		// Configure this ACL to be the default ACL.
		default_acl?: string

		// The canned GCS ACL to apply. Must be set if role_entity is not.
		predefined_acl?: string
		id?:             string

		// List of role/entity pairs in the form ROLE:entity. See GCS
		// Bucket ACL documentation for more details. Must be set if
		// predefined_acl is not.
		role_entity?: [...string]
	})
}
