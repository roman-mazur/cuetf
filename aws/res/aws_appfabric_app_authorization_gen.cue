package res

#aws_appfabric_app_authorization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appfabric_app_authorization")
	close({
		app!:            string
		app_bundle_arn!: string
		arn?:            string
		auth_type!:      string
		auth_url?:       string
		created_at?:     string
		id?:             string
		credential?: matchN(1, [#credential, [...#credential]])
		tenant?: matchN(1, [#tenant, [...#tenant]])
		persona?:  string
		timeouts?: #timeouts
		region?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		updated_at?: string
	})

	#credential: close({
		api_key_credential?: matchN(1, [_#defs."/$defs/credential/$defs/api_key_credential", [..._#defs."/$defs/credential/$defs/api_key_credential"]])
		oauth2_credential?: matchN(1, [_#defs."/$defs/credential/$defs/oauth2_credential", [..._#defs."/$defs/credential/$defs/oauth2_credential"]])
	})

	#tenant: close({
		tenant_display_name!: string
		tenant_identifier!:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/credential/$defs/api_key_credential": close({
		api_key!: string
	})

	_#defs: "/$defs/credential/$defs/oauth2_credential": close({
		client_id!:     string
		client_secret!: string
	})
}
