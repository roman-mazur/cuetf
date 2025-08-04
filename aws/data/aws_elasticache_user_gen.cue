package data

#aws_elasticache_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elasticache_user")
	close({
		access_string?: string
		engine?:        string
		id?:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		no_password_required?: bool
		passwords?: [...string]
		user_id!:   string
		user_name?: string
		authentication_mode?: matchN(1, [#authentication_mode, [...#authentication_mode]])
	})

	#authentication_mode: close({
		password_count?: number
		type?:           string
	})
}
