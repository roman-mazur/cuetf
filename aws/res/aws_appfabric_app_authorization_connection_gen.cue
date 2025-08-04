package res

#aws_appfabric_app_authorization_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appfabric_app_authorization_connection")
	close({
		auth_request?: matchN(1, [#auth_request, [...#auth_request]])
		app?:                   string
		app_authorization_arn!: string
		app_bundle_arn!:        string
		id?:                    string
		region?:                string
		tenant?: [...close({
			tenant_display_name?: string
			tenant_identifier?:   string
		})]
		timeouts?: #timeouts
	})

	#auth_request: close({
		code!:         string
		redirect_uri!: string
	})

	#timeouts: close({
		create?: string
	})
}
