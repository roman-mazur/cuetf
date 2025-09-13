package data

#google_vmwareengine_nsx_credentials: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vmwareengine_nsx_credentials")
	close({
		id?: string

		// The resource name of the private cloud which contains NSX.
		// Resource names are schemeless URIs that follow the conventions
		// in https://cloud.google.com/apis/design/resource_names.
		// For example:
		// projects/my-project/locations/us-west1-a/privateClouds/my-cloud
		parent!: string

		// Initial password.
		password?: string

		// Initial username.
		username?: string
	})
}
