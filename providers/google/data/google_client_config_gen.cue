package data

#google_client_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_client_config")
	close({
		// The OAuth2 access token used by the client to authenticate
		// against the Google Cloud API.
		access_token?: string

		// The default labels configured on the provider.
		default_labels?: [string]: string

		// The ID of this data source in Terraform state. It is created in
		// a projects/{{project}}/regions/{{region}}/zones/{{zone}}
		// format and is NOT used by the data source in requests to
		// Google APIs.
		id?: string

		// The ID of the project to apply any resources to.
		project?: string

		// The region to operate under.
		region?: string

		// The zone to operate under.
		zone?: string
	})
}
