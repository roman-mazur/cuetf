package res

#aws_appfabric_app_authorization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appfabric_app_authorization")
	app!:            string
	app_bundle_arn!: string
	arn?:            string
	auth_type!:      string
	auth_url?:       string
	created_at?:     string
	id?:             string
	persona?:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	updated_at?: string
	credential?: #credential | [...#credential]
	tenant?: #tenant | [...#tenant]
	timeouts?: #timeouts

	#credential: {
		api_key_credential?: #credential.#api_key_credential | [...#credential.#api_key_credential]
		oauth2_credential?: #credential.#oauth2_credential | [...#credential.#oauth2_credential]

		#api_key_credential: api_key!: string

		#oauth2_credential: {
			client_id!:     string
			client_secret!: string
		}
	}

	#tenant: {
		tenant_display_name!: string
		tenant_identifier!:   string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
