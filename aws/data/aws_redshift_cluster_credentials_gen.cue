package data

#aws_redshift_cluster_credentials: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_cluster_credentials")
	close({
		auto_create?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		cluster_identifier!: string
		db_groups?: [...string]
		db_name?:          string
		db_password?:      string
		db_user!:          string
		duration_seconds?: number
		expiration?:       string
		id?:               string
	})
}
