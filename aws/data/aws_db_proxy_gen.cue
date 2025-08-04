package data

#aws_db_proxy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_proxy")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		arn?:    string
		auth?: [...close({
			auth_scheme?:               string
			client_password_auth_type?: string
			description?:               string
			iam_auth?:                  string
			secret_arn?:                string
			username?:                  string
		})]
		debug_logging?:       bool
		endpoint?:            string
		engine_family?:       string
		id?:                  string
		idle_client_timeout?: number
		name!:                string
		require_tls?:         bool
		role_arn?:            string
		vpc_id?:              string
		vpc_security_group_ids?: [...string]
		vpc_subnet_ids?: [...string]
	})
}
