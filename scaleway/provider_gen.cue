package scaleway

#provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/scaleway/provider")
	close({
		// The Scaleway access key.
		access_key?: string

		// The Scaleway API URL to use.
		api_url?: string

		// The Scaleway organization ID.
		organization_id?: string

		// The Scaleway profile to use.
		profile?: string

		// The Scaleway project ID.
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The Scaleway secret Key.
		secret_key?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
