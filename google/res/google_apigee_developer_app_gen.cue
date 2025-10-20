package res

#google_apigee_developer_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_developer_app")
	close({
		// List of API products associated with the developer app.
		api_products?: [...string]

		// Developer app family.
		app_family?: string

		// ID of the developer app. This ID is not user specified but is
		// automatically generated on app creation. appId is a UUID.
		app_id?: string

		// Callback URL used by OAuth 2.0 authorization servers to
		// communicate
		// authorization codes back to developer apps.
		callback_url!: string

		// Time at which the developer was created in milliseconds since
		// epoch.
		created_at?: string

		// Output only. Set of credentials for the developer app
		// consisting of
		// the consumer key/secret pairs associated with the API products.
		credentials?: [...close({
			api_products?: [...close({
				apiproduct?: string
				status?:     string
			})]
			attributes?: [...close({
				name?:  string
				value?: string
			})]
			consumer_key?:    string
			consumer_secret?: string
			expires_at?:      string
			issued_at?:       string
			scopes?: [...string]
			status?: string
		})]

		// Email address of the developer.
		// This value is used to uniquely identify the developer in Apigee
		// hybrid.
		// Note that the email address has to be in lowercase only.
		developer_email!: string

		// ID of the developer.
		developer_id?: string

		// Expiration time, in milliseconds, for the consumer key that is
		// generated
		// for the developer app. If not set or left to the default value
		// of -1,
		// the API key never expires. The expiration time can't be updated
		// after it is set.
		key_expires_in?: string
		id?:             string
		attributes?: matchN(1, [#attributes, [...#attributes]])
		timeouts?: #timeouts

		// Time at which the developer was last modified in milliseconds
		// since epoch.
		last_modified_at?: string

		// Name of the developer app.
		name!: string

		// The Apigee Organization associated with the Apigee instance,
		// in the format 'organizations/{{org_name}}'.
		org_id!: string

		// Scopes to apply to the developer app.
		// The specified scopes must already exist for the API product
		// that
		// you associate with the developer app.
		scopes?: [...string]

		// Status of the credential. Valid values include approved or
		// revoked.
		status?: string
	})

	#attributes: close({
		// Key of the attribute
		name?: string

		// Value of the attribute
		value?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
