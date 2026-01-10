package data

#aws_ecr_authorization_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ecr_authorization_token")
	close({
		authorization_token?: string
		expires_at?:          string
		id?:                  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		password?:       string
		proxy_endpoint?: string
		registry_id?:    string
		user_name?:      string
	})
}
