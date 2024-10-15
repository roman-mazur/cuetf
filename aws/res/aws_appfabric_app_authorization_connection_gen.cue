package res

#aws_appfabric_app_authorization_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appfabric_app_authorization_connection")
	app?:                   string
	app_authorization_arn!: string
	app_bundle_arn!:        string
	id?:                    string
	tenant?: [...{
		tenant_display_name?: string
		tenant_identifier?:   string
	}]
	auth_request?: #auth_request | [...#auth_request]
	timeouts?: #timeouts

	#auth_request: {
		code!:         string
		redirect_uri!: string
	}

	#timeouts: create?: string
}
