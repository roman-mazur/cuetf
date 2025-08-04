package res

#aws_secretsmanager_secret_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_secretsmanager_secret_version")
	close({
		arn?:                  string
		has_secret_string_wo?: bool
		id?:                   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		secret_binary?:            string
		secret_id!:                string
		secret_string?:            string
		secret_string_wo?:         string
		secret_string_wo_version?: number
		version_id?:               string
		version_stages?: [...string]
	})
}
