package res

#aws_appfabric_app_authorization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_appfabric_app_authorization")
	close({
		app!:            string
		app_bundle_arn!: string
		arn?:            string
		auth_type!:      string
		auth_url?:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		created_at?: string
		credential?: matchN(1, [#credential, [...#credential]])
		tenant?: matchN(1, [#tenant, [...#tenant]])
		id?:      string
		persona?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		updated_at?: string
		timeouts?:   #timeouts
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
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
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
