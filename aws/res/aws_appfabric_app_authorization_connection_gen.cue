package res

#aws_appfabric_app_authorization_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appfabric_app_authorization_connection")
	close({
		app?:                   string
		app_authorization_arn!: string
		auth_request?: matchN(1, [#auth_request, [...#auth_request]])
		timeouts?:       #timeouts
		app_bundle_arn!: string
		id?:             string
		region?:         string
		tenant?: [...close({
			tenant_display_name?: string
			tenant_identifier?:   string
		})]
	})

	#auth_request: close({
		code!:         string
		redirect_uri!: string
	})

	#timeouts: close({
		create?: string
	})
}
