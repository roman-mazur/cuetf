package res

#scaleway_iam_api_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_iam_api_key")
	close({
		// The access key of the iam api key
		access_key?: string

		// ID of the application attached to the api key
		application_id?: string

		// The date and time of the creation of the iam api key
		created_at?: string

		// The IPv4 Address of the device which created the API key
		creation_ip?: string

		// The project_id you want to attach the resource to
		default_project_id?: string

		// The description of the iam api key
		description?: string

		// Whether or not the iam api key is editable
		editable?: bool

		// The date and time of the expiration of the iam api key. Cannot
		// be changed afterwards
		expires_at?: string
		id?:         string

		// The secret Key of the iam api key
		secret_key?: string

		// The date and time of the last update of the iam api key
		updated_at?: string

		// ID of the user attached to the api key
		user_id?: string
	})
}
