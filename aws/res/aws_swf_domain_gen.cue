package res

#aws_swf_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_swf_domain")
	close({
		arn?:         string
		description?: string
		id?:          string
		name?:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		name_prefix?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		workflow_execution_retention_period_in_days!: string
	})
}
