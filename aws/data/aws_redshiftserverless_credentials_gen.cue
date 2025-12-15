package data

#aws_redshiftserverless_credentials: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_redshiftserverless_credentials")
	close({
		db_name?:     string
		db_password?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		db_user?:          string
		duration_seconds?: number
		expiration?:       string
		id?:               string
		workgroup_name!:   string
	})
}
