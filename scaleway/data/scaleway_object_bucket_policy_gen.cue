package data

#scaleway_object_bucket_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_object_bucket_policy")
	close({
		// The bucket's name or regional ID.
		bucket!: string
		id?:     string

		// The text of the policy.
		policy?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string
	})
}
