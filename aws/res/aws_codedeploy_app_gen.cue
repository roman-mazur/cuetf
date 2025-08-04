package res

#aws_codedeploy_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codedeploy_app")
	close({
		application_id?:   string
		arn?:              string
		compute_platform?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		github_account_name?: string
		id?:                  string
		linked_to_github?:    bool
		name!:                string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
