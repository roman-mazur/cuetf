package data

#aws_appconfig_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appconfig_environment")
	close({
		application_id!: string
		arn?:            string
		description?:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		environment_id!: string
		id?:             string
		monitor?: [...close({
			alarm_arn?:      string
			alarm_role_arn?: string
		})]
		name?:  string
		state?: string
		tags?: [string]: string
	})
}
