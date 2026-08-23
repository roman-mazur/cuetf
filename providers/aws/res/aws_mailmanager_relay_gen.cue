package res

aws_mailmanager_relay: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_mailmanager_relay")
	close({
		authentication?: matchN(1, [#authentication, [...#authentication]])
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		created_timestamp?:       string
		id?:                      string
		last_modified_timestamp?: string
		name!:                    string
		server_name!:             string
		server_port!:             number
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#authentication: close({
		no_authentication?: matchN(1, [_#defs."/$defs/authentication/$defs/no_authentication", [..._#defs."/$defs/authentication/$defs/no_authentication"]])
		secret_arn?: string
	})

	_#defs: "/$defs/authentication/$defs/no_authentication": close({})
}
