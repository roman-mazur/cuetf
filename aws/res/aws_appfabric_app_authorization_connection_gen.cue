package res

#aws_appfabric_app_authorization_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appfabric_app_authorization_connection")
	close({
		app?:                   string
		app_authorization_arn!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		app_bundle_arn!: string
		id?:             string
		tenant?: [...close({
			tenant_display_name?: string
			tenant_identifier?:   string
		})]
		auth_request?: matchN(1, [#auth_request, [...#auth_request]])
		timeouts?: #timeouts
	})

	#auth_request: close({
		code!:         string
		redirect_uri!: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string
	})
}
